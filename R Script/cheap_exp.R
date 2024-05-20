# Visualization for the bar chart
# 1) Defining a color gradient from green to red
color_palette <- colorRampPalette(c("green", "red"))

# 2) Creating a Bar chart comparing average prices
ggplot(milan_combined, aes(x = reorder(neighbourhood, average_price), y = average_price, fill = average_price)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_gradient(low = "green", high = "red") +
  geom_text(aes(label = sprintf("$%.2f", average_price)), vjust = -0.5, size = 3.5, color = "black") +
  labs(title = "Average Prices in Cheapest and Most Expensive Neighborhoods",
       x = "Neighbourhood",
       y = "Average Price") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), plot.title = element_text(hjust = 0.5))
