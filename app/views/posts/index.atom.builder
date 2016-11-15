
atom_feed do |feed| 
	feed.title("My Wonderful World!")
	feed.updated @post.maximum(:updated_at)

	@post.each do |post| 
		feed.entry(post) do |entry|
			entry.title(post.title)
			entry.content(post.body, type: 'html')

			entry.author do |author| 
				author.name("Iman Mallari")
			end
		end
	end
end

