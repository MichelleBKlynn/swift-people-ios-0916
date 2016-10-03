//
//  Person.swift
//  swift-people
//
//  Created by Michelle Staton on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Person {
    
    let name: String
    var ageInYears: Int?
    var skills: [String] = []
    
    var qualifiedTutor: Bool { return skills.count > 3 }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    init() {
        self.name = "John Doe"
        self.ageInYears = nil
        self.skills = []
    }
    
    func celebrateBirthday() -> String {
        var bdayMessage: String = ""
        
        if  ageInYears == nil {
            bdayMessage = "HAPPY BIRTHDAY, \(self.name.capitalized)!!!"
        } else {
            if ageInYears != nil {
                ageInYears! += 1
                bdayMessage = "HAPPY \(self.ageInYears!)TH BIRTHDAY, \(self.name.capitalized)!!!"
            }
        }
        
        return bdayMessage.uppercased()
    }
    
        func learnSkillBash() {
            if !self.skills.contains("bash") {
                self.skills.append("bash")
            }
        }
        
        func learnSkillXcode() {
            if !self.skills.contains("Xcode") {
                self.skills.append("Xcode")
            }
        }
        
        func learnSkillObjectiveC() {
            if !self.skills.contains("Objective-C") {
                self.skills.append("Objective-C")
            }
        }
        
        func learnSkillSwift() {
            if !self.skills.contains("Swift") {
                self.skills.append("Swift")
            }
        }
        
        func learnSkillInterfaceBuilder() {
            if !self.skills.contains("Interface Builder") {
                self.skills.append("Interface Builder")
            }
        }
        
        
}



