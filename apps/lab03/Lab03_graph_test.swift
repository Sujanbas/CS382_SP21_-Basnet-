//Sujan basnet
//LabAsg03

import Foundation

public protocol Edge:  CustomStringConvertible {
var u : Int {get set }
var v : Int {get set }
var reversed : Edge {get }
}

protocol Graph : class , CustomStringConvertible {
associatedtype VertexType : Equatable
associatedtype EdgeType : Edge
var vertices : [ VertexType ] {get set }
var edges : [[ EdgeType ]] {get set }
}

extension Graph {
 /// How many vertices are in the graph ?
public var vertexCount : Int { return vertices . count }

/// How many edges are in the graph ?
 public var edgeCount : Int { return edges . joined () . count }
/// Get a vertex by its index .
/// - parameter index : The index of the vertex .
/// - returns : The vertex at i.
public func vertexAtIndex (_ index : Int ) -> VertexType {
return vertices [ index ]
}

/// Find the first occurrence of a vertex if it exists .
/// - parameter vertex : The vertex you are looking for .
/// - returns : The index of the vertex . Return nil if it can ’t find it.
public func indexOfVertex (_ vertex : VertexType ) -> Int ? {
if let i = vertices . firstIndex ( of : vertex ) {
return i
}
return nil
}
/// Find all of the neighbors of a vertex at a given index .
/// - parameter index : The index for the vertex to find the neighbors of.
/// - returns : An array of the neighbor vertices .
public func neighborsForIndex ( _ index : Int ) -> [ VertexType ] {
return edges [ index ]. map ({ self . vertices [ $0 . v ]})
}
/// Find all of the neighbors of a given Vertex .
/// - parameter vertex : The vertex to find the neighbors of.
/// - returns : An optional array of the neighbor vertices .
public func neighborsForVertex (_ vertex : VertexType ) -> [ VertexType ]? {
if let i = indexOfVertex ( vertex ) {
return neighborsForIndex ( i)
}
return nil
}
/// Find all of the edges of a vertex at a given index .
/// - parameter index : The index for the vertex to find the children of.
public func edgesForIndex (_ index : Int ) -> [ EdgeType ] {
return edges [ index ]
}
/// Find all of the edges of a given vertex .
/// - parameter vertex : The vertex to find the edges of.
 public func edgesForVertex (_ vertex : VertexType ) -> [ EdgeType ]? {
if let i = indexOfVertex ( vertex ) {
 return edgesForIndex (i )
}
 return nil
}
/// Add a vertex to the graph .
 /// - parameter v: The vertex to be added .
/// - returns : The index where the vertex was added .
public func addVertex (_ v: VertexType ) -> Int {
vertices . append (v )
 edges . append ([ EdgeType ]() )
return vertices . count - 1
 }
/// Add an edge to the graph .
/// - parameter e: The edge to add .
 public func addEdge ( _ e: EdgeType ) {
edges [e. u ]. append ( e)
 edges [e. v ]. append ( e. reversed as! EdgeType )
}
}


open class UnweightedEdge : Edge {
public var u: Int // " from " vertex
public var v: Int // "to" vertex
public var reversed : Edge {
return UnweightedEdge ( u: v , v : u )
}
 public init ( u: Int , v : Int ) {
self .u = u
self .v = v
}

// MARK : CustomStringConvertable
public var description : String {
return "\(u) <-> \(v)"
}
}


open class UnweightedGraph <V : Equatable >: Graph {
var vertices : [ V] = [V ]()
var edges : [[ UnweightedEdge ]] = [[ UnweightedEdge ]]() // adjacency lists
// Empty initializer
public init () {
}
// List initializer
public init ( vertices : [ V ]) {
for vertex in vertices {

_ = self . addVertex ( vertex )
 }
}
/// This is a convenience method that adds an unweighted edge .
///
/// - parameter from : The starting vertex ’s index .
/// - parameter to: The ending vertex ’s index .
public func addEdge ( from : Int , to : Int ) {
addEdge ( UnweightedEdge (u : from , v : to ) )
}
/// This is a convenience method that adds an unweighted , undirected
/// edge between the first occurrence of two vertices .
///
/// - parameter from : The starting vertex .
/// - parameter to: The ending vertex .
public func addEdge ( from : V , to : V) {
if let u = indexOfVertex ( from ) {
if let v = indexOfVertex ( to ) {
addEdge ( UnweightedEdge (u : u , v : v ))
}
}
}
/// MARK : Implement CustomStringConvertible
public var description : String {
var d: String = ""
for i in 0.. < vertices . count {
d += "\( vertices [i]) -> \( neighborsForIndex (i))\n"
}
return d
}
}

print ("Let ’s try building an unweighted graph ")
var cityGraph : UnweightedGraph < String >
= UnweightedGraph < String >( vertices : [" Seattle ", " San Francisco "," Los Angeles ",
" Riverside ", " Phoenix ", " Chicago ", " Boston ", " New York ", " Atlanta ", " Miami "
, " Dallas ", " Houston "," Detroit ", " Philadelphia ", " Washington "])

cityGraph . addEdge ( from : " Seattle ", to : " Chicago ")
cityGraph . addEdge ( from : " Seattle ", to : " San Francisco ")
cityGraph . addEdge ( from : "San Francisco ", to : " Riverside ")
cityGraph . addEdge ( from : "San Francisco ", to : " Los Angeles ")
cityGraph . addEdge ( from : "Los Angeles ", to : " Riverside ")
cityGraph . addEdge ( from : "Los Angeles ", to : " Phoenix ")
cityGraph . addEdge ( from : " Riverside ", to : " Phoenix ")

cityGraph . addEdge ( from : " Riverside ", to : " Chicago ")
cityGraph . addEdge ( from : " Phoenix ", to : " Dallas ")
cityGraph . addEdge ( from : " Phoenix ", to : " Houston ")
cityGraph . addEdge ( from : " Dallas ", to : " Chicago ")
cityGraph . addEdge ( from : " Dallas ", to : " Atlanta ")
cityGraph . addEdge ( from : " Dallas ", to : " Houston ")
cityGraph . addEdge ( from : " Houston ", to : " Atlanta ")
cityGraph . addEdge ( from : " Houston ", to : " Miami ")
cityGraph . addEdge ( from : " Atlanta ", to : " Chicago ")
cityGraph . addEdge ( from : " Atlanta ", to : " Washington ")
cityGraph . addEdge ( from : " Atlanta ", to : " Miami ")
cityGraph . addEdge ( from : " Miami ", to : " Washington ")
cityGraph . addEdge ( from : " Chicago ", to : " Detroit ")
cityGraph . addEdge ( from : " Detroit ", to : " Boston ")
cityGraph . addEdge ( from : " Detroit ", to : " Washington ")
cityGraph . addEdge ( from : " Detroit ", to : " New York ")
cityGraph . addEdge ( from : " Boston ", to : " New York ")
cityGraph . addEdge ( from : "New York ", to : " Philadelphia ")
cityGraph . addEdge ( from : " Philadelphia ", to : " Washington ")
print ( cityGraph )