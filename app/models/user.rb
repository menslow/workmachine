class User < ActiveRecord::Base
  has_many :tasks

  validates :name, presence: true, length: { maximum: 250, too_long: "must have at most %{count} characters" }
  validates :email, presence: true, length: { maximum: 250, too_long: "must have at most %{count} characters" }

end
