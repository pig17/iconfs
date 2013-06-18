class NotesController < ApplicationController

  # GET /user/1/notes
  # GET /user/1/notes.json
  def index
    @user = User.find(params[:user_id])
    @notes = @user.notes

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notes }
    end
  end

  # GET /user/1/notes/1
  # GET /user/1/notes/1.json
  def show
    @user = User.find(params[:user_id])
    @note = @user.notes.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @note }
    end
  end

  # GET /user/1/notes/new
  # GET /user/1/notes/new.json
  def new
    @user = User.find(params[:user_id])
    @note = @user.notes.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @note }
    end
  end

  # GET /user/1/notes/1/edit
  def edit
    @user = User.find(params[:user_id])
    @note = @user.notes.find(params[:id])
  end

  # POST /user/1/notes
  # POST /user/1/notes.json
  def create
    @user = User.find(params[:user_id])
    @note = @user.notes.create(params[:note])

    respond_to do |format|
      if @note.save
        format.html { redirect_to [@user,@note], notice: 'Note was successfully created.' }
        format.json { render json: @note, status: :created, location: [@user,@note] }
      else
        format.html { render action: "new" }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user/1/notes/1
  # PUT /user/1/notes/1.json
  def update
    @user = User.find(params[:user_id])
    @note = @user.notes.find(params[:id])
    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.html { redirect_to [@user,@note], notice: 'Note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/1/notes/1
  # DELETE /user/1/notes/1.json
  def destroy
    @user = User.find(params[:user_id])
    @note = @user.notes.find(params[:id])
    @note.destroy
    respond_to do |format|
      format.html { redirect_to user_notes_path(@user) }
      format.json { head :no_content }
    end
  end

end
