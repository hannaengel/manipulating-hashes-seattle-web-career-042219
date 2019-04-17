def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
  contacts.each do |name, stats|
    name.each do |stats, data|
      if stats == :favorite_icecream_flavors
        data.delete_if{|flavor| flavor == 'strawberry'}
      end
    end
  end
  contacts
end
