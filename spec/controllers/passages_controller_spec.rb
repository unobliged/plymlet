require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PassagesController do

  # This should return the minimal set of attributes required to create a valid
  # Passage. As you add validations to Passage, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PassagesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all passages as @passages" do
      passage = Passage.create! valid_attributes
      get :index, {}, valid_session
      assigns(:passages).should eq([passage])
    end
  end

  describe "GET show" do
    it "assigns the requested passage as @passage" do
      passage = Passage.create! valid_attributes
      get :show, {:id => passage.to_param}, valid_session
      assigns(:passage).should eq(passage)
    end
  end

  describe "GET new" do
    it "assigns a new passage as @passage" do
      get :new, {}, valid_session
      assigns(:passage).should be_a_new(Passage)
    end
  end

  describe "GET edit" do
    it "assigns the requested passage as @passage" do
      passage = Passage.create! valid_attributes
      get :edit, {:id => passage.to_param}, valid_session
      assigns(:passage).should eq(passage)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Passage" do
        expect {
          post :create, {:passage => valid_attributes}, valid_session
        }.to change(Passage, :count).by(1)
      end

      it "assigns a newly created passage as @passage" do
        post :create, {:passage => valid_attributes}, valid_session
        assigns(:passage).should be_a(Passage)
        assigns(:passage).should be_persisted
      end

      it "redirects to the created passage" do
        post :create, {:passage => valid_attributes}, valid_session
        response.should redirect_to(Passage.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved passage as @passage" do
        # Trigger the behavior that occurs when invalid params are submitted
        Passage.any_instance.stub(:save).and_return(false)
        post :create, {:passage => {}}, valid_session
        assigns(:passage).should be_a_new(Passage)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Passage.any_instance.stub(:save).and_return(false)
        post :create, {:passage => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested passage" do
        passage = Passage.create! valid_attributes
        # Assuming there are no other passages in the database, this
        # specifies that the Passage created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Passage.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => passage.to_param, :passage => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested passage as @passage" do
        passage = Passage.create! valid_attributes
        put :update, {:id => passage.to_param, :passage => valid_attributes}, valid_session
        assigns(:passage).should eq(passage)
      end

      it "redirects to the passage" do
        passage = Passage.create! valid_attributes
        put :update, {:id => passage.to_param, :passage => valid_attributes}, valid_session
        response.should redirect_to(passage)
      end
    end

    describe "with invalid params" do
      it "assigns the passage as @passage" do
        passage = Passage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Passage.any_instance.stub(:save).and_return(false)
        put :update, {:id => passage.to_param, :passage => {}}, valid_session
        assigns(:passage).should eq(passage)
      end

      it "re-renders the 'edit' template" do
        passage = Passage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Passage.any_instance.stub(:save).and_return(false)
        put :update, {:id => passage.to_param, :passage => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested passage" do
      passage = Passage.create! valid_attributes
      expect {
        delete :destroy, {:id => passage.to_param}, valid_session
      }.to change(Passage, :count).by(-1)
    end

    it "redirects to the passages list" do
      passage = Passage.create! valid_attributes
      delete :destroy, {:id => passage.to_param}, valid_session
      response.should redirect_to(passages_url)
    end
  end

end
