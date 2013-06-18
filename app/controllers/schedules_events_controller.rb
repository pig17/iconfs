class SchedulesEventsController < ApplicationController
  # GET /schedules_events
  # GET /schedules_events.json
  def index
    @schedules_events = SchedulesEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @schedules_events }
    end
  end

  # GET /schedules_events/1
  # GET /schedules_events/1.json
  def show
    @schedules_event = SchedulesEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @schedules_event }
    end
  end

  # GET /schedules_events/new
  # GET /schedules_events/new.json
  def new
    @schedules_event = SchedulesEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @schedules_event }
    end
  end

  # GET /schedules_events/1/edit
  def edit
    @schedules_event = SchedulesEvent.find(params[:id])
  end

  # POST /schedules_events
  # POST /schedules_events.json
  def create
    @schedules_event = SchedulesEvent.new(params[:schedules_event])

    respond_to do |format|
      if @schedules_event.save
        format.html { redirect_to @schedules_event, notice: 'Schedules event was successfully created.' }
        format.json { render json: @schedules_event, status: :created, location: @schedules_event }
      else
        format.html { render action: "new" }
        format.json { render json: @schedules_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schedules_events/1
  # PUT /schedules_events/1.json
  def update
    @schedules_event = SchedulesEvent.find(params[:id])

    respond_to do |format|
      if @schedules_event.update_attributes(params[:schedules_event])
        format.html { redirect_to @schedules_event, notice: 'Schedules event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @schedules_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules_events/1
  # DELETE /schedules_events/1.json
  def destroy
    @schedules_event = SchedulesEvent.find(params[:id])
    @schedules_event.destroy

    respond_to do |format|
      format.html { redirect_to schedules_events_url }
      format.json { head :no_content }
    end
  end
end
