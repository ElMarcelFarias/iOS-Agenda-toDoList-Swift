//
//  Task.swift
//  agendaToDo
//
//  Created by Marcel Leite de Farias on 24/05/23.
//

import Foundation
import UIKit

struct Task {
    var id = UUID()
    var name: String = ""
    var date: Date = Date()
    var category: Category = Category(name: "Marketing", color: .black)
}
