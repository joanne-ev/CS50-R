authors <- read.csv("authors.csv")
books <- read.csv("books.csv")

head(books)
head(authors)

# The Writer
q1 <- which(books$author == "Mia Morgan")
books[q1, ]$title

# The Musician
q2 <- which(books$year == 1613 & books$topic == 'Music')
books[q2, ]$title

# The Traveler
q3 <- which((books$author == "Lysandra Silverleaf" | books$author == "Elena Petrova") & books$year == 1775)
books[q3, ]$title

# The Painter
q4 <- which((books$pages > 200 & books$pages < 300) & (books$year == 1990 | books$year == 1992))
books[q4, ]$title

# The Scientist
unique(books$topic)
q5 <- which(grepl("Quantum Mechanics", books$title))
books[q5, ]$title

# The Teacher
q6a <- authors[which(authors$hometown == "Zenthia"), ]$author
q6 <- which(books$topic == "Education" & (books$year >= 1700 & books$year < 1800) & books$author %in% q6a)
books[q6, ]

