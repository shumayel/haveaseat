class Restaurant < ActiveRecord::Base
    has_many :reservations
    has_many :users, through: :reservations

 validates :name, presence: true
 validates :capcity, numericality: {only_integer: true}
end