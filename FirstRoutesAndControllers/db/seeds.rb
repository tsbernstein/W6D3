# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all


tyler = User.create!(username: 'Tyler')
tai = User.create!(username: 'Tai')
brad = User.create!(username: 'Brad')
cathy = User.create!(username: 'Cathy')
justin = User.create!(username: 'Justin')


aw1 = Artwork.create!(title: 'Dog', image_url: 'dog.com', artist_id: tyler.id)
aw2 = Artwork.create!(title: 'Cat', image_url: 'cat.com', artist_id: tai.id)
aw3 = Artwork.create!(title: 'Squirrel', image_url: 'squirrel.com', artist_id: brad.id)
aw4 = Artwork.create!(title: 'Fish', image_url: 'fish.com', artist_id: cathy.id)


as1 = ArtworkShare.create!(artwork_id:aw1.id, viewer_id:tai.id)
as2 = ArtworkShare.create!(artwork_id:aw1.id, viewer_id:cathy.id)
as3 = ArtworkShare.create!(artwork_id:aw1.id, viewer_id:justin.id)
as4 = ArtworkShare.create!(artwork_id:aw2.id, viewer_id:justin.id)
as5 = ArtworkShare.create!(artwork_id:aw3.id, viewer_id:tyler.id)
as6 = ArtworkShare.create!(artwork_id:aw3.id, viewer_id:justin.id)