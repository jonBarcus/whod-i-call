# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)
#  password_digest :string(255)
#

class User < ActiveRecord::Base

  has_secure_password

  validates :password, presence: true, confirmation: true, length: {minimum: 8}

  has_many :entries

end
