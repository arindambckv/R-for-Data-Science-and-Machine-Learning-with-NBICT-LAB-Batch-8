#data tpes in R
# 1. Numeric - integer / floating point
# 2. string - "arindam sarkar" / 'arindam sarkar'
# 3. logical

a = 11
b = 7.19
class(a)
class (b)

name = "arindam"
print(name)
class(name)

#if we do not want a numeric value to consider in calculation, we can put them in "". Then the numeric value wont come in the scene
c = "52"
print(c + 9)
print(a + 9)
class(c)

#logical data type - True, False (T, F)
print(a<b)
x = 19
y = 22.3
print(x --y)
print(y >-x)
print(x !=y)

# logical operator
# 1. && logical operator (AND operator)
4 -- 4 && 5 -- 5

# 2. || logical operator (OR operator)
x != y || x == y

# simple mathematical operators in R
z = 6 + 9 - 8 * 2 / 3
print(z)
z = 6 + 9 - 8 * (2 / 3)
print(z)
w = 4 + 3 - 3 * 2 / 3
print(w)

y = 4^2
print(y)
q = 4^3
print(q)
11/5
11 %% 5
11 %/% 5
