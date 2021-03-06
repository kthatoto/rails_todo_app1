class Task < ApplicationRecord
  scope :recently_updated, -> { order(updated_at: :desc) }
  enum status: {todo: 0, done: 1}

  validates :assignee, presence: true
  validates :content,  presence: true
  validates :status,   presence: true
end
