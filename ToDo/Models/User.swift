//
//  UserModel.swift
//  ToDo
//
//  Created by Parker on 9/27/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
