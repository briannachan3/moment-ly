//
//  TimerViewController.swift
//  To-Do List
//
//  Created by  Scholar on 7/22/21.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var time = 0
    var timer = Timer()
    
    @IBAction func start(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func reset(_ sender: Any) {
        timer.invalidate()
        time = 0
        label.text = ("0")
    }
    
    @objc func action() {
        time += 1
        label.text = String(time)
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
