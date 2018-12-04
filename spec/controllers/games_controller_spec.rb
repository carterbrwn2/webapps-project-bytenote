require 'rails_helper'

# Author: Daniel Greer

RSpec.describe GamesController, type: :controller do
  it "should get index" do
    get :index
    expect(response).to have_http_status(:success)
  end
end
