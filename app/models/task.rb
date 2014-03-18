class Task < ActiveRecord::Base
  belongs_to :project

  validates :name, presence: true, length: { maximum: 500, too_long: "must have at most %{count} characters" }
  validates :product_id, presence: true

end
