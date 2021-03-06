require "spec_helper"

describe Groseillier::AdministratorsController do
  login_admin

  describe "GET index" do
    it "assigns all administrators as @administrators" do
      administrator = subject.current_administrator

      get :index
      assigns(:administrators).to_a.should eq([administrator])
    end
  end

  describe "GET show" do
    it "assigns the requested administrator as @administrator" do
      administrator = Factory :administrator

      get :show, :id => administrator.id.to_s
      assigns(:administrator).should eq(administrator)
    end
  end

  describe "GET new" do
    it "assigns a new administrator as @administrator" do
      get :new
      assigns(:administrator).should be_a_new(Groseillier::Administrator)
    end
  end

  describe "GET edit" do
    it "assigns the requested administrator as @administrator" do
      administrator = Factory :administrator

      get :edit, :id => administrator.id.to_s
      assigns(:administrator).should eq(administrator)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new administrator" do
        expect {
          post :create, :administrator => Factory.attributes_for(:administrator)
        }.to change(Groseillier::Administrator, :count).by(1)
      end

      it "assigns a newly created administrator as @administrator" do
        post :create, :administrator => Factory.attributes_for(:administrator)
        assigns(:administrator).should be_a(Groseillier::Administrator)
        assigns(:administrator).should be_persisted
      end

      it "redirects to the created administrator" do
        post :create, :administrator => Factory.attributes_for(:administrator)
        response.should redirect_to(Groseillier::Administrator.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved administrator as @administrator" do
        Groseillier::Administrator.any_instance.stub(:save).and_return(false)

        post :create, :administrator => {}
        assigns(:administrator).should be_a_new(Groseillier::Administrator)
      end

      it "re-renders the 'new' template" do
        Groseillier::Administrator.any_instance.stub(:save).and_return(false)
        Groseillier::Administrator.any_instance.stub(:errors).and_return({"error" => "foo"})

        post :create, :administrator => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested administrator" do
        administrator = Factory :administrator

        Groseillier::Administrator.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => administrator.id.to_s, :administrator => {'these' => 'params'}
      end

      it "assigns the requested administrator as @administrator" do
        administrator = Factory :administrator

        put :update, :id => administrator.id.to_s, :administrator => Factory.attributes_for(:administrator)
        assigns(:administrator).should eq(administrator)
      end

      it "redirects to the administrator" do
        administrator = Factory :administrator

        put :update, :id => administrator.id.to_s, :administrator => Factory.attributes_for(:administrator)
        response.should redirect_to(administrator)
      end
    end

    describe "with invalid params" do
      it "assigns the administrator as @administrator" do
        administrator = Factory :administrator

        Groseillier::Administrator.any_instance.stub(:save).and_return(false)
        put :update, :id => administrator.id.to_s, :administrator => {}
        assigns(:administrator).should eq(administrator)
      end

      it "re-renders the 'edit' template" do
        administrator = Factory :administrator

        Groseillier::Administrator.any_instance.stub(:save).and_return(false)
        Groseillier::Administrator.any_instance.stub(:errors).and_return({'error' => 'foo'})

        put :update, :id => administrator.id.to_s, :administrator => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested administrator" do
      administrator = Factory :administrator

      expect {
        delete :destroy, :id => administrator.id.to_s
      }.to change(Groseillier::Administrator, :count).by(-1)
    end

    it "redirects to the administrators list" do
      administrator = Factory :administrator

      delete :destroy, :id => administrator.id.to_s
      response.should redirect_to(subject.administrators_url)
    end
  end
end
