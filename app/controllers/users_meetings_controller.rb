class UsersMeetingsController < ApplicationController
  # GET /users_meetings
  # GET /users_meetings.json
  def index
    @user = User.find(params[:user_id])
    @users_meetings = @user.users_meetings

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_meetings }
    end
  end

  # GET /users_meetings/1
  # GET /users_meetings/1.json
  def show
    @users_meeting = UsersMeeting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_meeting }
    end
  end

  # GET /users_meetings/new
  # GET /users_meetings/new.json
  def new
    @users_meeting = UsersMeeting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_meeting }
    end
  end

  # GET /users_meetings/1/edit
  def edit
    @users_meeting = UsersMeeting.find(params[:id])
  end

  # POST /users_meetings
  # POST /users_meetings.json
  def create
    @users_meeting = UsersMeeting.new(params[:users_meeting])

    respond_to do |format|
      if @users_meeting.save
        format.html { redirect_to @users_meeting, notice: 'Users meeting was successfully created.' }
        format.json { render json: @users_meeting, status: :created, location: @users_meeting }
      else
        format.html { render action: "new" }
        format.json { render json: @users_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users_meetings/1
  # PUT /users_meetings/1.json
  def update
    @users_meeting = UsersMeeting.find(params[:id])

    respond_to do |format|
      if @users_meeting.update_attributes(params[:users_meeting])
        format.html { redirect_to @users_meeting, notice: 'Users meeting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_meetings/1
  # DELETE /users_meetings/1.json
  def destroy
    @users_meeting = UsersMeeting.find(params[:id])
    @users_meeting.destroy

    respond_to do |format|
      format.html { redirect_to users_meetings_url }
      format.json { head :no_content }
    end
  end
end
