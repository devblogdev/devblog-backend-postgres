# Note: 'UserImage' model does not belong to a join toable; these are the images associated to users with no join table
# The 'Image' model is associated to the 'Post' model with no join table also
class UserImage < ApplicationRecord
    belongs_to :user
end