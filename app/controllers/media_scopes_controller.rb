class MediaScopesController < ApplicationController
  # GET /media_scopes
  # GET /media_scopes.json
  def index
    @media_scopes = MediaScope.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @media_scopes }
    end
  end

  # GET /media_scopes/1
  # GET /media_scopes/1.json
  def show
    @media_scope = MediaScope.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @media_scope }
    end
  end

  # GET /media_scopes/new
  # GET /media_scopes/new.json
  def new
    @media_scope = MediaScope.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @media_scope }
    end
  end

  # GET /media_scopes/1/edit
  def edit
    @media_scope = MediaScope.find(params[:id])
  end

  # POST /media_scopes
  # POST /media_scopes.json
  def create
    @media_scope = MediaScope.new(params[:media_scope])

    respond_to do |format|
      if @media_scope.save
        format.html { redirect_to @media_scope, notice: 'Media scope was successfully created.' }
        format.json { render json: @media_scope, status: :created, location: @media_scope }
      else
        format.html { render action: "new" }
        format.json { render json: @media_scope.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /media_scopes/1
  # PUT /media_scopes/1.json
  def update
    @media_scope = MediaScope.find(params[:id])

    respond_to do |format|
      if @media_scope.update_attributes(params[:media_scope])
        format.html { redirect_to @media_scope, notice: 'Media scope was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @media_scope.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_scopes/1
  # DELETE /media_scopes/1.json
  def destroy
    @media_scope = MediaScope.find(params[:id])
    @media_scope.destroy

    respond_to do |format|
      format.html { redirect_to media_scopes_url }
      format.json { head :no_content }
    end
  end
end
