library(palmerpenguins)
library(ggplot2)

# Edit code to match figures -------------------------------------------------
# At the end of the guided notes for the second video you'll find three figures.
# Edit the following code so the outputs match the figures in the notes.

# Figure 1
ggplot(penguins, aes(x=bill_depth_mm)) +
  geom_histogram()

ggplot(penguins, aes(x= body_mass_g)) +
  geom_histogram()

# Figure 2
ggplot(penguins, aes(y= species, x= flipper_length_mm)) +
  geom_boxplot()

# Figure 3
ggplot(penguins, aes(x= body_mass_g, y= flipper_length_mm, color = island)) +
  geom_point()

ggplot(penguins, aes(x= body_mass_g, y= flipper_length_mm, color = sex)) +
  geom_point()
