//
//  FirstViewController.swift
//  TaskList
//
//  Created by Rohan Venapusala on 3/7/15.
//  Copyright (c) 2015 Rohan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet var tblTaks: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //returning to view
    override func viewWillAppear(animated: Bool) {
        //will update the data in the tasks array
        tblTaks.reloadData()
    }
    
    //UI Table view delegate 
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTaks.reloadData()
            
            println("Delete this row")
            println(indexPath)
        }
        
    }
    
    
    //UI Table view data source
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return taskMgr.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        var resultsDisplayLabel : UILabel!
        
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        
        
        return cell
        
    }


}

