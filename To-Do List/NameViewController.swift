//
//  NameViewController.swift
//  To-Do List
//
//  Created by Zoya Hussain on 7/21/21.
//

import UIKit

class NameViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! HomeViewController
        destinationVC.fullName = nameField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
