#load library
require(tidyverse)

#load data from the internet, using tabs to seperate and replacing -999, etc with NA's 
dat <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c("-999.00", "999.00", "-999", "999", "-999.0"))
#There is an extra NA value not included, -999.0

#your code goes here
ggplot(data = dat, aes(x = F_mass)) +
  labs(x = "Female Mass(g)") +
  geom_histogram()

ggplot(data = dat, aes(x = F_mass)) +
  scale_x_log10() +
  labs(x = "Female Mass(g)") +
  geom_histogram(fill = "blue")

ggplot(data = dat, aes(x = F_mass)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x = M_mass), alpha = 0.3) +
  scale_x_log10() +
  labs(x = "Mass(g)") 

ggplot(data = dat, aes(x = F_mass)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x = M_mass), alpha = 0.3) +
  scale_x_log10() +
  labs(x = "Mass(g)") +
  facet_wrap(~ Family)

ggplot(data = dat, aes(x = F_wing)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x = M_wing), alpha = 0.3) +
  scale_x_log10() +
  labs(x = "Wing Length") +
  facet_wrap(~ Family)
