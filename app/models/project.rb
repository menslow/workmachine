class Project < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  belongs_to :client

  validates :name, presence: true, length: { maximum: 250, too_long: "must have at most %{count} characters" }
  validates :client_id, presence: true

end