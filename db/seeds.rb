# Supprimer les données existantes
Like.destroy_all
Comment.destroy_all
PrivateMessage.destroy_all
Gossip.destroy_all
Tag.destroy_all
User.destroy_all
City.destroy_all

# Créer des instances de City
city1 = City.create(name: "Paris", zip_code: "75000")
city2 = City.create(name: "Lyon", zip_code: "69000")

# Créer des instances de User
user1 = User.create(first_name: "Alice", last_name: "Johnson", description: "Loves dogs", email: "alice@example.com", age: 25, city: city1)
user2 = User.create(first_name: "Bob", last_name: "Smith", description: "Loves cats", email: "bob@example.com", age: 30, city: city2)

# Créer des instances de Gossip
gossip1 = Gossip.create(title: "First Gossip", content: "This is the first gossip", user: user1)
gossip2 = Gossip.create(title: "Second Gossip", content: "This is the second gossip", user: user2)

# Créer des instances de Tag
tag1 = Tag.create(title: "#Fun")
tag2 = Tag.create(title: "#News")

# Associer des tags aux gossips
gossip1.tags << tag1
gossip2.tags << tag2

# Créer des instances de PrivateMessage
PrivateMessage.create(content: "Hello Alice!", sender: user2, recipient: user1)
PrivateMessage.create(content: "Hello Bob!", sender: user1, recipient: user2)

# Créer des instances de Comment
comment1 = Comment.create!(content: "Great gossip!", user: user2, gossip: gossip1)
comment2 = Comment.create!(content: "Interesting!", user: user1, gossip: gossip2)

Like.create!(user: user1, comment: comment1, gossip: gossip1)
Like.create!(user: user2, comment: comment2, gossip: gossip2)


puts "Seeds created successfully!"
