//
//  ViewController.swift
//  MyAdventure
//
//  Created by Tyler Carter on 2/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    var storyPath = StoryLine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    @IBAction func choicePick(_ sender: Any) {
        storyPath.nextStory(userChoice: (sender as AnyObject).currentTitle!)
        updateUI()
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }
    
    @objc func updateUI() {
        
        Label.text = storyPath.storyTitle()
                button1.setTitle(storyPath.choiceTitle1(), for: .normal)
                button2.setTitle(storyPath.choiceTitle2(), for: .normal)
        
        
        
    }}

