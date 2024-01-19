let number: Float = 4

print(number)

var Numbers: [Double] = [2, 5]

Numbers.append(2)

print(Numbers)

Numbers[1] = 2
Numbers.insert(1, at: 0)
print(Numbers)

Numbers.shuffle()
print(Numbers)

Numbers.sort(by: >)
print(Numbers)
