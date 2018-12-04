require 'rails_helper'

#Author: Will Greenway - all

RSpec.describe ThemesController, type: :controller do
  it "should get index" do
    get :index
    expect(response).to have_http_status(302)
  end
end
