//
//  HomeViewController.swift
//  To-Do List
//
//  Created by Zoya Hussain on 7/22/21.
//

import UIKit

class HomeViewController: UIViewController {
    var fullName : String?
    @IBOutlet weak var helloName: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if let newName = fullName {
            helloName.text = "Hello \(newName)" ?? "Hello!"
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
