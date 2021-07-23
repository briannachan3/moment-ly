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
    @IBOutlet weak var wellnessReminderLabel: UILabel!
    
    @IBAction func tiredClick(_ sender: UIButton) {
        wellnessReminderLabel.text = "Get at least 8 hours of sleep every day to function 💤. It's important to take Breaks every once in awhile ⏰. Reduce stress to boost your energy ⚡️"
    }
    @IBAction func anxiousClick(_ sender: UIButton) {
        wellnessReminderLabel.text = "Journal your feelings instead of bottling them up 📖. Take some time to meditate 🧘‍♀️. Stay active & spend some time Outside 🏃‍♀️."
    }
    
    @IBAction func angryClick(_ sender: UIButton) {
        wellnessReminderLabel.text = "Let yourself reflect on your day so far-- Introspection!! 🔎. Use humor to release tension (look @ memes of omar) 😝. Release steam in a healthy way (not stress eating) 💨."
    }
    @IBAction func sadClick(_ sender: UIButton) {
        wellnessReminderLabel.text = "Take some time to socialize 💓. Reconnect with nature; take a short walk outside 🌱. Listen to your favorite song or read a good book 🌸. "
    }
    
    @IBAction func happyClick(_ sender: UIButton) {
        wellnessReminderLabel.text = "Make sure to drink water and hydrate 💦. Set small, doable goals to keep yourself motivated 💪. Eat three balanced meals per day 🍙."
    }
    

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
