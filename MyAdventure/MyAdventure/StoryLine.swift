//
//  StoryLine.swift
//  MyAdventure
//
//  Created by Tyler Carter on 2/12/23.
//

import Foundation

struct StoryLine {
    
    let story = [
        Story(
            title: "Hello New User, Welcome to a new simulation project that you have been invited to participate in. My name is Digital Dave but you can just call me Dave. For now I will ask a set of question before we throw you in the simulation. Are you Ready?",
            choice1: "Yes!", choice1Destination: 1,
            choice2: "no....", choice2Destination: 2
        ),
        Story(
            title: "Great! With this new simulation that we are creating we hope to change everyday life. To continue I will need some of your personal information such as height, weight, age, adress, and social status, social media info, banking information, etc.",
            choice1: "Sure! (Inputs personal information)", choice1Destination: 3,
            choice2: "ugh... isnt that alot to ask out of us?", choice2Destination: 4
        ),
        Story(
            title: "Hmmm are you not User8923?",
            choice1: "Yes", choice1Destination: 5,
            choice2: "Close App and delete", choice2Destination: 6
        ),
        Story(
            title: "(After giving all you information to Dave, your information was used to steal your identify to get into your social media and banking information. Losing everything you own. - Identy Stolen Ending) Press button to try again.",
            choice1: "Press Here", choice1Destination: 0,
            choice2: "Press Here", choice2Destination: 0
        ),
        Story(
            title: "(After making you choice you phone goes blank and all your information that wa inside the phone was taken. -Hacked ending) Press button to try again",
            choice1: "Press Here", choice1Destination: 0,
            choice2: "Press Here", choice2Destination: 0
        ),
        Story(
            title: "(After confiming you are the user the AI Dave got confused and crash - User Broke AI ending) Press button to try again",
            choice1: "Press Here", choice1Destination: 0,
            choice2: "Press Here", choice2Destination: 0
        ),
        Story(
            title: "(You closed the app and deleted it. Few days later you heard on the new that people information was being stolen by said app. - Good Ending) Press button to try again.",
            choice1: "Press Here", choice1Destination: 0,
            choice2: "Press Here", choice2Destination: 0
        ),
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = story[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = story[storyNumber].choice1Destination
        } else {
            storyNumber = story[storyNumber].choice2Destination
        }
        
    }
    
    func storyTitle() -> String {
        
        return story[storyNumber].title
        
    }
    
    func choiceTitle1() -> String {
        
        return story[storyNumber].choice1
        
    }
    
    func choiceTitle2() -> String {
        
        return story[storyNumber].choice2
        
    }
}
