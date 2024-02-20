# Arwa Hamed Alshanbari

## read file
my_data <- read.table("housetasks.txt")
my_data

# Q1. Compute chi-square test in R and discuss the tasks distribution
chisq_test = chisq.test(my_data)
print(chisq_test)

" The p-value is extremely small which is strong evidence to 
  reject the null hypothesis. 
  This means there is a relationship between the type of task and 
  the individuals responsible for those tasks.
  The large chi-square indicates a substantial discrepancy between the observed 
  and expected frequencies in the contingency table."

# Q2. Extract the observed and expected counts from the result of the test:
# Extract observed counts
observed_counts <- chisq_test$observed

# Print observed counts
print("Observed Counts:")
print(observed_counts)

# Extract expected counts
expected_counts <- chisq_test$expected

# Print expected counts
print("Expected Counts:")
print(expected_counts)

# Q3. Visualize the results with the suitable plot/s:
# Visualize the chi-square test results
barplot(observed_counts, beside = TRUE, col = terrain.colors(13), ylim = c(0, 250),
        legend = TRUE, args.legend = list(bty = 'n', x = 'topright', ncol = 4, cex = 0.7), 
        main = "House Tasks Distribution", xlab = "House Tasks", ylab = "Frequency")

barplot(expected_counts, beside = TRUE, col = terrain.colors(13), ylim = c(0, 250),
        legend = TRUE, args.legend = list(bty = 'n', x = 'topright', ncol = 4, cex = 0.7), 
        main = "House Tasks Distribution", xlab = "House Tasks", ylab = "Frequency")






