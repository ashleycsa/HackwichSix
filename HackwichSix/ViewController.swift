//
//  ViewController.swift
//  HackwichSix
//
//  Created by Ashley Aurellano on 3/3/20.
//  Copyright © 2020 Ashley Aurellano. All rights reserved.
//

import UIKit

/*UITableViewDataSource relates to the actual data being shown in your table
 UITableViewDelegate deals more with the appearance and UI of the table.*/
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var myFriendsArray = ["Rachel", "Jaymie", "Kristi", "Tracy"]
    
    //Problem Set #1
    var myBucketList = ["New York", "Barcelona", "Japan"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

     //we create a cell and fill that cell with data from the myFriendsArray
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        let text = myBucketList[indexPath.row]
        cell?.textLabel?.text = text
        return cell!
     }
    
    //returns the amount of rows that corresponds to the number of items in your array.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myBucketList.count
     }
}

