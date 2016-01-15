

class Users
	include ActiveModel::Model

	attr_accessor :name, :mail, :telefono, :consulta


	validates :name, :mail, :telefono, :consulta, presence: true
end