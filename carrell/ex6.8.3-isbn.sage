K = GF(11)

a = -(1*1 + 2*2 + 3*3 + 4*8 + 5*3 + 6*2 + 9*4 + 10*4)
b = -(1*3 + 2*3 + 3*3 + 5*2 + 7*3 + 8*7 + 9*7 + 10*6)

A = matrix(K, [
    [7, 8],
    [4, 6]
])
x, y = A^-1 * vector(K, [a, b])
assert -a + 7*x + 8*y == 0
assert -b + 4*x + 6*y == 0
