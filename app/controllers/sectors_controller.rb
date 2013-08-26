class SectorsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /sectors
  # GET /sectors.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sectors }
    end
  end

  # GET /sectors/1
  # GET /sectors/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sector }
    end
  end

  # GET /sectors/new
  # GET /sectors/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sector }
    end
  end

  # GET /sectors/1/edit
  def edit
  end

  # POST /sectors
  # POST /sectors.json
  def create
    respond_to do |format|
      if @sector.save
        format.html { redirect_to @sector, :notice => 'Секторот е успешно додаден.' }
        format.json { render :json => @sector, :status => :created, :location => @sector }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sector.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sectors/1
  # PUT /sectors/1.json
  def update
    respond_to do |format|
      if @sector.update_attributes(params[:sector])
        format.html { redirect_to @sector, :notice => 'Секторот е успешно ажуриран.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sector.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sectors/1
  # DELETE /sectors/1.json
  def destroy
    @sector.destroy

    respond_to do |format|
      format.html { redirect_to sectors_url }
      format.json { head :no_content }
    end
  end
end
