class Portfolio < ApplicationRecord
	validate_presence_of :tittle, :body, :main_image, :thumb_image


end
