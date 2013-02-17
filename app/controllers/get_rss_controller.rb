require 'feed-normalizer'

class GetRssController < ApplicationController
  def index
      @posts = Post.order("last_updated DESC").limit(10)
      respond_to do |format|
          format.html
      end
  end
  def page
  end
end
