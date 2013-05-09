class PisController < ApplicationController
  # GET /pis
  # GET /pis.json
  def index
    @pis = Pi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pis }
    end
  end

  # GET /pis/1
  # GET /pis/1.json
  def show
    @pi = Pi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pi }
    end
  end

  # GET /pis/new
  # GET /pis/new.json
  def new
    @pi = Pi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pi }
    end
  end

  # GET /pis/1/edit
  def edit
    @pi = Pi.find(params[:id])
  end

  # POST /pis
  # POST /pis.json
  def create
    @pi = Pi.new(params[:pi])

    respond_to do |format|
      if @pi.save
        format.html { redirect_to @pi, notice: 'Pi was successfully created.' }
        format.json { render json: @pi, status: :created, location: @pi }
      else
        format.html { render action: "new" }
        format.json { render json: @pi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pis/1
  # PUT /pis/1.json
  def update
    @pi = Pi.find(params[:id])

    respond_to do |format|
      if @pi.update_attributes(params[:pi])
        format.html { redirect_to @pi, notice: 'Pi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pis/1
  # DELETE /pis/1.json
  def destroy
    @pi = Pi.find(params[:id])
    @pi.destroy

    respond_to do |format|
      format.html { redirect_to pis_url }
      format.json { head :no_content }
    end
  end
end
