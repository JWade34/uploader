class Api::V1::ClientSerializer < Api::V1::BaseSerializer
  attributes :id, :uuid, :name,  :address, :address2, :city, :state, :zip, :country, :phone, :website, :created_at, :updated_at

  # has_many :microposts
  # has_many :following
  # has_many :followers

  # def created_at
  #   object.created_at.in_time_zone.iso8601 if object.created_at
  # end
  #
  # def updated_at
  #   object.updated_at.in_time_zone.iso8601 if object.created_at
  # end
end
