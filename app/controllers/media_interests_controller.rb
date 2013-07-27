class MediaInterestsController < ApplicationController
  # GET /media_interests
  # GET /media_interests.json
  def index
    @media_interests = MediaInterest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @media_interests }
    end
  end

  # GET /media_interests/1
  # GET /media_interests/1.json
  def show
    @media_interest = MediaInterest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @media_interest }
    end
  end

  # GET /media_interests/new
  # GET /media_interests/new.json
  def new
    @media_interest = MediaInterest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @media_interest }
    end
  end

  # GET /media_interests/1/edit
  def edit
    @media_interest = MediaInterest.find(params[:id])
  end

  # POST /media_interests
  # POST /media_interests.json
  def create
    @media_interest = MediaInterest.new(params[:media_interest])

    respond_to do |format|
      if @media_interest.save
        format.html { redirect_to @media_interest, notice: 'Media interest was successfully created.' }
        format.json { render json: @media_interest, status: :created, location: @media_interest }
      else
        format.html { render action: "new" }
        format.json { render json: @media_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /media_interests/1
  # PUT /media_interests/1.json
  def update
    @media_interest = MediaInterest.find(params[:id])

    respond_to do |format|
      if @media_interest.update_attributes(params[:media_interest])
        format.html { redirect_to @media_interest, notice: 'Media interest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @media_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_interests/1
  # DELETE /media_interests/1.json
  def destroy
    @media_interest = MediaInterest.find(params[:id])
    @media_interest.destroy

    respond_to do |format|
      format.html { redirect_to media_interests_url }
      format.json { head :no_content }
    end
  end
end
