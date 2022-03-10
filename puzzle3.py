#Given conditions have been given as input with some formatting: like: (147 one right but in wrong place means 1 doesnt lie in ones place so its placed in list-notzero; similarly 4 is placed in notone and 7 is placed in not two.)
# wrong is the list for the wrong numbers which are either given in question or are detected at starting steps of the program.

zero=[1]
one=[8]
two=[9]
notzero=[1,9,2]
notone=[4,6,8]
nottwo=[7,4,6]
wrong = [5,2,3]


def check_if_iswrong(X):
    if((X in zero and X in notzero) or (X in one and X in notone) or (X in two and X in nottwo)):
        wrong.append(X)

def check_if_not_defined(X):
    if(X not in set(zero+one+two+notzero+notone+nottwo)):
        wrong.append(X)

#checking any wrong numbers based on their position 
for i in range(10):
    check_if_iswrong(i)
    check_if_not_defined(i)

def is_at_zero(X):
    if((X not in wrong) and X not in notzero and X not in one and X not in two ):
        print(str(X)+" is in zero")
        return(X)
def is_at_one(X):
    if((X not in wrong) and X not in notone and X not in zero and X not in two ):
        print(str(X)+" is in one")
        return(X)
def is_at_two(X):
    if((X not in wrong) and X not in nottwo and X not in zero and X not in one ):
        print(str(X)+" is in two")
        return(X)
        
zero_position = []
one_position = []
two_position = []
for i in range(10):
    zero_position.append(is_at_zero(i))
    one_position.append(is_at_one(i))
    two_position.append(is_at_two(i))
print("Results:")
print("zero_position: "+ str(zero_position))
print("one_position"+ str(one_position))
print("two_position"+ str(two_position))