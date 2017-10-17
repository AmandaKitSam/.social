class PagesController < ApplicationController
  def home
    if @current_user.present?
        @post = Post.new
        @user= @current_user

        # @following = User.find_all(  )
        # raise
    end
  end

end
