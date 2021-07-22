//
//  WellnessResourcesViewController.swift
//  To-Do List
//
//  Created by Zoya Hussain on 7/21/21.
//

import UIKit

class WellnessResourcesViewController: UIViewController {
    @IBOutlet weak var psychLink: UITextView!
    @IBOutlet weak var adhdLink: UITextView!
    
    @IBOutlet weak var generatedQuote: UILabel!
    

    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatepsychLink()
        updateadhdLink()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func generateQuote(_ sender: Any) {
        let array = ["Feelings come and go like clouds in a windy sky. Conscious breathing is my anchor. — Thich Nhat Hanh" , "Sometimes self care is exercise and eating right. Sometimes it’s spending time with loved ones or taking a nap. And sometimes it’s watching an entire season of TV in one weekend while you lounge around in your pajamas. Whatever soothes your soul. — Nanea Hoffman" , "Start listening to the way you talk to yourself. These interactions will tell you how well you know yourself, how much you respect yourself, and what boundaries you are lacking. — Sara Kuburic" , "You don’t have to control your thoughts. You just have to stop letting them control you.  — Dan Millman" , "I knew well enough that one could fracture one’s legs and arms and recover afterward, but I did not know that you could fracture the brain in your head and recover from that too. ― Vincent van Gogh" , "Change what you can, manage what you can’t. ― Raymond McCauley" , "What mental health needs is more sunlight, more candor, and more unashamed conversation. — Glenn Close" ]
        generatedQuote.text = array.randomElement()
    }
    
    
    
    
    func updatepsychLink() {
        let path = "https://www.youtube.com/c/Psych2go"
        let text = psychLink.text ?? ""
        let attributedString = NSAttributedString.makeHyperLink(for: path, in: text, as: "Check out Psych2Go's Youtube Channel")
        let font = psychLink.font
        let textColor = psychLink.textColor
        psychLink.attributedText = attributedString
        psychLink.textColor = textColor
        psychLink.font = font
    }
    
    func updateadhdLink() {
        let path = "https://chadd.org/adhd-news/adhd-news-caregivers/how-the-gender-gap-leaves-girls-and-women-undertreated-for-adhd/"
        let text = adhdLink.text ?? ""
        let attributedString = NSAttributedString.makeHyperLink(for: path, in: text, as: "Read about the Gender Gap and ADHD")
        let font = adhdLink.font
        let textColor = psychLink.textColor
        adhdLink.attributedText = attributedString
        adhdLink.textColor = textColor
        adhdLink.font = font
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
