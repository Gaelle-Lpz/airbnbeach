puts "Cleaning database..."

Beach.destroy_all
User.destroy_all
first_user = User.create!(
  email:"jessica@lewagon.fr",
  password:"123456",
  user_name:"jcoueron"
)

Beach.create!(
  name: "Phuket Beach Paradise",
  location: "78 Dibuk Road, Talad Nuah, Amper Mung Phuket, 83000 Phuket, Thaïlande",
  price: 250,
  description:"white sand, small waves, and the ultimate in relaxation or wild nightlife",
  user:first_user
)

Beach.create!(
  name: "Saint-Anne Love Beach",
  location: "Beau Vallon, Seychelles",
  price: 400,
  description:"You will love the turquoise water and beautiful white sand",
  user:first_user
)
