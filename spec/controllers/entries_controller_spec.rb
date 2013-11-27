require 'spec_helper'

describe EntriesController, type: :controller do
  before(:each) do
    FactoryGirl.create_list(:entry, 5)
  end

  let(:latest) { Entry.latest }

  describe "GET index" do
    it "assigns latest entries" do
      get :index
      expect(assigns(:entries)).to eq(latest)
    end
  end
end
