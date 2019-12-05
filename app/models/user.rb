class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :courses,dependent: :destroy
  has_many :grades,dependent: :destroy
  has_many :users, through: :courses
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :national_id, presence:true
  validates :address, presence:true
  validates :level, presence:true
  validates :classes, presence:true
  validates :email, presence:true
  paginates_per 7

  def self.search(search)
    if search
      find(:all, :conditions => ['first_name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
