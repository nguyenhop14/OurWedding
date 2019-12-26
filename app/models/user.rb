class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: {maximum: 50}
  validate :check_birthday

  private
  def check_birthday
    if birthday
      if birthday > Date.today
        errors.add(:birthday, "Birth day is the pass")
      end
    end
  end  
end
