class Analytic < ActiveRecord::Base
	belongs_to :interaction
	belongs_to :user
	belongs_to :content
end
