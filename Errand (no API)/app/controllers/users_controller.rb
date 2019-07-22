class UsersController < ApplicationController
  def new
  end
end

# class UsersController < CLearance::UsersController
#   private
#
#   def user_params
#     params.require(:user).permit(:username, :email, :password)
#   end
# end
