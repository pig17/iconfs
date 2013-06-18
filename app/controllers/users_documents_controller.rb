class UsersDocumentsController < ApplicationController
  # GET /users_documents
  # GET /users_documents.json
  def index
    @users_documents = UsersDocument.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_documents }
    end
  end

  # GET /users_documents/1
  # GET /users_documents/1.json
  def show
    @users_document = UsersDocument.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_document }
    end
  end

  # GET /users_documents/new
  # GET /users_documents/new.json
  def new
    @users_document = UsersDocument.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_document }
    end
  end

  # GET /users_documents/1/edit
  def edit
    @users_document = UsersDocument.find(params[:id])
  end

  # POST /users_documents
  # POST /users_documents.json
  def create
    @users_document = UsersDocument.new(params[:users_document])

    respond_to do |format|
      if @users_document.save
        format.html { redirect_to @users_document, notice: 'Users document was successfully created.' }
        format.json { render json: @users_document, status: :created, location: @users_document }
      else
        format.html { render action: "new" }
        format.json { render json: @users_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users_documents/1
  # PUT /users_documents/1.json
  def update
    @users_document = UsersDocument.find(params[:id])

    respond_to do |format|
      if @users_document.update_attributes(params[:users_document])
        format.html { redirect_to @users_document, notice: 'Users document was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_documents/1
  # DELETE /users_documents/1.json
  def destroy
    @users_document = UsersDocument.find(params[:id])
    @users_document.destroy

    respond_to do |format|
      format.html { redirect_to users_documents_url }
      format.json { head :no_content }
    end
  end
end
