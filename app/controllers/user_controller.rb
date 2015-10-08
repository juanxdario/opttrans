class UserController < ApplicationController
  
 def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Usuario creado!'
      redirect_to '/'
    else
      flash[:alert] = 'Verificar datos'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :lastname, :phone, :email, :password)
  end
end

