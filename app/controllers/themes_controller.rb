# Author: Will Greenway - all
# Provides functionality to themes.

class ThemesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_stylesheet


  def index
  end

  def show
    @stylesheet = User.find(params[:id])

    respond_to(:html, :css) if stale?(@stylesheet)
  end

  def set_stylesheet
    @stylesheet = params[:id]
  end
end
