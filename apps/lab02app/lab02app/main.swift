//
//  main.swift
//  lab02app
//
//  Created by ASU Math CS MAC 3 on 1/20/21.
//

import Foundation



enum Nucleotide: Character, Comparable {
    case A="A", C="C", G="G", T="T"}
    


func  <(lhs: Nucleotide, rhs:Nucleotide) -> Bool {
    return lhs.rawValue < rhs.rawValue
    
}
 




typealias Codon = (Nucleotide, Nucleotide, Nucleotide)
typealias Gene = [Codon]

/*
func linearContains (_ array: Gene, item: Codon) -> Bool{
    for element in array where item == element{
        return true
    }
    return false
}
 comment
*/
 
func binaryContains(_ array: Gene, item: Codon) -> Bool {
 var low = 0
    var high = array.count - 1
    while low <= high {
        let mid = (low + high) / 2
        if array[mid] < item {
            low = mid + 1
        } else if array[mid] > item {
            high = mid - 1
        }else{
            return true
        }
    }
        return false
    }



func stringToGene (_ s:String) -> Gene {
    var gene = Gene()
    for i in stride(from: 0, to: s.count, by:3) {
        guard (i+2) < s.count else {return gene}
        
        if let n1 = Nucleotide.init(rawValue: s[s.index(s.startIndex, offsetBy: i)]),
           
        let n2 = Nucleotide.init(rawValue: s[s.index(s.startIndex, offsetBy: i + 1)]),
           
        let n3 = Nucleotide.init(rawValue: s[s.index(s.startIndex, offsetBy: i + 2)]) {
                    gene.append((n1,n2,n3))
                                     }
                                    
    }
    return gene
}
