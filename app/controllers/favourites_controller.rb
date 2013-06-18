class FavouritesController < ApplicationController

  # GET /favourites
  # GET /favourites.json
  def index
    @user = User.find(params[:user_id])
    @favourites = @user.favourites

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @favourites }
    end
  end

  # GET /favourites/1
  # GET /favourites/1.json
  def show
    @user = User.find(params[:user_id])
    @favourite = @user.favourites.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @favourite }
    end
  end

  # GET /favourites/new
  # GET /favourites/new.json
  def new
    @user = User.find(params[:user_id])
    @favourite = @user.favourites.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @favourite }
    end
  end

  # GET /favourites/1/edit
  def edit
    @user = User.find(params[:user_id])
    @favourite = @user.favourites.find(params[:id])
  end

  # POST /favourites
  # POST /favourites.json
  def create
    @user = User.find(params[:user_id])
    @favourite = @user.favourites.new(params[:favourite])

    respond_to do |format|
      if @favourite.save
        format.html { redirect_to [@user,@favourite], notice: 'Favourite was successfully created.' }
        format.json { render json: @favourite, status: :created, location: [@user,@favourite] }
      else
        format.html { render action: "new" }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /favourites/1
  # PUT /favourites/1.json
  def update
    @user = User.find(params[:user_id])
    @favourite = @user.favourites.find(params[:id])

    respond_to do |format|
      if @favourite.update_attributes(params[:favourite])
        format.html { redirect_to [@user,@favourite], notice: 'Favourite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourites/1
  # DELETE /favourites/1.json
  def destroy
    @user = User.find(params[:user_id])
    @favourite = @user.favourites.find(params[:id])
    @favourite.destroy

    respond_to do |format|
      format.html { redirect_to user_favourites_path(@user) }
      format.json { head :no_content }
    end
  end

end
