class Portfolio < ApplicationRecord
    validates_presense_of :title, :body, :main_image, :thumb_image
end
