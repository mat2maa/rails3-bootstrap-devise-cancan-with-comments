class ExpertisesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /expertises
  # GET /expertises.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @expertises }
    end
  end

  # GET /expertises/1
  # GET /expertises/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @expertise }
    end
  end

  # GET /expertises/new
  # GET /expertises/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @expertise }
    end
  end

  # GET /expertises/1/edit
  def edit
  end

  # POST /expertises
  # POST /expertises.json
  def create
    respond_to do |format|
      if @expertise.save
        format.html { redirect_to @expertise, notice: 'Expertise was successfully created.' }
        format.json { render json: @expertise, status: :created, location: @expertise }
      else
        format.html { render action: "new" }
        format.json { render json: @expertise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /expertises/1
  # PUT /expertises/1.json
  def update
    respond_to do |format|
      if @expertise.update_attributes(params[:expertise])
        format.html { redirect_to @expertise, notice: 'Expertise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @expertise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expertises/1
  # DELETE /expertises/1.json
  def destroy
    @expertise.destroy

    respond_to do |format|
      format.html { redirect_to expertises_url }
      format.json { head :no_content }
    end
  end
end
