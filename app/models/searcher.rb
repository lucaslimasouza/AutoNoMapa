class Searcher < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_many :indications

  attr_accessible :email, :password, :password_confirmation, :remember_me, :avatar, :name


  def indicate(freelance)
  	indication = self.indications.build
  	indication.freelance_id = freelance.id
  	indication.save!
  end
end
