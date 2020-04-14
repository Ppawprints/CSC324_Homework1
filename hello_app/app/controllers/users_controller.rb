class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @ani_pref = @user.animalPreference
    @num_pref = @user.numberPreference.to_i
    if (@ani_pref == "cat")
      @num_pref = @num_pref % 10 + 1
      @picInfo = (@num_pref).to_s + ".jpg"
      @animalType = "cat"
    elsif (@ani_pref == "dog")
      @animalType = "gos"
      if (@num_pref < 10)
        @num_pref = @num_pref + 10
        @picInfo = @num_pref.to_s + ".jpg"
      end
    else 
      @picInfo = @num_pref.to_s + ".jpg"
      if (@num_pref <= 10)
        @animal_type = "cat"
      else
        @animal_type = "dog"
      end
    end
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Animal Pic!"
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
