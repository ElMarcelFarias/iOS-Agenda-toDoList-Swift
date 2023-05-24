//
//  TasksTableViewController.swift
//  agendaToDo
//
//  Created by Marcel Leite de Farias on 24/05/23.
//

import UIKit

let category = Category(name: "Studies", color: UIColor.red)

let tasks: [Task] = [
    Task(name: "Finalizar projeto de todo list da DIO", date: Date(), category: category),
    Task(name: "Estudar desenvolvimento mobile nativo por 4 horas amanhã", date: Date(), category: category)
]

class TasksTableViewController: UITableViewController {
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
        let task = tasks[indexPath.row]
        
        cell.hourLabel = task.date
    }
    

}
