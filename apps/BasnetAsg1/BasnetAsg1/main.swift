//
//  main.swift
//  Sujan basnet
//
//  Created by ASU Math CS MAC 3 on 1/20/21.
//

import Foundation

typealias OTPKey = [UInt8]
typealias OTPKeyPair = (key1: OTPKey, key2: OTPKey)

func randomOTPKey(length: Int) -> OTPKey {
    var randomKey: OTPKey = OTPKey()
    for _ in 0..<length {
        let randomKeyPoint = Int8(arc4random_unifrom(UInt32(UInt8.max)))
        randomKey.append(randomKeyPoint)
    }
    return randomKey
    }
