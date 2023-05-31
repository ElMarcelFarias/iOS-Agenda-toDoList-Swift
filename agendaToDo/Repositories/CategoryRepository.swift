//
//  CategoryRepository.swift
//  agendaToDo
//
//  Created by Marcel Leite de Farias on 31/05/23.
//

import Foundation
import UIKit

class CategoryRepository {
    
    static func getCategories() -> [Category] {
        let categories = [
            Category(name: "Work", color: UIColor.green),
            Category(name: "Study", color: UIColor.brown),
            Category(name: "To Do", color: UIColor.blue),
            Category(name: "Reminders", color: UIColor.red)
        ]
        
        return categories   
    }
    
}
