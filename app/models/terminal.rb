class Terminal < ApplicationRecord
  validates :name, :attrs, presence: { message: "must be given please." }
  validates :name, length: { minimum: 2, maximum: 15}
end
