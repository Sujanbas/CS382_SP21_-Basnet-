import Foundation

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