//
//  TasksTableViewController.swift
//  agendaToDo
//
//  Created by Marcel Leite de Farias on 24/05/23.
//

import UIKit

let category = Category(name: "Studies", color: UIColor.red)
let categorySwift = Category(name: "Swift iOS", color: UIColor.orange)

let tasks: [Task] = [
    Task(name: "Finalizar projeto de todo list da DIO", date: Date(), category: category),
    Task(name: "Estudando Swift", date: Date(), category: categorySwift),
    Task(name: "Estudar desenvolvimento mobile nativo por 4 horas amanhã", date: Date(), category: categorySwift)
]

class TasksTableViewController: UITableViewController {
    
    private var dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Quantas linhas eu vou ter por sessão
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //ele vai ser chamado toda vez que tiver que chamar uma celula na tabela, método que bota os dados na celula
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        // pegando o index do array da celula pelo parametro indexPath.row
        let task = tasks[indexPath.row]
        
        // populando a celula e formatando as datas
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormatter.string(from: task.date)
        
        cell.categoryLabel.text = task.category.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskTextLabel.text = task.name
        
        return cell
        
    }
    

}
