# simple data visualization using palmerpenguin package

# load in packages
library(palmerpenguins)
library(ggplot2)
library(tidyverse)
library(RColorBrewer)

# define scatterplot using geom_point function, but easier to manipulate data when using ggplot function aes() instead
ggplot(penguins) +
  geom_point(aes(x = flipper_length_mm,
                 y = body_mass_g,
                 color = species,
                 shape = species,
                 size = 1, 
                 alpha = 0.01)) +
  theme_bw()

# define object w/ggplot parameters
size_test <- ggplot(penguins,
                    aes(x = flipper_length_mm,
                        y = body_mass_g,
                        color = species,
                        shape = species)) +
  geom_point(size = 3, alpha = 0.8) +
  theme_bw()

# Change color palette OR
size_test + 
  scale_color_brewer(palette = "Dark2")

# Manipulate colors manually 
size_test + 
  scale_color_manual(values = c("#00AFBB",
                                "#E7B800",
                                "#FC4E07"))

# Add proper titles
size_test +
scale_color_manual(values = c("#00AFBB", 
                              "#E7B800",
                              "#FC4E07")) +
labs(title = "Relationship Between Flipper Length and Body Mass in Antarctic Penguins",
     subtitle = "Adelie, Chinstrap, and Gentoo Penguins at Palmer Station LTER",
     caption = "Horst AM, Hill AP, Gorman KB (2020). palmerpenguins: Palmer
  Archipelago (Antarctica) penguin data.", 
     x = "Flipper Length (mm)",
     y = "Body Mass (g)")

# Adjust legend to fit within plot + display legend border
size_test + 
scale_color_manual(values = c("#00AFBB",
                              "#E7B800", 
                              "#FC4E07")) +
labs(title = "Relationship Between Flipper Length and Body Mass in Antarctic Penguins",
  subtitle = "Adelie, Chinstrap, and Gentoo Penguins at Palmer Station LTER",
  caption = "Horst AM, Hill AP, Gorman KB (2020). palmerpenguins: Palmer Archipelago
  + (Antarctica) penguin data.",
  x = "Flipper Length (mm)",
  y = "Body Mass (g)") +
theme(legend.position = c(0.9,0.2),
      legend.background = element_rect(size = 0.5,
                                       linetype = "solid",
                                       color = "gray"))
