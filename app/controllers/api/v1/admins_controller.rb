class Api::V1::AdminsController < ApplicationController
  respond_to :json

  def index
    respond_with Admin.all
  end

  def show
    respond_with admin
  end

  def create
    respond_with :api, :v1, Admin.create(admin_params)
  end

  def update
    respond_with admin.update(admin_params)
  end

  def destroy
    respond_with admin.destroy
  end

  private

  def admin
    Admin.find(params[:id])
  end

  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :email, :username, :password)
  end

end
