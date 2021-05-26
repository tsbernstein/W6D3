class User < ApplicationRecord
    validates :username, uniqueness: { scope: :artwork}
    
    has_many :artworks,
    class_name: :Artwork,
    primary_key: :id,
    foreign_key: :artist_id

    has_many :viewers,
    class_name: :ArtworkShare,
    primary_key: :id,
    foreign_key: :viewer_id

end