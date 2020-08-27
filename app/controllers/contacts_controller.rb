class ContactsController < ApplicationController
   def new
    @client = Client.find(params[:client_id])
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @client = Client.find(params[:client_id])
    @contact.client = @client
    if  @contact.save
      redirect_to client_path(@client)
    else
      render :new
    end
  end

   def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
    redirect_to clients_path
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to clients_path
  end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :email, :phone)
  end
end
