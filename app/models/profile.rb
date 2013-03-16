class Profile < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader
  attr_accessible :cell_phone, :experience, :name,
    :nickname, :phone, :category_ids, :avatar, :description,
    :courses, :address_attributes,:kind,:city, :categories

  has_and_belongs_to_many :categories
  belongs_to :freelance
  has_one :address
  has_one :city, :through => :address, :source =>:city

  validates_presence_of :name, :cell_phone, :phone, :kind
  validate :require_at_least_one_category

  accepts_nested_attributes_for :address, :allow_destroy => true

  def self.search(profile)
     self.find :all, :joins => [:categories, :city],
       :conditions =>
       ['cities.name like :city and categories.name like :category' ,
        {:city => "#{profile[:city].capitalize}" , :category => "%#{profile[:category].capitalize}%"}]
  end

  private
  def require_at_least_one_category
    errors.add(:categories, " require at least one category") unless categories.size > 0
  end
end
