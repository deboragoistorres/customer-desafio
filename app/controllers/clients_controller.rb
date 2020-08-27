class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.save

    if @client.save
      redirect_to clients_path(@client)
    else
      render :new
    end
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    @client.update(client_params)


    redirect_to client_path(@client)
  end

   def destroy
    @client = Client.find(params[:id])
    @client.destroy

   if @client.destroy
      redirect_to clients_path(@client)
    else
      render :new
    end
  end

  private

  def client_params
    params.require(:client).permit(:full_name, :phone, :email, :register_date)
  end
end
