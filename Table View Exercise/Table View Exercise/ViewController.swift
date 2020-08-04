//
//  ViewController.swift
//  Table View Exercise
//
//  Created by Akili London on 8/4/20.
//  Copyright © 2020 Akili London. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    let  movieChoices = ["Deep Blue Sea", "Kevin Hart: Laugh At My Pain", "Bratz" , "Soul Plane", "Burlesque", "Murder Mystery", "Bad Boys II", "Clueless", "Sextuplets", "6 Underground", "Naomi & Ely's No Kiss List" , "Bird Box", "13th", "Katt Williams: The Pimp Chronicles"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieChoices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycellID")
        cell?.textLabel?.text = movieChoices[indexPath.row]
       
        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   
    let selectedItem = movieChoices [indexPath.row]
    let alert = UIAlertController(title: "You have selected", message: "\(selectedItem)", preferredStyle:. alert)
    let okAction = UIAlertAction (title: "OK", style: .default, handler: { action -> Void in})
   
    alert.addAction(okAction)
    
    self.present(alert, animated: true, completion: nil)


    }

}
