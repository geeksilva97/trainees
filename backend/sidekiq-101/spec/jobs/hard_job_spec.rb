require "rails_helper"

RSpec.describe HardJob, :type => :job do
  describe '#perform' do
    it 'enqueues correctly' do
      described_class.perform_async('edy', 100)
      expect(HardJob).to have_enqueued_sidekiq_job('edy', 100)
    end
  end
  # describe "#perform_later" do
  #   it "uploads a backup" do
  #     ActiveJob::Base.queue_adapter = :test
  #     expect {
  #       UploadBackupsJob.perform_later('backup')
  #     }.to have_enqueued_job
  #   end
  # end
end
