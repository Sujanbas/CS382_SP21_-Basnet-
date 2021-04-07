//
//  FlickrAPI.swift
//  Photorama
//
//  Created by user191359 on 3/31/21.
//

import Foundation
enum EndPoint : String {
case interestingPhotos = " flickr . interestingness . getList "
    private static let baseURLString = " https :// api . flickr . com / services / rest "
    private static func flickrURL ( endPoint : EndPoint , parameters : [ String : String ]?) -> URL {
    var components = URLComponents ( string : baseURLString )!
    var queryItems = [ URLQueryItem ]()

    if let additionalParams = parameters {
    for ( key , value ) in additionalParams {
    let item = URLQueryItem ( name : key , value : value )
    queryItems . append ( item )
    }
     }
    components . queryItems = queryItems
        let baseParams = [
        " method ": endPoint . rawValue ,
        " format ": " json ",
        " nojsoncallback ": "1",
        " api_key ": apiKey
        ]
        
        for ( key , value ) in baseParams {
    let item = URLQueryItem ( name : key , value : value )
        queryItems . append ( item )
        }
        
    return components . url!
    }
    static var interestingPhotosURL : URL {
   return flickrURL ( endPoint : . interestingPhotos ,
   parameters : [" extras ": "url_z , date_taken "])
   }
    private static let apiKey = " a6d819499131071f158fd740860a5a88 "
    
   
    }

 
