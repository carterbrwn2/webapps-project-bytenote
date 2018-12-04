# Author: Carter Brown - all
# Used to give functionality to the notebooks.

class NotebooksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_notebook, only: [:show, :edit, :update, :destroy]

  # GET /notebooks
  def index
    @notebooks = current_user.notebooks
  end

  # GET /notebooks/1
  def show
    @notebook = Notebook.find(params[:id])
  end

  # GET /notebooks/new
  def new
    @notebook = Notebook.new
  end

  # GET /notebooks/1/edit
  def edit
    @notebook = Notebook.find(params[:id])
  end

  # POST /notebooks
  # Debugged by: Daniel Greer
  def create
    @notebook = Notebook.new(notebook_params)
    @notebook.user_id = current_user.id

    respond_to do |format|
      if @notebook.save
        format.html { redirect_to @notebook, notice: 'Notebook was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /notebooks/1
  # Debugged by: Daniel Greer
  def update
    respond_to do |format|
      if @notebook.update_attributes(notebook_params)
        format.html { redirect_to @notebook, notice: 'Notebook was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /notebooks/1
  def destroy
    @notebook.notes.destroy_all
    @notebook.destroy
    respond_to do |format|
      format.html { redirect_to notebooks_url, notice: 'Notebook was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notebook
      @notebook = Notebook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notebook_params
      params.require(:notebook).permit(:name)
    end
end
