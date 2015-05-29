class Promocion < ActiveRecord::Base
	mount_uploader :imagen, ImagenUploader 
end
