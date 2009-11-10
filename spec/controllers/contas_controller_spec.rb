require 'spec_helper'

describe ContasController do

  def mock_conta(stubs={})
    @mock_conta ||= mock_model(Conta, stubs)
  end

  describe "GET index" do
    it "assigns all contas as @contas" do
      Conta.stub!(:find).with(:all).and_return([mock_conta])
      get :index
      assigns[:contas].should == [mock_conta]
    end
  end

  describe "GET show" do
    it "assigns the requested conta as @conta" do
      Conta.stub!(:find).with("37").and_return(mock_conta)
      get :show, :id => "37"
      assigns[:conta].should equal(mock_conta)
    end
  end

  describe "GET new" do
    it "assigns a new conta as @conta" do
      Conta.stub!(:new).and_return(mock_conta)
      get :new
      assigns[:conta].should equal(mock_conta)
    end
  end

  describe "GET edit" do
    it "assigns the requested conta as @conta" do
      Conta.stub!(:find).with("37").and_return(mock_conta)
      get :edit, :id => "37"
      assigns[:conta].should equal(mock_conta)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created conta as @conta" do
        Conta.stub!(:new).with({'these' => 'params'}).and_return(mock_conta(:save => true))
        post :create, :conta => {:these => 'params'}
        assigns[:conta].should equal(mock_conta)
      end

      it "redirects to the created conta" do
        Conta.stub!(:new).and_return(mock_conta(:save => true))
        post :create, :conta => {}
        response.should redirect_to(conta_url(mock_conta))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved conta as @conta" do
        Conta.stub!(:new).with({'these' => 'params'}).and_return(mock_conta(:save => false))
        post :create, :conta => {:these => 'params'}
        assigns[:conta].should equal(mock_conta)
      end

      it "re-renders the 'new' template" do
        Conta.stub!(:new).and_return(mock_conta(:save => false))
        post :create, :conta => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested conta" do
        Conta.should_receive(:find).with("37").and_return(mock_conta)
        mock_conta.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :conta => {:these => 'params'}
      end

      it "assigns the requested conta as @conta" do
        Conta.stub!(:find).and_return(mock_conta(:update_attributes => true))
        put :update, :id => "1"
        assigns[:conta].should equal(mock_conta)
      end

      it "redirects to the conta" do
        Conta.stub!(:find).and_return(mock_conta(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(conta_url(mock_conta))
      end
    end

    describe "with invalid params" do
      it "updates the requested conta" do
        Conta.should_receive(:find).with("37").and_return(mock_conta)
        mock_conta.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :conta => {:these => 'params'}
      end

      it "assigns the conta as @conta" do
        Conta.stub!(:find).and_return(mock_conta(:update_attributes => false))
        put :update, :id => "1"
        assigns[:conta].should equal(mock_conta)
      end

      it "re-renders the 'edit' template" do
        Conta.stub!(:find).and_return(mock_conta(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested conta" do
      Conta.should_receive(:find).with("37").and_return(mock_conta)
      mock_conta.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the contas list" do
      Conta.stub!(:find).and_return(mock_conta(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(contas_url)
    end
  end

end
