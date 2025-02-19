# Introducing ggplot
# Demo in R
library(ggplot2)
library(palmerpenguins)

# Geometries

# Visualizing one continuous variable- histogram
ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram()
# aes means aesthetic mappings
# + adding layers to the ggplot
# x is the axis
# count is the # of penguins based on their body mass

# Visualizing one continuous variable and categorial variable- boxplots
ggplot(penguins, aes(x= body_mass_g, y = species)) +
  geom_boxplot()
# x-axis is still the body mass but y-axis is the species
# body mass of 2 penguins in roughly 4500-5500 grams for gentoo penguins

# Visualizing two continuous variables- scatter plots
ggplot(penguins, aes(x= body_mass_g, y = flipper_length_mm)) +
  geom_point()
# larger body mass tend to have larger flippers

# Aesthetics
ggplot(penguins, aes(x= body_mass_g,
                     y= flipper_length_mm,
                     color = species)) +
  geom_point()


# Customization with scales and themes
# Demo in R
library(ggplot2)
library(palmerpenguins)

# Scales customize expression of mappings

# Manually override default values
ggplot(penguins, aes(x= body_mass_g,
                     y= flipper_length_mm,
                     color = species)) +
  geom_point()

# Use colorblind- friendly palette instead
okabe_ito <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")
ggplot(penguins, aes(x= body_mass_g,
                     y= flipper_length_mm,
                     color = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito)

# We can do same shapes
ggplot(penguins, aes(x= body_mass_g,
                     y= flipper_length_mm,
                     color = species,
                     shape = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito) +
  scale_shape_manual(values = 21:25)

# with fill instead of color
ggplot(penguins, aes(x= body_mass_g,
                     y= flipper_length_mm,
                    fill = species,
                     shape = species)) +
  geom_point() +
  scale_fill_manual(values = okabe_ito) +
  scale_shape_manual(values = 21:25)

# Built- in and custom themes

# i like theme_bw() [built-in] (theme is to make background- black white)

ggplot(penguins, aes(x= body_mass_g,
                     y= flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_fill_manual(values = okabe_ito) +
  scale_shape_manual(values = 21:25) +
  theme_bw()

# move legend inside figure panel (position the legend locatio on the graph)
# use of negative space
ggplot(penguins, aes(x= body_mass_g,
                     y= flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_fill_manual(values = okabe_ito) +
  scale_shape_manual(values = 21:25) +
  theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(0.99,0.01),
        legend.justification = c(1,0))

# Fix the labels (visual appearance)
ggplot(penguins, aes(x= body_mass_g,
                     y= flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_fill_manual(values = okabe_ito) +
  scale_shape_manual(values = 21:25) +
  labs(x= "Body mass (g)",
       y= "Flipper length (mm)",
       fill = "Species",
       shape = "Species") +
   theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(0.99,0.01),
        legend.justification = c(1,0))

