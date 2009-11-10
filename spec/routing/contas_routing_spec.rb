require 'spec_helper'

describe ContasController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/contas" }.should route_to(:controller => "contas", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/contas/new" }.should route_to(:controller => "contas", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/contas/1" }.should route_to(:controller => "contas", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/contas/1/edit" }.should route_to(:controller => "contas", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/contas" }.should route_to(:controller => "contas", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/contas/1" }.should route_to(:controller => "contas", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/contas/1" }.should route_to(:controller => "contas", :action => "destroy", :id => "1") 
    end
  end
end
