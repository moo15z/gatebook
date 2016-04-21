class NotesController < ApplicationController
	before_action :set_note, only: [:show, :edit, :update, :destroy]

  def new
  end

  def create
  	@note = Note.new(note_params)
  	@note.save
  end

  def index
  	@notes = Note.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

 		def set_note
 			@note = Note.find(params[:id])
 		end


  	def note_params
   		params.require(:note).permit(:title, :content)
  	end

end
