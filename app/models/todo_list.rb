class TodoList < ApplicationRecord
  validates :title, presence: true, length: { maximum: 22}
  validates :description, length: { maximum: 22}
  
  has_many :todo_items, dependent: :destroy
end
