class Pin < ActiveRecord::Base
belongs_to :user
belongs_to :order
has_attached_file :image, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>" }



validates :title, presence: true
validates :description, presence: true
validates :image, presence: true
validates :daily, numericality: true
validates :weekly, numericality: true
validates :monthly, numericality: true
validates :advance, numericality: true

def to_param
	"#{id} #{title}".parameterize
end

searchable do
	text :title, :description	
end



end
