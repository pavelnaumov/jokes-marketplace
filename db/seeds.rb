jokes = [
  {
    title:"How do you know if a blonde has been sending e-mail?",
    description:"You see a bunch of envelopes stuffed into the disk drive",
    category:"Blonde Jokes"
  },
  {
    title:"What is black and screams?",
    description:"Stevie Wonder answering the iron",
    category:"Blind Jokes"
  },
  {
    title: "What would you call four Mexicans drowning in a lake?",
    description:"Quatro Cinco",
    category:"Mexicans Jokes"
  },
  {
    title: "How does every Russian joke start?",
    description: "By looking over your shoulder",
    category: "Russians Jokes"
  },
  {
    title: "What do you call someone with Down Syndrome who smokes weed?",
    description: "A baked potato",
    category: "Disabled Jokes"
  },
  {
    title: "What do you call a Mexican who lost his car?",
    description: "Carlos",
    category: "Mexican Jokes"
  },
  {
    title: "What do you call a Russian tree?",
    description: "Dimitree",
    category: "Russian Jokes"
  },
  {
    title: "What do you call the security outside of a Samsung Store?",
    description: "Guardians of the Galaxy.",
    category: "Dad Jokes"
  },
  {
    title: "Why do the French eat snails?",
    description: "They don't like fast food",
    category: "French Jokes"
  },
  {
    title: "What do you get when you put root beer in a square glass?",
    description: "Beer",
    category: "Smart Jokes"
  },
]

users = [
  {
    email: "maria@mail.com",
    username: "maria"
  },
  {
    email: "monica@mail.com",
    username: "monica"
  },
  {
    email: "laura@mail.com",
    username: "laura"
  }
]

  puts "Cleaning up database"
  Joke.delete_all

  puts "Creating Jokes"
  jokes.each do |joke|
    j = Joke.create(joke)
    j.user = User.all.sample
    j.save
  end

  puts "Created #{Joke.count} jokes"