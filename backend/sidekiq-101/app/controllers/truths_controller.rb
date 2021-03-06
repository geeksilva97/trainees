class TruthsController < ApplicationController
  def create
    truth = Truth.new(truth_params)
    if not truth.save
      render json: {:message => 'Something bad happened'}, status: 500
    end

    render json: truth 
  end

  def import
    saved_truths = []
    truths_import_params[:truths].map do |t|
      new_truth = Truth.new(question: t[:question], answer: t[:answer])
      new_truth.save
      saved_truths.push new_truth
    end

    render json: saved_truths
    # render json: truths_import_params
  end

  def import_async
    total_jobs = params[:truths].map { |t| ImportTruthJob.perform_async(t[:question], t[:answer]) }.length
    render plain: "#{total_jobs} jobs have been scheduled" 
  end

  def index
    render json: Truth.all
  end

  private

  def truths_import_params
    params.permit(truths: [:question, :answer])
  end

  def truth_params
    params.require(:truth).permit(:question, :answer)
  end
end
