//
//  TaskManager.swift
//  TaskList
//
//  Created by Rohan Venapusala on 3/7/15.
//  Copyright (c) 2015 Rohan. All rights reserved.
//

import UIKit

// instantiate an instance of task manager so we can user it all across our app
var taskMgr: TaskManager = TaskManager()


//base obejct we create our class from
struct task{
    var name = "unnamed"
    var desc = "undescribed"
}


class TaskManager: NSObject {

    // initialize an empty array calls "tasks"
    var tasks = [task]()
    
    //create a function to add tasks into my empty array of tasks
    func addTask(name: String, desc: String){        
        tasks.append(task(name: name, desc: desc))
        
    }
    
}
