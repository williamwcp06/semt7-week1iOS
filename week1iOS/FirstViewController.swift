//
//  FirstViewController.swift
//  week1iOS
//
//  Created by william on 9/2/17.
//  Copyright © 2017 william. All rights reserved.
//

import UIKit

var data:[(date: String, todo:String)] = []

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var toDoListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        toDoListTableView.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        toDoListTableView.reloadData()
//        toDoListTableView.isHidden = false
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return data.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = toDoListTableView.dequeueReusableCell(withIdentifier: "toDoList", for: indexPath) as! toDoListTableViewCell
        
        cell.toDoListLabel.text = data[indexPath.row].todo
        cell.dateLabel.text = data[indexPath.row].date
        
        if toDoListTableView.isHidden == true{
            toDoListTableView.isHidden = false
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detail", sender: indexPath)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dvc = segue.destination as! DetailViewController
        let selIndexPath = sender as! IndexPath
        let selData = data[selIndexPath.row]
        
        dvc.toDoData = selData.todo
        dvc.dateData = selData.date
        
    }

}



