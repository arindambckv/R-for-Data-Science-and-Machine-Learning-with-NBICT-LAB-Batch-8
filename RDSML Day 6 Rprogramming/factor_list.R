# Factors in R

# Summary of numeric items
participants_age = c(78, 25, 85, 68, 45, 48, 36)
summary(participants_age)

#finding summary of characters
profession = c("doctor", "teacher", "teacher", "businessman", "teacher")
summary(profession)

profession = factor(profession)
summary(profession)

#putting summary in order
birth_month = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
summary(birth_month)

birth_month_fact = factor(birth_month,
                          ordered = TRUE,
                          levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))

summary(birth_month_fact)

#list in R
# lists are used to place number of items in a bundle
a = c(2, 4, 7)
b = c("Red", "Green", "Blue")
c = "welcome"
my_list = list(a, b, c)
my_list

#naming the list items
my_list = list(Pieces = a, Colors = b, Message = c)
my_list

# Calling a specific data structure
my_list[1]
my_list[2]
my_list[3]
my_list["Colors"]
my_list$Pieces
my_list$Colors
my_list$Message

# calling specific items from the data structure
my_list$Colors[1]
my_list$Colors[2]
my_list$Colors[3]
my_list$Colors[5]
