class Content < ActiveRecord::Base
	belongs_to :quay
	has_many :analytics
	belongs_to :author,
		:class_name => "user",
		:foreign_key => "author_id"
	belongs_to :editor,
		:class_name => "user",
		:foreign_key => "editor_id"
end
