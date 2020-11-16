# Discription:
# Creating a histogram of the log returns, adding the kernel density of the log returns
# and the normal density as reference distribution 
#
# Requirements: 
# ggplot requires a data frame
# 
# Output:
# Histogram Plot
# 


library(ggplot2)

Simulated_data <- data.frame(Simulated_data)

histgg <- ggplot(data = Simulated_data, aes(logreturns))

histgg + geom_histogram(aes(y = ..density..),fill = "lightblue",color = "black", alpha = 0.8, position = "identity") +
  geom_density(aes(color = "Kernel Density"), size = 1) +
  stat_function(aes(color = "Normal Distribution"), fun = dnorm, args = list(mean = mean(Simulated_data$logreturns), sd = sd(Simulated_data$logreturns)), size = 1) +
  ggtitle("Histogram") +
  theme(panel.grid = element_line(linetype = "dashed", color = "lightgrey"), panel.background = element_rect(fill = "white"),
        panel.border = element_rect(colour = "black", fill=NA),
        plot.title = element_text(hjust = 0.5)) +
  scale_colour_manual("Density", values = c("red", "darkgreen")) +
  xlab(" ")+
  ylab("Frequency") 
