class User < ActiveRecord::Base
has_secure_password
has_many :reservations
has_many :resaturants, through: :reservations

validates :name, presence: true

end