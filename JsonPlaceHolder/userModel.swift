//
//  userModel.swift
//  JsonPlaceHolder
//
//  Created by PROG on 06/02/2021.
//

import SwiftUI

//struct User: Decodable, Identifiable {
//    var id : Int 
//    let username: String
//    let name: String
//}


// Element.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let element = try? newJSONDecoder().decode(Element.self, from: jsonData)

import Foundation

// MARK: - Element
struct User: Decodable,Identifiable {
    let id: Int
    let name, username, email: String
  //  let address: Address
    let phone, website: String
   // let company: Company
}

