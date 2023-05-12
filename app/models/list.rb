class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end


# A list must have a unique name.
# A list has many bookmarks
# A list has many movies through bookmarks
# When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
