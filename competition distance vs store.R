# Load necessary libraries
library(ggplot2)

# Load dataset
df <- read.csv("C:/Users/minus/OneDrive/Desktop/retails/store.csv")

# Replace NA values in CompetitionDistance with 0
df$CompetitionDistance[is.na(df$CompetitionDistance)] <- 0

# Define predictor (X) and target variable (y)
X <- df$CompetitionDistance
y <- df$Store

# Create a linear regression model
model <- lm(y ~ X)

# Make predictions
df$y_pred <- predict(model)

# Plot the data points and the regression line using ggplot2
ggplot(df, aes(x = CompetitionDistance, y = Store)) +
  geom_point(color = 'blue', alpha = 0.5) +  # Data points
  geom_smooth(method = "lm", color = 'red') + # Regression line
  labs(x = 'Competition Distance', y = 'Store', 
       title = 'Linear Regression: Competition Distance vs Store') +
  theme_minimal()
