class MovingJob < ApplicationRecord
  validates_format_of :customer_email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/

  STATES = [
    ["Massachusetts", "MA"],
    ["New Hampshire", "NH"],
    ["Connecticut", "CT"],
    ["Maine", "ME"]
  ]
end
