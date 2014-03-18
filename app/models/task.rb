class Task < ActiveRecord::Base
  belongs_to :project

  validates :name, presence: true
  validates :product_id, presence: true

end
