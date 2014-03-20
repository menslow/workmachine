class Project < ActiveRecord::Base
  has_many :notes, dependent: :destroy

  validates :active,
    inclusion: { in: [true, false] }
  validates :name, 
    presence: true, 
    length: { maximum: 250, too_long: "must have at most %{count} characters" }

  after_initialize :set_defaults

  private
    def set_defaults
      self.active ||= true
    end

end