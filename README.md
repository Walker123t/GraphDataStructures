# Graph Data Structures
Represents pair-wise relationships between a set of objects
###  Two parts
* Vertex (Node)
* Edge (Arc)
 
### Two main categories
- Directed Graps: (u,v) != (v, u)
- Un-Directed Graph: (u,v) == (v, u)
 
###  Applications
- Social Network
	* Vertex - Person
	* Edge - Relationship
* Route Finding
	* Vertex - intersection
	* Edge - Distance
* Precedence Constraint
	* Certain things need to be followed in a certain order
 
##  How to represent a graph
###  Adjacency Matrix
 A graph with V amount of nodes in a VxV matrix
 
#### Pros
* Easy implementation
* Removing an edge takes O(1) time
* Checking for an edge is O(1) time
 
#### Cons
* Takes up O(N^2) space
* Adding vertex takes O(N^2) time
 
###  Adjacency List
 An array of linked lists. The length of the array is equal to the number of vertexes, and the number of entries on the linked lists are equal to the number of edges that vertex has
 
####  Pros
* Saves Space O(|V| + |E|)
* Adding a vertex is easier
 
####  Cons
* Checking for an edge is O(N)
