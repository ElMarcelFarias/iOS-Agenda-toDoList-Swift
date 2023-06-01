//
//  TasksTableViewController.swift
//  agendaToDo
//
//  Created by Marcel Leite de Farias on 24/05/23.
//

import UIKit



class TasksTableViewController: UITableViewController {
    
    private var dateFormatter: DateFormatter = DateFormatter()
    
    
    private var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tasks = TaskRepository.instance.getTasks()
        self.tableView.reloadData()
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
