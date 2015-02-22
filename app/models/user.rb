class User < ActiveRecord::Base
  has_many :stories
  has_and_belongs_to_many :roles 
  
  #Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  
  ROLES = %w[admin organisation]
  
  def role?(role)
      return !!self.roles.find_by_name(role.to_s.camelize)
  end
  
  def admin?
    self.role.name == "Admin"
  end
end