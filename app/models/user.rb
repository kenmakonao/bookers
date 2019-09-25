class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
validates :name, presence: true
 devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
 attachment :profile_image
 # deviseでemailを不必要にする
 def email_required?
   false
 end
 def email_changed?
   false
 end
 has_many :books,dependent: :destroy

end
