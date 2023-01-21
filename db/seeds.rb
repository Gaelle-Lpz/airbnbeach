puts "Cleaning database..."

Booking.destroy_all
Review.destroy_all
Beach.destroy_all
User.destroy_all

# Create User
first_user = User.create!(
  email: "jessica@lewagon.fr",
  password: "lewagon",
  user_name: "jcoueron"
)

second_user = User.create!(
  email: "gaelle2@lewagon.fr",
  password: "lewagon",
  user_name: "Gaelle"
)

third_user = User.create!(
  email: "seb@lewagon.fr",
  password: "lewagon",
  user_name: "Seb"
)

fourth_user = User.create!(
  email: "shaherazade@lewagon.fr",
  password: "lewagon",
  user_name: "Shaherazade"
)

# Create Beach
first_beach = Beach.create!(
  name: "Phuket Beach Paradise",
  location: "78 Dibuk Road, Talad Nuah, Amper Mung Phuket, 83000 Phuket, Thaïlande",
  price: 250,
  description: "white sand, small waves, and the ultimate in relaxation or wild nightlife",
  user: first_user
)

Beach.create!(
  name: "Saint-Anne Love Beach",
  location: "Beau Vallon, Seychelles",
  price: 400,
  description: "You will love the turquoise water and beautiful white sand",
  user: second_user
)

Beach.create!(
  name: "La Digue Island",
  location: "La Digue Island, Seychelles",
  price: 800,
  description: "Small and picturesque island of the Seychelles, known for its beaches and white sand.",
  user: third_user
)

Beach.create!(
  name: "Pink Sands Beach",
  location: "BIsla Harbour, Bahamas",
  price: 1200,
  description: "A beautiful pink sand beach on Harbour Island which is quite long.",
  user: first_user
)

Beach.create!(
  name: "Whitehaven Beach",
  location: "Whitsundays Queensland 4802, Australie",
  price: 400,
  description: "Picturesque white sand beach, grill restaurant and peaceful turquoise waters ideal for swimming.",
  user: second_user
)

Beach.create!(
  name: "Shipwreck Boat Panagiotis",
  location: "Zakynthos 290 91, Grèce",
  price: 400,
  description: "As beautiful in real life as on the internet, the water is immaculate and you would think you were at the gates of another world",
  user: first_user
)

Beach.create!(
  name: "Playa Santa Fe",
  location: "Zona Hotelera Tulum, Tulum, Quintana Roo, Mexique",
  price: 400,
  description: "This beach is beautiful with its fine sand like flour and its turquoise water. ",
  user: first_user
)

Beach.create!(
  name: "Praia Dona Ana",
  location: "8600-315 Lagos, Portugal",
  price: 400,
  description: "Fantastic beach, ideal for diving in crystal clear waters.",
  user: first_user
)

Beach.create!(
  name: "Atoll Ari",
  location: "Beau Vallon, Seychelles",
  price: 4000,
  description: "Large natural atoll composed of 105 islands, of which more than 20 host tourist complexes.",
  user: first_user
)

Beach.create!(
  name: "Yejele Beach",
  location: "Nouvelle-Calédonie",
  price: 400,
  description: "Very beautiful beach with white sand as far as the eye can see. The lagoon is large and beautiful with fish of all colors. It is surely the most beautiful white sand beach of the island.",
  user: fourth_user
)

#Create Booking

first_booking = Booking.create!(
  start_date: "Fri, 21 Jul 2023",
  end_date: "Thu, 21 Sep 2023",
  user: second_user,
  beach: first_beach
)

# Create review
Review.create!(
  comment: "Beach at the top!",
  rating: 5,
  booking: first_booking
)

Review.create!(
  comment: "fortunately we can rent private beaches that avoids to see the children of the others",
  rating: 4,
  booking: first_booking
)

Review.create!(
  comment: "too many jellyfish",
  rating: 2,
  booking: first_booking
)

Review.create!(
  comment: "the lifeguard was very nice !",
  rating: 5,
  booking: first_booking
)
