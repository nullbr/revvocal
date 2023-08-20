# frozen_string_literal: true

class User < ApplicationRecord
  enum role: { 'member': 0, "admin": 1 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

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

  private

  def validate_username
    return unless User.where(email: username).exists?

    errors.add(:username, :invalid)
  end
end
