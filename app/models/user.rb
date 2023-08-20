# frozen_string_literal: true

class User < ApplicationRecord
  enum role: { 'member': 0, "admin": 1 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2 github]

  validates :username, presence: true, uniqueness: { case_sensitive: true }
  validate :validate_username

  attr_writer :login

  def login
    @login || username || email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if (login = conditions.delete(:login))
      where(conditions.to_h).where(['lower(username) = :value OR lower(email) = :value',
                                    { value: login.downcase }]).first
    elsif conditions.key?(:username) || conditions.key?(:email)
      where(conditions.to_h).first
    end
  end

  def self.from_omniauth(auth)
    username = auth.info.name.gsub(/\s+/, '').downcase

    where(email: auth.info.email).first_or_create do |user|
      user.email = auth.info.email
      user.username = username
      user.full_name = auth.info.name
      user.avatar_url = auth.info.image

      user.password = Devise.friendly_token[0, 20]
    end
  end

  private

  def validate_username
    return unless User.where(email: username).exists?

    errors.add(:username, :invalid)
  end
end
