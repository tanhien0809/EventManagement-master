//
//  EventManagementTableViewController.swift
//  EventManagement
//
//  Created by Hien on 4/27/17.
//  Copyright © 2017 Hien. All rights reserved.
//

import UIKit

class EventManagementTableViewController: UITableViewController {
        //Chuoi chua cac ngay trong tuan
        var day: [String] = ["Monday", "Tuesday", "Wesderday", "Thursday", "Friday", "Saturday", "Sunday"]
        //Ten cua cac su kien cac ngay trong tuan
        var Event_Monday: [String] = ["Event1", "Event2", "Event3"]
        var Event_Tuesday: [String] = ["Event1", "Event2", "Event3"]
        var Event_Wesderday: [String] = ["Event1", "Event2", "Event3"]
        var Event_Thurday: [String] = ["Event1", "Event2", "Event3"]
        var Event_Friday: [String] = ["Event1", "Event2", "Event3"]
        var Event_Saturday: [String] = ["Event1", "Event2", "Event3"]
        var Event_Sunday: [String] = ["Event1", "Event2", "Event3"]
        //Mo ta cac su kien
        var Des_Monday: [String] = ["Đi học", "Ăn trưa", "Ngủ"]
        var Des_Tuesday: [String] = ["Đi học", "Đá bóng", "Làm bài"]
        var Des_Wesderday: [String] = ["Description1", "Description2", "Description3"]
        var Des_Thurday: [String] = ["Description1", "Description2", "Description3"]
        var Des_Friday: [String] = ["Description1", "Description2", "Description3"]
        var Des_Saturday : [String] = ["Description1", "Description2", "Description3"]
        var Des_Sunday: [String] = ["Description1", "Description2", "Description3"]
        //Thong tin chi tiet cua su kien
        var Detail_Monday: [String] = ["Đi học tại trường ĐHSPKT", "Ăn cơm", "Ngủ lúc 2h am"]
        var Detail_Tuesday: [String] = ["Đi học tại trường ĐHSPKT", "Đá bóng tại SVĐ", "Làm bài tập"]
        var Detail_Wesderday: [String] = ["Detail1", "Detail2", "Detail3"]
        var Detail_Thurday: [String] = ["Detail1", "Detail2", "Detail3"]
        var Detail_Friday: [String] = ["Detail1", "Detail2", "Detail3"]
        var Detail_Saturday: [String] = ["Detail1", "Detail2", "Detail3"]
        var Detail_Sunday: [String] = ["Detail1", "Detail2", "Detail3"]
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false
            
            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            self.navigationItem.rightBarButtonItem = self.editButtonItem
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        // MARK: - Table view data source
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return day.count
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            if(section == 0) {
                return Event_Monday.count
            }
            if(section == 1) {
                return Event_Tuesday.count
            }
            if(section == 2) {
                return Event_Wesderday.count
            }
            if(section == 3) {
                return Event_Thurday.count
            }
            if(section == 4) {
                return Event_Friday.count
            }
            if(section == 5) {
                return Event_Saturday.count
            }
            if(section == 6) {
                return Event_Sunday.count
            }
            return 0
        }
    
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as! EventManagementTableViewCell
            
            cell.Name?.text = day[indexPath.item]
            
            
            // Configure the cell...
            // Gan cac su kien va mo ta su kien trong chuoi vao cac cell
            
            if (indexPath.section==0) {
                cell.Name?.text = Event_Monday[indexPath.row]
                cell.Description?.text = Des_Monday[indexPath.row]
            }
            if (indexPath.section==1) {
                cell.Name?.text = Event_Tuesday[indexPath.row]
                cell.Description?.text = Des_Tuesday[indexPath.row]
            }
            if (indexPath.section==2) {
                cell.Name?.text = Event_Wesderday[indexPath.row]
                cell.Description?.text = Des_Wesderday[indexPath.row]
            }
            if (indexPath.section==3) {
                cell.Name?.text = Event_Thurday[indexPath.row]
                cell.Description?.text = Des_Thurday[indexPath.row]
            }
            if (indexPath.section==4) {
                cell.Name?.text = Event_Friday[indexPath.row]
                cell.Description?.text = Des_Friday[indexPath.row]
            }
            if (indexPath.section==5) {
                cell.Name.text = Event_Saturday[indexPath.row]
                cell.Description?.text = Des_Saturday[indexPath.row]
            }
            if (indexPath.section==6) {
                cell.Name?.text = Event_Sunday[indexPath.row]
                cell.Description?.text = Des_Sunday[indexPath.row]
            }
            return cell
        }
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return day[section]
        }
        
        
        // Override to support conditional editing of the table view.
        override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
            // Return false if you do not want the specified item to be editable.
            return true
        }
        
        
        
        // Override to support editing the table view.
        override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                // Xoa cac su kien
                if (indexPath.section==0) {
                    Event_Monday.remove(at: indexPath.row)
                }
                if (indexPath.section==1) {
                    Event_Tuesday.remove(at: indexPath.row)
                }
                if (indexPath.section==2) {
                    Event_Wesderday.remove(at: indexPath.row)
                }
                if (indexPath.section==3) {
                    Event_Thurday.remove(at: indexPath.row)
                }
                if (indexPath.section==4) {
                    Event_Friday.remove(at: indexPath.row)
                }
                if (indexPath.section==5) {
                    Event_Saturday.remove(at: indexPath.row)
                }
                if (indexPath.section==6) {
                    Event_Sunday.remove(at: indexPath.row)
                }
                self.tableView.reloadData()
            }
            else if editingStyle == .insert {
                // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            }
        }
        
        var DayOfWeek = ""
        var NameOfEvent = ""
        var DescriptionOfEvent = ""
        var DetailOfEvent = ""
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            DayOfWeek = day[indexPath.section]
            if let cell = tableView.cellForRow(at: indexPath) as? EventManagementTableViewCell {
                NameOfEvent = cell.Name.text!
                DescriptionOfEvent = cell.Description.text!
                // Gan chi tiet su kien vao bien DetailOfEvent
            }
            if (indexPath.section==0) {
                DetailOfEvent = Detail_Monday[indexPath.row]
            }
            if (indexPath.section==1) {
                DetailOfEvent = Detail_Tuesday[indexPath.row]
            }
            if (indexPath.section==2) {
                DetailOfEvent = Detail_Wesderday[indexPath.row]
            }
            if (indexPath.section==3) {
                DetailOfEvent = Detail_Thurday[indexPath.row]
            }
            if (indexPath.section==4) {
                DetailOfEvent = Detail_Friday[indexPath.row]
            }
            if (indexPath.section==5) {
                DetailOfEvent = Detail_Saturday[indexPath.row]
            }
            if (indexPath.section==6) {
                DetailOfEvent = Detail_Sunday[indexPath.row]
            }
            performSegue(withIdentifier: "TableView", sender: self)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            //Do du lieu trong cac bien vao cac label khi ta chon de xem chi tiet mot su kien
            let destinationVC = segue.destination as! ViewController
            destinationVC.Day_Of_Week = DayOfWeek
            destinationVC.Name_Event = NameOfEvent
            destinationVC.Detail_Event = DetailOfEvent
        }
    // Override to support rearranging the table view.
    /*
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let eventLine = eventLines[fromIndexPath.section].events[fromIndexPath.row]
        
        eventLines[fromIndexPath.section].events.remove(at: fromIndexPath.row)
        
        eventLines[to.section].events.insert(eventLine, at: to.row)
        
    }
 */
    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
