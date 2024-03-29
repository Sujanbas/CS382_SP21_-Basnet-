//
//  PhotoStore.swift
//  Photorama
//
//  Created by user191359 on 3/31/21.
//

import Foundation
private let session : URLSession = {
let config = URLSessionConfiguration . default
    return URLSession ( configuration : config )
   



var store : PhotoStore!
    func fetchInterestingPhotos () {
     let url = FlickrAPI . interestingPhotosURL
    let request = URLRequest ( url : url )
    let task = session . dataTask ( with : request ) {
    ( data , response , error ) in
    
    if let jsonData = data {
    if let jsonString = String ( data : jsonData ,
    encoding : . utf8 ) {
     print ( jsonString )
    }
    } else if let requestError = error{
        print (" Error fetching interesting photos : \( requestError )")
    }
    else {
    print (" Unexpected error with the request ")
     }
    }
    task . resume ()
    }
}()

