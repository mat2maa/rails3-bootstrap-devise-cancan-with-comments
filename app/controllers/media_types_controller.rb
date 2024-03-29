class MediaTypesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /media_types
  # GET /media_types.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @media_types }
    end
  end

  # GET /media_types/1
  # GET /media_types/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @media_type }
    end
  end

  # GET /media_types/new
  # GET /media_types/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @media_type }
    end
  end

  # GET /media_types/1/edit
  def edit
  end

  # POST /media_types
  # POST /media_types.json
  def create
    respond_to do |format|
      if @media_type.save
        format.html { redirect_to @media_type, :notice => 'Видот на медиум е успешно додаден.' }
        format.json { render :json => @media_type, :status => :created, :location => @media_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @media_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /media_types/1
  # PUT /media_types/1.json
  def update
    respond_to do |format|
      if @media_type.update_attributes(params[:media_type])
        format.html { redirect_to @media_type, :notice => 'Видот на медиум е успешно ажуриран.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @media_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /media_types/1
  # DELETE /media_types/1.json
  def destroy
    @media_type.destroy

    respond_to do |format|
      format.html { redirect_to media_types_url }
      format.json { head :no_content }
    end
  end
end
