class Registry < ActiveRecord::Base
	belongs_to :couple 
	has_many :items, dependent: :destroy 
	has_many :gifts, dependent: :destroy 
end
