class ImportTruthJob
  include Sidekiq::Job

  def perform(question, answer)
    Truth.new(question: question, answer: answer).save
  end
end
