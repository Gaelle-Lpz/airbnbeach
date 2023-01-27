puts "Cleaning database..."

Booking.destroy_all
Review.destroy_all
Beach.destroy_all
User.destroy_all

# Create User
user1 = User.create!(
  email: "jessica@lewagon.fr",
  password: "lewagon",
  user_name: "Jessica"
)

user2 = User.create!(
  email: "gaelle@lewagon.fr",
  password: "lewagon",
  user_name: "Gaelle"
)

user3 = User.create!(
  email: "seb@lewagon.fr",
  password: "lewagon",
  user_name: "Seb"
)

user4 = User.create!(
  email: "shaherazade@lewagon.fr",
  password: "lewagon",
  user_name: "Shaherazade"
)

user5 = User.create!(
  email: "jean@lewagon.fr",
  password: "lewagon",
  user_name: "Jean"
)

user6 = User.create!(
  email: "sophie@lewagon.fr",
  password: "lewagon",
  user_name: "Sophie"
)

user7 = User.create!(
  email: "tom@lewagon.fr",
  password: "lewagon",
  user_name: "Tom"
)

user8 = User.create!(
  email: "yanis@lewagon.fr",
  password: "lewagon",
  user_name: "Yanis"
)

user9 = User.create!(
  email: "gerard@lewagon.fr",
  password: "lewagon",
  user_name: "Gérard"
)

user10 = User.create!(
  email: "michelle@lewagon.fr",
  password: "lewagon",
  user_name: "Michelle"
)

# Create Beach
beach1 = Beach.create!(
  name: "Phuket Beach Paradise",
  location: "78 Dibuk Road, Talad Nuah, Amper Mung Phuket, 83000 Thaïlande",
  price: 250,
  description: "white sand, small waves, and the ultimate in relaxation or wild nightlife",
  user: user1
)

beach2 = Beach.create!(
  name: "Saint-Anne Love Beach",
  location: "Beau Vallon, Seychelles",
  price: 400,
  description: "You will love the turquoise water and beautiful white sand",
  user: user1
)

beach3 = Beach.create!(
  name: "La Digue Island",
  location: "La Digue Island, Seychelles",
  price: 800,
  description: "Small and picturesque island of the Seychelles, known for its beaches and white sand.",
  user: user2
)

beach4 = Beach.create!(
  name: "Pink Sands Beach",
  location: "BIsla Harbour, Les Bahamas",
  price: 1200,
  description: "A beautiful pink sand beach on Harbour Island which is quite long.",
  user: user2
)

beach5 = Beach.create!(
  name: "Whitehaven Beach",
  location: "Whitsundays Queensland 4802, Australie",
  price: 400,
  description: "Picturesque white sand beach, grill restaurant and peaceful turquoise waters ideal for swimming.",
  user: user3
)

beach6 = Beach.create!(
  name: "Shipwreck Boat Panagiotis",
  location: "Zakynthos 290 91, Grèce",
  price: 400,
  description: "As beautiful in real life as on the internet, the water is immaculate and you would think you were at the gates of another world",
  user: user3
)

beach7 = Beach.create!(
  name: "Playa Santa Fe",
  location: "Zona Hotelera Tulum, Tulum, 	77936 Quintana Roo, Mexique",
  price: 400,
  description: "This beach is beautiful with its fine sand like flour and its turquoise water. ",
  user: user4
)

beach8 = Beach.create!(
  name: "Praia Dona Ana",
  location: "8600-315 Lagos, Portugal",
  price: 400,
  description: "Fantastic beach, ideal for diving in crystal clear waters.",
  user: user4
)

beach9 = Beach.create!(
  name: "Atoll Ari",
  location: "Beau Vallon, Seychelles",
  price: 4000,
  description: "Large natural atoll composed of 105 islands, of which more than 20 host tourist complexes.",
  user: user4
)

Beach.create!(
  name: "Yejele Beach",
  location: "Nouvelle-Calédonie",
  price: 400,
  description: "Very beautiful beach with white sand as far as the eye can see. The lagoon is large and beautiful with fish of all colors. It is surely the most beautiful white sand beach of the island.",
  user: user2
)

# Create Booking

booking1 = Booking.create!(
  start_date: "Fri, 21 Jul 2023",
  end_date: "Thu, 21 Sep 2023",
  user: user2,
  beach: beach1
)

booking2 = Booking.create!(
  start_date: "Sat, 4 Mar 2023",
  end_date: "Wed, 15 Mar 2023",
  user: user7,
  beach: beach2
)

booking3 = Booking.create!(
  start_date: "Tue, 25 Apr 2023",
  end_date: "Sat, 29 Apr 2023",
  user: user4,
  beach: beach3
)

booking4 = Booking.create!(
  start_date: "Mon, 3 Jul 2023",
  end_date: "Fri, 7 Jul 2023",
  user: user3,
  beach: beach2
)

booking5 = Booking.create!(
  start_date: "Fri, 13 May 2023",
  end_date: "Tue, 20 Jun 2023",
  user: user8,
  beach: beach1
)

booking6 = Booking.create!(
  start_date: "Thu, 26 Jul 2023",
  end_date: "Mon, 21 Aug 2023",
  user: user1,
  beach: beach4
)

booking7 = Booking.create!(
  start_date: "Mon, 21 Aug 2023",
  end_date: "Thu, 14 Sep 2023",
  user: user4,
  beach: beach1
)

booking8 = Booking.create!(
  start_date: "Thu, 14 Sep 2023",
  end_date: "Sun, 16 Sep 2023
  ",
  user: user9,
  beach: beach5
)

booking9 = Booking.create!(
  start_date: "Sun, 16 Sep 2023",
  end_date: "Thu, 21 Sep 2023",
  user: user5,
  beach: beach6
)

booking10 = Booking.create!(
  start_date: "Thu, 14 Sep 2023",
  end_date: "Wed, 4 Oct 2023",
  user: user4,
  beach: beach7
)

booking11 = Booking.create!(
  start_date: "Sat, 17 Jun 2023",
  end_date: "Tue, 4 Jul 2023",
  user: user1,
  beach: beach8
)

booking12 = Booking.create!(
  start_date: "Fri, 21 Jul 2023",
  end_date: "Mon, 7 Aug 2023",
  user: user2,
  beach: beach9
)

booking13 = Booking.create!(
  start_date: "Mon, 7 Aug 2023",
  end_date: "Thu, 24 Aug 2023",
  user: user6,
  beach: beach5
)

booking14 = Booking.create!(
  start_date: "Sun, 10 Sep 2023",
  end_date: "Thu, 21 Sep 2023",
  user: user10,
  beach: beach7
)

booking15 = Booking.create!(
  start_date: "Sat, 14 Oct 2023",
  end_date: "Tue, 31 Oct 2023",
  user: user9,
  beach: beach1
)

# Create review
Review.create!(
  comment: "Beach at the top!",
  rating: 5,
  booking: booking1
)

Review.create!(
  comment: "fortunately we can rent private beaches that avoids to see the children of the others",
  rating: 4,
  booking: booking2
)

Review.create!(
  comment: "too many jellyfish",
  rating: 2,
  booking: booking3
)

Review.create!(
  comment: "the lifeguard was very nice !",
  rating: 5,
  booking: booking4
)

Review.create!(
  comment: "I rented this private beach for my birthday and it was a-MAZ-ing! The water was crystal clear and the sand was so soft, it was like walking on clouds. Plus, no pesky tourists to ruin my vibe. 10/10 would rent again.",
  rating: 4,
  booking: booking5
)

Review.create!(
  comment: "I was a bit hesitant to rent a private beach at first, but it was totally worth it. Not only did I have the whole beach to myself, but I also found a treasure trove of seashells and even a starfish! #beachcombergoals",
  rating: 3,
  booking: booking6
)

Review.create!(
  comment: "This private beach rental was a great way to escape the hustle and bustle of everyday life. I spent the whole day lounging on a beach chair, sipping on tropical drinks, and getting a tan. The only downside? I didn't want to leave!",
  rating: 5,
  booking: booking7
)

Review.create!(
  comment: "I rented this private beach for a romantic getaway with my significant other and it was the perfect setting for some R&R. We even saw dolphins swimming in the ocean! Swoon.",
  rating: 4,
  booking: booking8
)

Review.create!(
  comment: "I rented a private beach for a family vacation and it was a hit with the kids. They had a blast building sandcastles and playing in the water. Plus, the privacy allowed for some much-needed family bonding time.",
  rating: 3,
  booking: booking9
)

Review.create!(
  comment: "This private beach rental was a dream come true for my inner mermaid. I spent hours swimming in the ocean and lounging on the beach. Plus, no one was around to judge my poor swimming skills.",
  rating: 5,
  booking: booking10
)

Review.create!(
  comment: "I rented a private beach for a group of friends and it was the ultimate party spot. We had a blast dancing on the beach and taking turns jumping off the dock. Plus, no one complained about the loud music.",
  rating: 4,
  booking: booking11
)

Review.create!(
  comment: "I rented a private beach for a day of solitude and it was exactly what I needed. The sound of the waves and the smell of the ocean were just what the doctor ordered. Plus, I finally finished that book I've been meaning to read for ages.",
  rating: 3,
  booking: booking12
)

Review.create!(
  comment: "I rented a private beach for a photo shoot and it was picture perfect. The clear water and white sand made for some amazing shots. Plus, no one was around to photobomb my shots.",
  rating: 4,
  booking: booking13
)

Review.create!(
  comment: "I rented a private beach for a yoga retreat and it was the perfect setting for some Zen. The sound of the waves and the smell of the ocean were the perfect backdrop for my meditation and yoga practice. Plus, no one was around to judge my poor yoga skills.",
  rating: 5,
  booking: booking14
)

Review.create!(
  comment: "What can I say about this private beach rental? It was pure paradise! The water was so blue, it looked like it was straight out of a postcard. And the sand was so white, it was like walking on a cloud. I spent hours swimming, sunbathing, and just enjoying the tranquility of having the whole place to myself. Highly recommend!",
  rating: 5,
  booking: booking15
)
