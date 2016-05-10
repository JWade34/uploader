class ClientsController < ApplicationController
  layout "main"

  def index
    @clients = Client.all
  end

  def import
    Client.import(params[:file])
    redirect_to root_path, notice: "Data Imported!"
  end

end
