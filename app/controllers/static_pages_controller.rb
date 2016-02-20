class StaticPagesController < ApplicationController
  def home
    @micropoost = current_user.micropoosts.build if logged_in?
  end
end
