class Task < ActiveRecord::Base
  belongs_to :project

  validates :name, 
    presence: true, 
    length: { maximum: 500, too_long: "must have at most %{count} characters" }
  validates :project_id, 
    presence: true, 
    numericality: { only_integer: true }
  validates :user_id, 
    allow_nil: true,
    numericality: { only_integer: true }
  validate :due_must_make_sense

  private
    def due_must_make_sense
      if due < start
        errors.add(:due, 'Due date cannot be before start date')
      end
    end

end
