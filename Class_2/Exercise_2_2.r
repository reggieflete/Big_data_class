# Create a vector of grades
grades <- c(78, 56, 89, 65, 94, 82)

# Create a matrix with 2 rows and 3 columns, filled by row
grades.matrix <- matrix(grades, nrow = 2, ncol = 3, byrow = TRUE)

# View the raw matrix
grades.matrix

# Add row names (students)
rownames(grades.matrix) <- c("John Doe", "Jane Doe")

# Add column names (tests)
colnames(grades.matrix) <- c("Quiz", "Midterm", "Final")

# View the labeled matrix
grades.matrix