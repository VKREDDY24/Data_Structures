#creating a list
list_info <- list("Blue", "Yellow", c(12, 13, 14), TRUE, 13.12, 103.4)
print(list_info)

#Naming List Elements
#Creating  a list which contains a matrix and a vector
list_name <- list(matrix(c(1,2,3,4,5,6), nrow = 2), c("mon","tue","wed"))
#Naming elements in the list
names(list_name) <- c("Matrix", "half_week")
#displaying list
print(list_name)
#Merging Lists

#Creating lists
lista <- list(2,4,6)
listb <- list("Jan", "Feb", "Mar")
#Merging lists
merge_list <- c(lista, listb)
#output merged list
print(merge_list)
#Converting List to Vector

lista <- list(1:3)
listb <- list(4:6)
#Converting lists to vector
cva <- unlist(lista)
cvb <- unlist(listb)
print(cva)
print(cvb)

