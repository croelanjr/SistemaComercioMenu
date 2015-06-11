class Empresa < ActiveRecord::Base
	has_attached_file :logo
	mount_uploader :logo, ImagenUploader
end
