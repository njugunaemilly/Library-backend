class User < ApplicationRecord
    validates :password, presence: true 
    # has_secure_password
    has_many :reviews
    has_many :books, through: :reviews

    # takes a plaintext password and stores a hashed version as a password_digest
  def password=(new_password)
    self.password_digest = dumb_hash(new_password)
  end

  # checks if the hashed plaintext password matches the password_digest
  def authenticate(password)
    return nil unless dumb_hash(password) == password_digest
    self
  end

  private

  # the hashing method
  def dumb_hash(input)
    input.bytes.reduce(:+)
  end

end
