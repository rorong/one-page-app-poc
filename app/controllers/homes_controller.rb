class HomesController < ApplicationController
  def index
  end

  def social_click
    SocialTab.fb_tab if params['id'] == 'fb'
    SocialTab.reddit_tab if params['id'] == 'reddit'
  end
end
