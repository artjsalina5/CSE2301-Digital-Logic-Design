# Base case
def convertToTernary(N):
    if N == 0:
        return

    # Finding the remainder
    # when N is divided by 3
    x = N % 3
    N //= 3
    if x < 0:
        N += 1

    # Recursive function to
    # call the function for
    # the integer division
    # of the value N/3
    convertToTernary(N)

    # Handling the negative cases
    if x < 0:
        print(x + (3 * -1), end="")
    else:
        print(x, end="")


# Function to convert the
# decimal to ternary
def convert(Decimal):

    print("Ternary number of ", Decimal, " is: ", end="")

    # If the number is greater
    # than 0, compute the
    # ternary representation
    # of the number
    if Decimal != 0:
        convertToTernary(Decimal)
    else:
        print("0", end="")


# Driver Code
if __name__ == "__main__":
    Decimal = 4444.3
    convert(Decimal)

# This code is contributed by Rajput-Ji
