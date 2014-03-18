class Task < ActiveRecord::Base
  belongs_to :project

  validates :name, 
    presence: true, 
    length: { maximum: 500, too_long: "must have at most %{count} characters" }
  validates :product_id, 
    presence: true, 
    numericality: { only_integer: true }
  validates :user_id, 
    numericality: { only_integer: true }
  validates :due_must_make_sense

  private
    def due_must_make_sense
      if due < start
        errors.add(:due, 'Due date can not be before start date')
      end
    end
end
