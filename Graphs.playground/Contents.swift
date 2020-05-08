import Foundation
/**
 Graphs: Represents pair-wise relationships between a set of objects
 
 Two parts
 * Vertex (Node)
 * Edge (Arc)
 
 Two main categories
 - Directed Graps: (u,v) != (v, u)
 - Un-Directed Graph: (u,v) == (v, u)
 
 Applications
 - Social Network
 * Vertex - Person
 * Edge - Relationship
 - Route Finding
 * Vertex - intersection
 * Edge - Distance
 -Precedence Constraint
 *Certain things need to be followed in a certain order
 
 How to represent a graph
 
 - Adjacency Matrix
 A graph with V amount of nodes in a VxV matrix
 
 * Pros
 * Easy implementation
 * Removing an edge takes O(1) time
 * Checking for an edge is O(1) time
 
 * Cons
 * Takes up O(N^2) space
 * Adding vertex takes O(N^2) time
 
 - Adjacency List
 An array of linked lists. The length of the array is equal to the number of vertexes, and the number of entries on the linked lists are equal to the number of edges that vertex has
 
 * Pros
 * Saves Space O(|V| + |E|)
 * Adding a vertex is easier
 
 * Cons
 * Checking for an edge is O(N)
 */

//Adjacency Matrix

var adjMatrix = [[Int]]()

func addVertex(withEdgesTo edges: [Int]) {
    //Adding vertex
    adjMatrix.append(Array(repeating: 0, count: adjMatrix.count))
    for x in 0..<adjMatrix.count {
        adjMatrix[x].append(0)
    }
    for x in edges {
        addEdge(from: adjMatrix.count - 1, to: x)
    }
}

func addEdge(from x: Int, to y: Int) {
    adjMatrix[x][y] = 1
    adjMatrix[y][x] = 1
}

func removeEdge(from x: Int, to y: Int) {
    adjMatrix[x][y] = 0
    adjMatrix[y][x] = 0
}

func findEdge(from x: Int, to y: Int) -> Bool {
    return adjMatrix[x][y] == 1
}

func displayMatrix() {
    print("x| \(Array(0..<adjMatrix.count))")
    var rowToPrint: [Int] = []
    for x in 0..<adjMatrix.count {
        for y in 0..<adjMatrix.count {
            rowToPrint.append(adjMatrix[y][x])
        }
        print("\(x)| \(rowToPrint)")
        rowToPrint = []
    }
    print("<---------------------->")
}
displayMatrix()
// 0
addVertex(withEdgesTo: [])
displayMatrix()
// 1
addVertex(withEdgesTo: [0])
displayMatrix()
// 2
addVertex(withEdgesTo: [1])
displayMatrix()
// 3
addVertex(withEdgesTo: [0,2])
displayMatrix()
// 4
addVertex(withEdgesTo: [0,1,2,3])
displayMatrix()

removeEdge(from: 3, to: 0)
displayMatrix()


// Adjacency List
var adjList = [Set<Int>]()

func addVertex2(withRelations: [Int]) {
    adjList.append([])
    for x in withRelations {
        addEdge2(from: adjList.count - 1, to: x)
    }
}

func addEdge2(from x: Int, to y: Int) {
    adjList[x].insert(y)
    adjList[y].insert(x)
}

func removeEdge2(from x: Int, to y: Int) {
    adjList[x].remove(y)
    adjList[y].remove(x)
}

func findEdge2(from x: Int, to y: Int) -> Bool {
    adjList[x].contains(y)
}

func displayList() {
    for x in 0..<adjList.count {
        print("\(x)| \(adjList[x])")
    }
    print("<---------------------->")
}

displayList()
// 0
addVertex2(withRelations: [])
displayList()
// 1
addVertex2(withRelations: [0])
displayList()
// 2
addVertex2(withRelations: [1])
displayList()
// 3
addVertex2(withRelations: [0,2])
displayList()
// 4
addVertex2(withRelations: [0,1,2,3])
displayList()

removeEdge2(from: 3, to: 0)
displayList()
