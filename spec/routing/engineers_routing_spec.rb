require "rails_helper"

RSpec.describe EngineersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/engineers").to route_to("engineers#index")
    end

    it "routes to #new" do
      expect(:get => "/engineers/new").to route_to("engineers#new")
    end

    it "routes to #show" do
      expect(:get => "/engineers/1").to route_to("engineers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/engineers/1/edit").to route_to("engineers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/engineers").to route_to("engineers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/engineers/1").to route_to("engineers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/engineers/1").to route_to("engineers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/engineers/1").to route_to("engineers#destroy", :id => "1")
    end

  end
end
