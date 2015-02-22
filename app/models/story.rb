class Story < ActiveRecord::Base
  
  has_attached_file :image, :styles => { :medium => "320x240>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  validates :description, presence: true
  validates :user_id, presence: true 
  
  belongs_to :user
  
  def image_remote_url=(url_value)
    self.image = URI.parse(url_value) unless url_value.blank?
    super
  end
 
end
