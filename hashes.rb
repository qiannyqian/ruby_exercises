# Example 3: Iterate through an array of hashes
users = [
	{ name: "Tom", gender: "M", email: "tom@example.com" },
  { name: "Rachel", gender: "F", email: "rachel@example.com"},
  { name: "Brenda", gender: "F", email: "brenda@example.com"}
]

# 2. Run the code below. What do you observe?
users.each do |user|
	p user
end

3. Run the code below. What do you observe?
users.each do |user|
	p user[:name]
end

# 4. Run the code below. What do you observe?
users.each do |user|
	p user[:name], user[:gender]
end

# 5. Using the examples given above, write code so that we can display the name, gender and email of
# each user in the terminal.
# (Extra credit: display the details of each user in one line.
# For example: "Tom", "M", "tom@example.com" will be in the first line, and the details of the second user will be in the second line, etc.)
users.each do |user|
	p user[:name] + ", " + user[:gender] + ", " + user[:email]
end
