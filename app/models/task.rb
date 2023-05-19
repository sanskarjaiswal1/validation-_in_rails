class Task < ApplicationRecord
    validates :title,presence: true,uniqueness: true
    validates :description,presence: true,uniqueness: true

    has_many :comments
    accepts_nested_attributes_for :comments
    #  self.primary_key = 'id'
end
