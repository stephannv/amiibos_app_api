class Amiibo < ApplicationRecord
	belongs_to :company
	belongs_to :series
	
	validates_presence_of :name, :release_date, :company_id, 
		:description, :detail_image_url, :boxart_image_url
	validates_uniqueness_of :name, scope: :series_id


end
