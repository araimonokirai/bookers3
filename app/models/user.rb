class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true,
                   length: { maximum: 20}
  validates :introduction, length: { maximum: 50}

  has_many :books, dependent: :destroy
  attachment :profile_image
end
