# app/controllers/admin/users_controller.rb

class Admin::UsersController < ApplicationController
  before_action :authenticate_user! # Asegurarse de que el usuario esté autenticado como administrador

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'Usuario creado exitosamente.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :admin, :name , :profile_picture)
  end
end
