class Comment < ApplicationRecord
  belongs_to :prototypes
  belongs_to :user
end
