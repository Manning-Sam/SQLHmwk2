# Your task is to create the function divisible to check 
# if an integer number is divisible by both integers a and b.

# Examples:
# (-12, 2, -6)  ->  True
# (-12, 2, -5)  ->  False


def divisible(number, a, b):
    if  number % a == 0 and number % b == 0:
        return True
    else:
        return False

print(divisible(-12,2,-6))