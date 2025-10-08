def isReplica(palavra, num, letra):
    return (palavra == num*letra)



print(isReplica("ee", 2, "e"))
print(isReplica("uruu", 3, "u"))
print(isReplica("xxx", 3, "y"))

'''
Case: 1
Input
ee
2
e
Output
True

Case: 2
Input
uruu
3
u
Output
False

Case: 3
Input
xxx
3
y
Output
False '''