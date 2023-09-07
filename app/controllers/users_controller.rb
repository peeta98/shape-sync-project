class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    respond_to do |format|
      format.html { redirect_to profile_path }
      format.text { render partial: 'pages/profile_infos', locals: { user: current_user }, formats: [:html] }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :age, :weight, :height, :gender)
  end
end
