class Todo < ApplicationRecord
    validates :title, acceptance: { message: 'must be abided' }
    validates :description, presence: true
end
