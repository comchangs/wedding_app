class Item < ActiveRecord::Base
	belongs_to :registry
	has_and_belongs_to_many :gifts
end
