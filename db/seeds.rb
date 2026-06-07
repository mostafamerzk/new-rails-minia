# Clear existing data
PostEditor.destroy_all
Post.destroy_all
User.destroy_all
Editor.destroy_all

# Create Users
alice = User.create!(name: "Alice", email: "alice@example.com")
bob = User.create!(name: "Bob", email: "bob@example.com")

# Create Editors
charlie = Editor.create!(name: "Charlie")
david = Editor.create!(name: "David")

# Create Posts
post1 = Post.create!(title: "Ruby on Rails Basics", body: "Rails is a web framework...", creator: alice)
post2 = Post.create!(title: "Active Record Associations", body: "Associations are powerful...", creator: bob)

# Associate Editors with Posts
PostEditor.create!(post: post1, editor: charlie)
PostEditor.create!(post: post1, editor: david)
PostEditor.create!(post: post2, editor: charlie)

puts "Seeding completed successfully!"
puts "Created #{User.count} users, #{Editor.count} editors, and #{Post.count} posts."
