class UsersController < ApplicationController

  def destroy
    @user = User.find(current_user.id)
    if @user.destroy
      redirect_to root_path
    else
      redirect_to root_path, notice: "削除出来ませんでした"
    end
  end

end
