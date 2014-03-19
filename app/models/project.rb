class Project < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  belongs_to :client

  validates :active,
    inclusion: { in: [true, false] }
  validates :name, 
    presence: true, 
    length: { maximum: 250, too_long: "must have at most %{count} characters" }
  validates :client_id, 
    presence: true, 
    numericality: { only_integer: true }

  after_initialize :set_defaults

  private
    def set_defaults
      self.active ||= true
    end

end