df <- read.table("tests.tsv", sep='\t', header = TRUE)
head(df)


# Convert the gender column from a numeric representation to a textual representation.
df$gender <- factor(
  df$gender,
  levels = c(0, 1, 2, 3),
  labels = c("Unanswered", "Male", "Female", "Other")
)

# New total columns
df$Extroversion <- round(((df$E1 + df$E2 + df$E3) / 15), 2)
df$Neuroticism <- round(((df$N1 + df$N2 + df$N3) / 15), 2)
df$Agreeableness <- round(((df$A1 + df$A2 + df$A3) / 15), 2)
df$Conscientiousness <- round(((df$C1 + df$C2 + df$C3) / 15), 2)
df$Openness <- round(((df$O1 + df$O2 + df$O3) / 15), 2)

head(df)

# Export analysis as CSV file
write.csv(df, "analysis.csv", row.names=FALSE)
