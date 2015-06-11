class Pedido < ActiveRecord::Base
  #attr_accesible :user_id
  belongs_to :usuario
  validates :username, presence: true
end
