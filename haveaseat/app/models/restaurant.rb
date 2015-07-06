class Restaurant < ActiveRecord::Base
 validates :name, presence: true
 validates :capcity, numericality: {only_integer: true}
end