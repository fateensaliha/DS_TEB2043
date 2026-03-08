#1.1 This code demonstrates converting a character vector to a factor
data <- c("East", "West", "East", "North", "North", "East", "West", "West", "West", "North")
print(data)
print(is.factor(data))
factor_data <- factor(data)
print(factor_data)
print(is.factor(factor_data))
length(factor_data)
#1.2 This code accesses the third element of the factor, which returns "East"
data <- factor(c("East", "West", "East", "North", "North", "East", "West", "West", "West", "North"))
data[3]
#1.3 This code attempts to assign "NorthWest" to the third element, but this will likely produce a warning or NA because "NorthWest" is not an existing level of the factor.
data <- factor(c("East", "West", "East", "North", "North", "East", "West", "West", "West", "North"))
data[3] <- "NorthWest"
#1.4 This code creates a factor with default alphabetical levels (East, North, West), then reorders the levels to a custom order (East, West, North).
data <- c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North")
factor_data <- factor(data)
print(factor_data)
new_order_data <- factor(factor_data, levels = c("East", "West", "North"))
print(new_order_data)
#1.5 The gl() function generates factor levels. This creates a factor with 3 levels, each repeated 4 times, resulting in a factor of length 12
v <- gl(3, 4, labels = c("Tampa", "Seattle", "Boston"))
print(v)