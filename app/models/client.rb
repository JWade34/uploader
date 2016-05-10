class Client < ActiveRecord::Base
  require 'csv'

  belongs_to :upload

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Client.create! row.to_hash
    end
  end
end
