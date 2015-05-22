# == Schema Information
#
# Table name: clientes
#
#  id         :integer          not null, primary key
#  codigo_dni :string(255)
#  nombre     :string(255)
#  apellido   :string(255)
#  fecha_naci :date
#  direccion  :string(255)
#  distrito   :string(255)
#  email      :string(255)
#  clave      :string(255)
#  delivery   :string(255)
#  telefono   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
