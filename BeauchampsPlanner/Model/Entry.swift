//
//  Entry.swift
//  BeauchampsPlanner
//
//  Created by Dorothy Luetz on 12/14/23.
//

import Foundation

struct Entry: Identifiable {
    var id = UUID()
    var date: String
    var text: String
}
