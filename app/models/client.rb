class Client < ActiveRecord::Base
  has_many :projects, dependent: :destroy

  validates :name, presence: true

end
