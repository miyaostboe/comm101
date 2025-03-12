library(palmerpenguins)
library(ggplot2)

# Make the following changes to this basic boxplot.
# 1) Change the grey background to white
# 2) Clean up the axis labels
# 3) Make the color vary by island
# 4) Choose a color palette that you enjoy!
okabe_ito <- c("#56B4E9", "#009E73", "#CC79A7", "#F0E442", "#D55E00")
ggplot(penguins, aes(x= island, y= body_mass_g, fill= island)) +
  geom_boxplot() +
  labs(x= "Island" ,
       y= "Body mass (g)",
       fill = "Island") +
  scale_fill_manual(values = okabe_ito) +
  theme_bw()
