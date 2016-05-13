class Api::V1::ClientsController < Api::V1::BaseController
  include ActiveHashRelation

  def show
    client = Client.find(params[:id])

    render(json: Api::V1::ClientSerializer.new(client).to_json)
  end

  def index
  clients = Client.all

  clients = apply_filters(clients, params)

    render(
      json: ActiveModel::ArraySerializer.new(
        clients,
        each_serializer: Api::V1::ClientSerializer,
        root: 'clients',
      )
    )
  end
end
