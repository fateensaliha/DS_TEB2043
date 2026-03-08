#3.1 Creates a 3-dimensional array (3×3×2) by combining two vectors.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
result <- array(c(vector1,vector2), dim = c(3,3,2))
print(result)

#3.2 Similar to 3.1 but adds dimension names for rows, columns, and matrices, making the array more readable.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1", "COL2", "COL3")
row.names <- c("ROW1", "ROW2", "ROW3")
matrix.names <- c("Matrix1", "Matrix2")
result <- array(c(vector1,vector2), dim = c(3,3,2), dimnames = list(row.names, column.names, matrix.names))
print(result)

#3.3 This code demonstrates different ways to access elements in a 3-dimensional array
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = 
                  list(row.names,
                       column.names, matrix.names))
# Print the third row of the second matrix of the array.
print(result[3,,2])
# Print the element in the 1st row and 3rd column of the 1st matrix.
print(result[1,3,1])
# Print the 2nd Matrix.
print(result[,,2])

#3.4 This extracts the second column from each matrix in both arrays (creating matrices) and adds them element-wise.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
array1 <- array(c(vector1,vector2), dim = c(3,3,2))
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector1,vector2), dim = c(3,3,2))  # Note: uses vector1,vector2 not vector3,vector4
matrix1 <- array1[,2]  # Extracts all rows, column 2 from all matrices
matrix2 <- array2[,2]
result <- matrix1 + matrix2
print(result)

#3.5 The apply() function with margin = 1 calculates the sum across rows for all matrices.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
new.array <- array(c(vector1,vector2), dim = c(3,3,2))
print(new.array)
result <- apply(new.array, c(1), sum)
print(result)
