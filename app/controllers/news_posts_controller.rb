class NewsPostsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource :except => :create

  # GET /news_posts
  # GET /news_posts.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @news_posts }
    end
  end

  # GET /news_posts/1
  # GET /news_posts/1.json
  def show
    @comments = @news_post.comment_threads.order('created_at desc')
    @new_comment = Comment.build_from(@news_post, current_user.id, "")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @news_post }
    end
  end

  # GET /news_posts/new
  # GET /news_posts/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @news_post }
    end
  end

  # GET /news_posts/1/edit
  def edit
  end

  # POST /news_posts
  # POST /news_posts.json
  def create
    @user = current_user
    @news_post = @user.news_posts.create(params[:news_post])
    authorize! :create, @news_post, :user_id => current_user.id

    respond_to do |format|
      if @news_post.save
        format.html { redirect_to @news_post, :notice => 'Веста е успешно објавена.' }
        format.json { render :json => @news_post, :status => :created, :location => @news_post }
      else
        format.html { render :action => "new" }
        format.json { render :json => @news_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /news_posts/1
  # PUT /news_posts/1.json
  def update
    respond_to do |format|
      if @news_post.update_attributes(params[:news_post])
        format.html { redirect_to @news_post, :notice => 'Веста е успешно ажурирана.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @news_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /news_posts/1
  # DELETE /news_posts/1.json
  def destroy
    @news_post.destroy

    respond_to do |format|
      format.html { redirect_to news_posts_url }
      format.json { head :no_content }
    end
  end
end
