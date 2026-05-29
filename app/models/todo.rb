class Todo < ApplicationRecord
  validates :name, presence: true, length: { minimun: 5 }
  validates :description, presence: true
end
