class Client < ActiveRecord::Base
  has_many :projects, dependent: :destroy

  validates :name, presence: true, length: { maximum: 250, too_long: "must have at most %{count} characters" }

end
