import Foundation

/*2.3.29. Dadas las matrices A + B
*/
var a = [[2,0,1],[3,0,0],[5,1,1]]
var b = [[1,0,1],[1,2,1],[1,1,0]]
var c:[[Int]]
c = [[0,0,0],[0,0,0],[0,0,0]]
//A) Calcular a + b
for x in 0...2 {
    for y in 0...2 {
        c[x][y] = a[x][y] + b[x][y]
    }
}
print(c)

//B) Calcular a - b
for x in 0...2 {
    for y in 0...2 {
        c[x][y] = a[x][y] - b[x][y]
    }
}
print(c)

c = [[0,0,0],[0,0,0],[0,0,0]]
//C) Calcular a * b
for x in 0...2 {
    for y in 0...2 {
        
        for z in 0...2 {
            c[x][y] =  c[x][y] + (a[x][z] * b[z][y] )
        }
       
    }
}
print(c)


