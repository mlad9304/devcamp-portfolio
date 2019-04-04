class TopicsController < ApplicationController
  layout 'blog'
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page params[:page]
    else
      @blogs = @topic.blogs.published.page params[:page]
    end
  end
end
