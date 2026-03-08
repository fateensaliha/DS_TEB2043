#2.1 This demonstrates 3 ways to create matrices
# Elements arranged sequentially by row
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)

# Elements arranged sequentially by column
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)

# Define column and row names
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P)

#2.2 This shows matrix indexing using [row, column] notation.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P[1,3])  # Element at row 1, column 3
print(P[4,2])  # Element at row 4, column 2
print(P[2,])   # Entire 2nd row (note: code shows P[2,1] but should be P[2,])
print(P[,3])   # Entire 3rd column

#2.3 Matrices of the same dimensions can be added and subtracted element-wise. Each corresponding element is added or subtracted.
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
result_add <- matrix1 + matrix2
result_sub <- matrix1 - matrix2

#2.4 The * and / operators perform element-wise multiplication and division, not matrix multiplication 
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
result_mult <- matrix1 * matrix2
result_div <- matrix1 / matrix2