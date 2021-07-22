//
//  WellnessResourcesViewController.swift
//  To-Do List
//
//  Created by Zoya Hussain on 7/21/21.
//

import UIKit

class WellnessResourcesViewController: UIViewController {
    @IBOutlet weak var psychLink: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatepsychLink()
        

        // Do any additional setup after loading the view.
    }
    func updatepsychLink() {
        let path = "https://www.youtube.com/c/Psych2go"
        let text = psychLink.text ?? ""
        let attributedString = NSAttributedString.makeHyperLink(for: path, in: text, as: "Check out Psych2Go's Youtube Channel")
        let font = psychLink.font
        let textColor = psychLink.textColor
        psychLink.attributedText = attributedString
        psychLink.font = font
        psychLink.textColor = textColor
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
