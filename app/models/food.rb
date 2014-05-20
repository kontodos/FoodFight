class Food < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :large => "250x250", :medium => "200x200>", :thumb => "130x130>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
