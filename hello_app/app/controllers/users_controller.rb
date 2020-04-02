class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @ani_pref = @user.animalPreference
    @num_pref = @user.numberPreference.to_i
    if (@ani_pref == "cat")
      @pic = Pic.find(@num_pref % 10 + 1)
    elsif (@ani_pref == "dog")
      if (@num_pref < 10)
        @pic = Pic.find(@num_pref + 10)
      end
    else 
      @pic = Pic.find(@num_pref)
    end
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :animalPreference,
                                 :numberPreference, :password,
                                 :password_confirmation)
  end
end
