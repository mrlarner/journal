require 'spec_helper'

describe Entry do
  before do
    FactoryGirl.create_list(:entry, 15)
  end
  
  describe '#all' do
    subject { Entry.all }
    it { subject.first.should be_newest_of(subject)}
  end

  describe "#latest" do
    subject { Entry.latest }
    it { subject.first.should be_newest_of(subject) }
    it { should have(5).item }
    
    context "specific number" do
      let(:number) { Random.rand(1..Entry.count) }
      subject { Entry.latest(number) }
      it { should have(number).item }
    end
  end
end
