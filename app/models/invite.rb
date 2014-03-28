class Invite < ActiveRecord::Base

  validates :email, 
    presence: true, 
    length: { maximum: 250, too_long: "must have at most %{count} characters" },
    uniqueness: true,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

end
