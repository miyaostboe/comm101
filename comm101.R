library(marinecs100b)
library(ggplot2)

# Distributions of continuous variables -----------------------------------

# P1 What type of visualization is appropriate for a single continuous variable?
# histogram

# P2 What type of visualization is appropriate for a continuous variable across
# categorical variables?
# boxplots

# P3 Use ggplot to visualize the distribution of sea surface salinity. Save your
# figure as “comm101p3.png”.
colnames(woa_sal)


ggplot(woa_sal, aes(x = salinity)) +
  geom_histogram()
ggsave("comm101p3.png")



# P4 Use ggplot to visualize the distribution of sea surface salinity by ocean
# basin. Save your figure as “comm101p4.png”.

ggplot(woa_sal, aes(x= salinity, y = ocean)) +
  geom_boxplot()

ggsave("comm101p4.png")

# P5 Interpret your figures from P3 and P4. What patterns do you notice?
# P3 and P4 show the same average amount of salinity distributed.
# The average shows around 35 in salinity.
# P3 shows that the highest count of salinity was at 35 and P4 shows that most
# ocean basins average around 35, conveying the same message.


# P6 Critique your figures from P3 and P4. What changes would highlight the
# patterns you interpreted in P5? You don’t need to write code for these
# changes, just describe them verbally.
# We can add more columns, based on the woa_sal data frame given, which will
# make the ggplot more detailed and relay precise information.
# The more information inputted, it should the same salinities across all of the
# plots, but more in depth by including the latitude and longitude.

# Relationships between continuous variables ------------------------------

# P7 Visualize the relationship between salinity and latitude by ocean basin.
ggplot(woa_sal, aes(x= salinity,
                    y= latitude,
                    color= ocean)) +
  geom_point()


# P8 Edit your figure from P7 to improve its interpretability in at least one of
# the following categories: visually differentiating the oceans, appropriateness
# of the labels, or use of negative space. Save this figure as “comm101p8.png”.
okabe_ito <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")
ggplot(woa_sal, aes(x= salinity,
                    y= latitude,
                    fill = ocean,
                    shape = ocean)) +
  geom_point(color ="grey80", stroke=0.01 ) +
  scale_fill_manual(values = okabe_ito) +
  scale_shape_manual(values = 21:25) +
  labs(x= "Salinity",
       y= "Latitude",
       color = "Ocean") +
  theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(0.01,0.5),
        legend.justification = c(0.01,0))
ggsave("comm101p8.png")
