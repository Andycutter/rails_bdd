class Comment < ApplicationRecord
  belongs_to :article

  validates_presence_of :content
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'Invalid Email'
end
