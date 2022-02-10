require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  def valid_attributes
    { name:"Category-1" }
  end

  describe "GET index" do
    it "index response ok" do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET show" do
    it "assigns the requested category as @category" do
      category = Category.create! valid_attributes
      get :show, params: {id: category.to_param}
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST create" do
    context "with valid params" do
      it "creates a new category" do
        expect {
          post :create, params: {category: valid_attributes}
        }.to change(Category, :count).by(1)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      it "redirects to the category" do
        category = Category.create! valid_attributes
        put :update, params: {id: category.to_param, category: valid_attributes}
        expect(response).to have_http_status(:ok)
      end
    end
   
  end

  describe "DELETE #destroy" do
    it "destroys the requested category" do
      category = Category.create! valid_attributes
      expect {
        delete :destroy, params: {id: category.to_param}
      }.to change(Category, :count).by(-1)
    end
  end

end