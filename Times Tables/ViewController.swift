//
//  ViewController.swift
//  Times Tables
//
//  Created by Krish Furia on 12/24/15.
//  Copyright © 2015 Krish Furia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var sliderResultLabel: UILabel!
    
    @IBOutlet var sliderValue: UISlider!
    
    @IBOutlet var tableViewOutlet: UITableView!
    
    @IBAction func sliderMove(sender: AnyObject) {
        
        sliderResultLabel.text = "Selected table for : \(Int(sliderValue.value))"
        
        tableViewOutlet.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let tableFor = Int(sliderValue.value)
        
        cell.textLabel?.text = "\(tableFor) x \(indexPath.row + 1) = \(tableFor * (indexPath.row + 1))"
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
