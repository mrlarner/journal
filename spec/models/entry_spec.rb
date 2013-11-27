require 'spec_helper'


describe Entry do
  before do
    FactoryGirl.create_list(:entry, 15)
  end

  let(:entries) { Entry.all }
  let(:latest) { Entry.latest }
  let(:latest_13) { Entry.latest(13) }

  describe '#all' do
    it { expect(entries.first).to be_newest_of(entries)}
  end

  describe "#latest" do
    it { expect(latest.first).to be_newest_of(latest) }
    it { expect(latest).to have(5).item }
    it { expect(latest_13).to have(13).item }
  end
end
