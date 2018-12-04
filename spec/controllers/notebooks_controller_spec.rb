require 'rails_helper'

# Author: Daniel Greer - all

RSpec.describe NotebooksController, type: :controller do

  before(:each) { @user = User.new(email: 'user@domain.com', password: 'password') }
  notebook = Notebook.new(name: 'Notebook Name', user: @user)

  it "should get index" do
    get :index
    expect(response).to have_http_status(302)
  end
  
  it "should post create" do
    post :create
    expect(response).to have_http_status(302)
  end

  it "should get new" do
    get :new
    expect(response).to have_http_status(302)
  end

  it "should get edit" do
    get :edit, :params => { :id => 1 }
    expect(response).to have_http_status(302)
  end

  it "should get show" do
    get :show, :params => { :id => 1 }
    expect(response).to have_http_status(302)
  end

  it "should patch update" do
    patch :update, :params => { :id => 1 }
    expect(response).to have_http_status(302)
  end

  it "should put update" do
    put :update, :params => { :id => 1 }
    expect(response).to have_http_status(302)
  end

  it "should delete destroy" do
    delete :destroy, :params => { :id => 1 }
    expect(response).to have_http_status(302)
  end

end
