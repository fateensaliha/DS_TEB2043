string1 <- readline("Enter string 1: ")
string2 <- readline("Enter string 2: ")
are_similar <- toupper(string1) == toupper(string2)
cat("This program compare 2 strings. Both inputs are similar:", are_similar, "\n")