require 'spec_helper'


describe Entry do
  before do
    create_list(:entry, 15)
  end

  let(:entries) { Entry.all }
  let(:latest) { Entry.latest }
  let(:latest_13) { Entry.latest(13) }

  context '#all' do
    it "orders in reverse chronology" do
      entries.first.should be_newest_of(entries)
    end
  end

  context "#latest" do
    it "orders in reverse chronology" do
      latest.first.should be_newest_of(latest)
    end

    it "returns 5 by default" do
      latest.count.should == 5
    end

    it "returns the requested amount" do
      latest_13.count.should == 13
    end
  end
end
