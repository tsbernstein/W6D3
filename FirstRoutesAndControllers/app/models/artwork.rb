class Artwork < ApplicationRecord
    belongs_to :artist,
    class_name: :User,
    primary_key: :id,
    foreign_key: :artist_id

    has_many :viewers,
    class_name: :ArtworkShare,
    primary_key: :id,
    foreign_key: :artwork_id
end