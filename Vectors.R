#Vector Operations

#Create a variable
#Create a Vector
#add a new element to the vector
#Access the vector
#Access the two values from the same vector
# Delete a vector
#delete a value from the vector
#Check the length of the vector
# Replace a value in vector
# add two vectors
# create a dataframe using vectors
# create a list using vectors
# delete a value in vector
# Create a vector using multiple data type
#Check the type of the data structure
#convert the vector into list
# Create an another variable using a value from the vector
#Type conversion


value_1<-100
                
vector_ex<-c(2,3,4,5) #14

vector_ex[4]<-400

vector_ex

length(vector_ex)
class(vector_ex)

vector_ex[5]<-300

vector_ex[7]<-700

vector_ex[7]<-NA

class(vector_ex)

vector_ex[8]<-""
  
vector_ex<-vector_ex[-8]

vector_ex

vector_ex<-as.numeric(vector_ex)

is.numeric(vector_ex)

vector_list<-as.list(vector_ex)

class(vector_list)

vector_list

class(vector_ex)

length(vector_ex)

vector_ex<-vector_ex[8]<-""

vector_ex
class(vector_ex)

gh
class(gh)

#Vector index in R starts from 1, unlike most programming languages where the index starts from 0.


vector_ex[c(2,3)]<-100

vector_ex_13<-vector_ex[c(-2,-7)]  # delete the value from the 2nd position <-13

length(vector_ex_13)

length(vector_ex)

class(vector_ex)

vector_string<-c("anjana","R","Shiny")

class(vector_string)

mix_vector<-c(vector_ex,vector_string)

mix_vector

class(mix_vector)

single_string_vector<-c("R")
class(single_string_vector)
length(single_string_vector)

mix_vec_2<-c(vector_ex,single_string_vector)

mix_vec_2

class(mix_vec_2)


length(mix_vec_2)

string<-c("Shiny")
length(string)


nchar(mix_vec_2)

list_1<-list("R","Shiny",3,2,6.7)

list_1

length(list_1)

nchar(list_1)

list_vec<-list(vector_ex,vector_string)
list_vec

length(list_vec)

nchar(list_vec)


class(list_vec)

# access all but 1st element
vector_string[-1] 

# cannot mix positive and negative integers
vector_string[c(2, -4)]


#Using character vector as index
#This type of indexing is useful when dealing with named vectors. We can name each elements of a vector.

x <- c("first"=3, "second"=0, "third"=9)
names(x)
x["second"]

x <- c(-3,-2,-1,0,1,2)
# modify 2nd element
x[2] <- 0; x        
# modify elements less than 0
x[x<0] <- 5; x   
# truncate x to first 4 elements
x <- x[1:4]; x      


#How to delete a vector in R?
x <- c(-3,-2,-1,0,1,2)
x <- NULL
x
x[4] 

# repeat sequence of vector 2 times
numbers <- rep(c(2,4,6), times = 2)

cat("Using times argument:", numbers)


numbers <- c(1, 2, 3, 4, 5)

# iterate through each elements of numbers
for (number in numbers) {
  print(number)
}

#Arithmetic operations
a <- c(1, 3, 5, 7)    
b <- c(2, 4, 6, 8)    
# Perform and print the element-wise operations  
print(a + b)  # To perform addition  
print(a - b)  # To perform subtraction  

example_vector <- c(1,2,3)

#+ adds to each value in the vector
example_vector + 10
