class ClientsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @client = @user.clients.create(client_params)
    redirect_to article_path(@user)
  end

  private
  def client_params
    params.require(:comment).permit(:name, :id_number, :email, :telephone)
  end
end
