class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :notes

  validates :name, 
    presence: true, 
    length: { maximum: 250, too_long: "must have at most %{count} characters" }
  validates :email, 
    presence: true, 
    length: { maximum: 250, too_long: "must have at most %{count} characters" },
    uniqueness: true,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :display_name, 
    length: { maximum: 250, too_long: "must have at most %{count} characters" }

  before_save :downcase_email

  after_initialize :set_defaults

  private

    def downcase_email
      self.email = self.email.downcase
    end

    def set_defaults
      self.display_name ||= self.name
    end
end
