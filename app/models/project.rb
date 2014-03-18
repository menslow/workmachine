class Project < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  belongs_to :client

  validates :name, presence: true
  validates :client_id, presence: true

end