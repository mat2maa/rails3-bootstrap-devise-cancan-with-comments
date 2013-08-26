class InterestsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /interests
  # GET /interests.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @interests }
    end
  end

  # GET /interests/1
  # GET /interests/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @interest }
    end
  end

  # GET /interests/new
  # GET /interests/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @interest }
    end
  end

  # GET /interests/1/edit
  def edit
  end

  # POST /interests
  # POST /interests.json
  def create
    respond_to do |format|
      if @interest.save
        format.html { redirect_to @interest, :notice => 'Интересот е успешно додаден.' }
        format.json { render :json => @interest, :status => :created, :location => @interest }
      else
        format.html { render :action => "new" }
        format.json { render :json => @interest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /interests/1
  # PUT /interests/1.json
  def update
    respond_to do |format|
      if @interest.update_attributes(params[:interest])
        format.html { redirect_to @interest, :notice => 'Интересот е успешно ажуриран.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @interest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /interests/1
  # DELETE /interests/1.json
  def destroy
    @interest.destroy

    respond_to do |format|
      format.html { redirect_to interests_url }
      format.json { head :no_content }
    end
  end
end
