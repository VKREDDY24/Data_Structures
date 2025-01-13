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


