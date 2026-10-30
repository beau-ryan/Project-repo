# test program from PDF A practical Gudie to Python Programming
# 
# variable & function
# # first program

# uncomment to test below
# 1. Find the temp in fahrenheit.

# temp = eval(input('Enter a temperature: '))
# print('in Fahrenheit, that is', 9/5*temp+32)

# 2.
#  second program 
num1 = eval(input('enter the first number: '))
num2 = eval(input('enter the second number: '))
num3 = eval(input('enter the third number: '))
print('The average of the numbers you entered is', (num1+num2+num3) / 3)

name = input('Enter Name:\n')
print('Hello', name)

# 3. find the temperature in fahrenheit

temp = eval(input('Enter a temp in celsius: '))

f_temp = 9/5*temp+32

print('In fahrenheit', 'that is', f_temp)
if f_temp > 212:
    print('that temperature is above the boiling point. ')
if f_temp < 32:
    print ('that temp is below the below the freezing. ')

# x = 3
# y = 4
# z = x+y
# x = y 
# y = 5

for i in range(5):
    print('Hello\n')

for i in range(3):
    num = eval(input('Enter a number: '))
   

    print('The sqaure of your number is', num/4.80) # find the square root--this is approximate, actual of 23 is 4.79583152
print('loop done ')
