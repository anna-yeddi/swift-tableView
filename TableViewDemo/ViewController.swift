//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Anna Kanterova on 5/15/19.
//  Copyright © 2019 Anna Kanterova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var movieTitles = ["Fight Club", "Breakfast at Tiffany's", "Lord of the Rings", "Matrix"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    // 2 functions:
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        // the identifier from the cell at the Main.storyboard
        let movie = movieTitles[indexPath.row]
        cell.textLabel?.text = movie
        return cell
    }
}
