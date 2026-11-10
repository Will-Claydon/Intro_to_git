## Intro to git ------------------


## Install and configure git ---------------------
# Go to Terminal
# If no Terminal in RStudio (Tools -> Terminal -> New Terminal)

# type 'which git' in the terminal
# This will tell you if you have git and where it is located
# If you don't have it it will likely prompt you to download it

# 'git --version' tells you what version of git is installed

# Windows users need to install it from 'Git for Windows' 



## Configure Git

# Copy the below code and paste into a script of your own in your RStudio (no project)

# Install some libraries
install.packages('usethis')
install.packages('gitcreds')
install.packages('credentials')
install.packages('gert')
install.packages('gh')

# Load libraries
library(usethis)
library(gitcreds)
library(credentials)
library(gert)
library(gh)

# Connect RStudio to your GitHub Account
use_git_config(user.name = "Jane Doe",
               user.email = "your@email.com") # email MUST match git email account 

# Create a personal access token (PAT)
# Make sure you copy this and save this somewhere secure as you will not be able to see it again
create_github_token() #this will take you to github

# Provide Access to your GitHub account through Rstudio 

gitcreds_set() # This will then prompt you to paste your PAT
# You can always change the PAT later on by re-running this command and adding new credentials

## IMPORTANT: MAKE SURE YOU SAVE YOUR PAT CODE SOMEWHERE SAFE 
## YOU WILL NOT BE ABLE TO SEE IT AGAIN