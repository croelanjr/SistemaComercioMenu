# == Schema Information
#
# Table name: usuarios
#
#  id         :integer          not null, primary key
#  nombres    :string(255)
#  dni        :string(255)
#  email      :string(255)
#  clave      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  local      :string(255)
#  tipo       :string(255)
#

class Usuario < ActiveRecord::Base
end
