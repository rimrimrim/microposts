class UploadFile < ActiveRecord::Base
    mount_uploader :file, UploadFileUploader
end
