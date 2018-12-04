# Author: Ally Chitwood - all
# Gives functionality to the notes.

class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /note
  def index
    @notes = Note.all
  end

  # GET /notes/1
  def show
    @note = Note.find(params[:id])
  end

  # GET /notes/new
  def new
    @note = Note.new
    @notebook = Notebook.find(params[:notebook_id])
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
  end

  # POST /notes
  # Debugged by: Daniel Greer
  def create
    @notebook = Notebook.find(params[:notebook_id])
    @note = Note.new(note_params)
    @note.notebook_id = @notebook.id

    respond_to do |format|
      if @note.save
        format.html { redirect_to @notebook, notice: 'Note was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /notes/1
  # Debugged by: Daniel Greer
  def update
    @notebook = Notebook.find(@note.notebook_id)
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @notebook, notice: 'Note was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /notes/1
  def destroy
    @notebook = Notebook.find(@note.notebook_id)
    @note.destroy
    respond_to do |format|
      format.html { redirect_to @notebook, notice: 'Note was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_note
    @note = Note.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def note_params
    params.require(:note).permit(:title, :content, :notebook_id)
  end
end
