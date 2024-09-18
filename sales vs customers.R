# Load necessary libraries
library(ggplot2)


# Load the dataset
df <- read.csv("C:/Users/minus/OneDrive/Desktop/retails/Rossmann Stores Data.csv")


# Linear Regression: Sales vs Customers

# Assuming 'Sales' is your target variable and 'Customers' is your predictor variable
X <- df$Sales
y <- df$Customers

# Create a linear regression model
model <- lm(y ~ X)

# Make predictions
df$y_pred <- predict(model)

# Plot the data points and the regression line using ggplot2
ggplot(df, aes(x = Sales, y = Customers)) +
  geom_point(color = 'blue', alpha = 0.5, label = 'Data Points') +   # Data points
  geom_line(aes(y = y_pred), color = 'red', label = 'Regression Line') + # Regression line
  labs(x = 'Sales', y = 'Customers', 
       title = 'Linear Regression: Sales vs Customers') +
  theme_minimal() +
  theme(legend.position = "bottom")

