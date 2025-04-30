import time

#Function to make list sums easy
def listSum(listInput):
    x = 0
    for i in listInput:
        x+=i
    return x

def listFunc(a, b): #Function for making a list a-b
    return [i for i in range(a, (b+1))] #Square brackets turn all into a list! Also, b+1 is not including



def applicatorFunc(listParemter, charInput):
    if charInput == "s": #s for sum
        return (listSum(listParemter))
    elif charInput == "quit":
        time.sleep(0.5)
        print("quitting (in 2 secs)...")
        time.sleep(2)
        quit()
    else:
        return (listSum(listParemter)/5)

#MAIN
 #create two input variables and plug into a list
i1 = int(input("Enter a starting number: "))
i2 = int(input("Enter an ending number: "))
ourList = listFunc(i1, i2)

ourChar = input("Enter s for sum, anything else: ")

 #print result
print(applicatorFunc(ourList, ourChar))


