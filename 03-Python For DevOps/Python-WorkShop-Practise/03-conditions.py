day_of_the = input("Enter the day of week: ").lower()

if day_of_the == "sunday":
    print("Today is HOLIDAY!")

else:
    print("Today is WORKING DAY!")


num1 = int(input("Enter the first number: "))
num2 = int(input("Enter the second number: "))

choice = input("Enter your choice (Options +, -, *, /, %): ")

if choice == "+":
    sum = num1 + num2
    print("Addition is: ", sum)

elif choice == "-":
    diff = num1 - num2
    print("Subtraction is: ", diff)

elif choice == "*":
    prod = num1 * num2
    print("Multiplication is: ", prod)

elif choice == "/":
    div = num1 / num2
    print("Division is: ", div)

elif choice == "%":
    rem = num1 % num2
    print("Remainder is: ", rem)

else:
    print("Invalid Choice")