class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  # :registerable
  include DeviseInvitable::Inviter

  has_many :invitations, :class_name => 'User', :as => :invited_by
end
