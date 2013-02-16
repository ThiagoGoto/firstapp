class BiketoursController < ApplicationController
  # GET /biketours
  # GET /biketours.json
  def index
    @biketours = Biketour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @biketours }
    end
  end

  # GET /biketours/1
  # GET /biketours/1.json
  def show
    @biketour = Biketour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @biketour }
    end
  end

  # GET /biketours/new
  # GET /biketours/new.json
  def new
    @biketour = Biketour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @biketour }
    end
  end

  # GET /biketours/1/edit
  def edit
    @biketour = Biketour.find(params[:id])
  end

  # POST /biketours
  # POST /biketours.json
  def create
    @biketour = Biketour.new(params[:biketour])

    respond_to do |format|
      if @biketour.save
        format.html { redirect_to @biketour, notice: 'Biketour was successfully created.' }
        format.json { render json: @biketour, status: :created, location: @biketour }
      else
        format.html { render action: "new" }
        format.json { render json: @biketour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /biketours/1
  # PUT /biketours/1.json
  def update
    @biketour = Biketour.find(params[:id])

    respond_to do |format|
      if @biketour.update_attributes(params[:biketour])
        format.html { redirect_to @biketour, notice: 'Biketour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @biketour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biketours/1
  # DELETE /biketours/1.json
  def destroy
    @biketour = Biketour.find(params[:id])
    @biketour.destroy

    respond_to do |format|
      format.html { redirect_to biketours_url }
      format.json { head :no_content }
    end
  end
end
