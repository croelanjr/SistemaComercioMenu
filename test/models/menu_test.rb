# == Schema Information
#
# Table name: menus
#
#  id          :integer          not null, primary key
#  codigo      :string(255)
#  nombre_menu :string(255)
#  tipo_menu   :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
