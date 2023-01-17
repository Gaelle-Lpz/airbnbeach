puts "Cleaning database..."

Beach.destroy_all

Beach.create!(
  name: "Phuket Beach Paradise",
  location: "78 Dibuk Road, Talad Nuah, Amper Mung Phuket, 83000 Phuket, Thaïlande",
  price: 250,
  description:"white sand, small waves, and the ultimate in relaxation or wild nightlife",
  user_id:1
)

Beach.create!(
  name: "Saint-Anne Love Beach",
  location: "Beau Vallon, Seychelles",
  price: 400,
  description:"You will love the turquoise water and beautiful white sand",
  user_id:1
)
