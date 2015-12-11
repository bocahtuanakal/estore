class Product < ActiveRecord::Base
    mount_uploader :pdimg, ImageUploader
    validate :pdimg_size
    validates :name, presence: true, length: { maximum: 50 }
    validates :price, presence: true, length: { maximum: 10 }
    validates :description, presence: true, length: { maximum: 255 }
    
    
private

    # Validates the size of an uploaded picture.
    def pdimg_size
      if pdimg.size > 5.megabytes
        errors.add(:pdimg, "should be less than 5MB")
      end
    end


end
