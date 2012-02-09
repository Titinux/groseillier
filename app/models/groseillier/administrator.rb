module Groseillier
  class Administrator < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :token_authenticatable, :encryptable, :confirmable, :registerable, :validatable, :rememberable and :omniauthable
    devise :database_authenticatable, :trackable, :timeoutable, :lockable, :recoverable,
           { stretches: 10,
             timeout_in: 30.minutes,
             lock_strategy: :failed_attempts, maximum_attempts: 5, unlock_strategy: :email }

    # Setup accessible (or protected) attributes for your model
    attr_accessible :nickname, :email, :password, :password_confirmation, :remember_me, :preferred_locale

    # Validations
    validates :email,
              :presence => true,
              :uniqueness => true,
              :format => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

    validates :nickname,
              :presence => true,
              :uniqueness => true,
              :length => { :within => 3..25 }

    validates :password,
              :length => { :within => 6..20 },
              :allow_nil => true,
              :confirmation => true

    validates :password,
              :presence => true,
              :on => :create

    # Preferences
    preference :locale, :string
  end
end
