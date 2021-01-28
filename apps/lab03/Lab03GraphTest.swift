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



