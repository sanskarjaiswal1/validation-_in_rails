class Comment < ApplicationRecord
    belongs_to :task
    # self.primary_key = 'id'
end

