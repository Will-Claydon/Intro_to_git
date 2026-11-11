## Practice Data on Palmer Penguins ##
# Available at: https://allisonhorst.github.io/palmerpenguins/

citation("palmerpenguins")

## Installation

install.packages("palmerpenguins")

# Description of the two datasets

library(palmerpenguins)
data(package = 'palmerpenguins')

# Use the penguin dataset to structure your project
library(tidyverse)
head(penguins)





##### CODE FOR EXERCISES BELOW #####
# Copy each bit and make a commit with a description for each one
# Get into the habit of committing often

# Create/Edit a README.md file

# Load the tidyverse library.
library(tidyverse)

# If the package doesn't exist, run `install.packages("tidyverse")` and then `library(tidyverse)`. 
# You only need to run the install once.

# Read in the data
glimpse(penguins)

# Run a linear regression
model1 <- lm(body_mass_g ~ flipper_length_mm, data = penguins)
summary(model1)

# Create a plot
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, colour = species)) +
  geom_point() +
  stat_smooth(method = "lm") 

# Save your plot into your figures or results folder
ggsave("figs/1_flipper_bodymass_regression.png") # CHANGE FOLDER NAME

#NB. This saves the last plot that was run!

# Subset the data to females only
penguins_female <- subset(penguins, sex == "female")
head(penguins_female)

# Save the edited dataset
write_tsv(penguins_female, "results/1_penguin_female_only.txt")
# NB: CHANGE FOLDER NAME