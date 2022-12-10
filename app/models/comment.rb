class Comment < ApplicationRecord
    belongs_to :champion
    belongs_to :user

    validates :title, presence: true
    validates :description, presence: true

end
