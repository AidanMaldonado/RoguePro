//
//  ViewController.swift
//  Rogue
//
//  Created by Aidan Maldonado on 12/20/18.
//  Copyright © 2018 Aidan Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Game Var
    //8 Names Currently
    var characterNames = ["Gerard", "Alek", "Wayne", "Andre", "Lewis", "Cody", "Hugo", "Wesley"]
    var classes = ["Pyromananiac", "Nomad", "Junker", "Trooper"]
    //Class Stats
    var cycleSwitch = false
    var classesCycleValue = 1
    var generatedCharacters = false
    
    //Add var to check if character is dead to generate a new one
    //var isCharacterDead
    
    //Character One Vars
    var name = ""
    var health = 1
    var accuracy = 1
    var hunting = 1
    var level = 1
    var pickedClass = "Nomad"
    
    //Character Two Vars
    var name2 = ""
    var health2 = 1
    var accuracy2 = 1
    var hunting2 = 1
    var level2 = 1
    var pickedClass2 = "Nomad"
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "characterSegueIdentifier" {
            let destVC = segue.destination as! CharacterViewController
            destVC.name = name
            destVC.health = health
            destVC.accuracy = accuracy
            destVC.hunting = hunting
            destVC.level = level
            destVC.name2 = name2
            destVC.health2 = health2
            destVC.accuracy2 = accuracy2
            destVC.hunting2 = hunting2
            destVC.level2 = level2
            destVC.generatedCharacters = generatedCharacters
            destVC.pickedClass = pickedClass
            destVC.pickedClass2 = pickedClass2
            destVC.classesCycleValue = classesCycleValue
        } else if segue.identifier == "characterPickSegueIdentifier" {
            let destVC = segue.destination as! CharacterPickViewController
            destVC.name = name
            destVC.health = health
            destVC.accuracy = accuracy
            destVC.hunting = hunting
            destVC.level = level
            destVC.name2 = name2
            destVC.health2 = health2
            destVC.accuracy2 = accuracy2
            destVC.hunting2 = hunting2
            destVC.level2 = level2
            destVC.generatedCharacters = generatedCharacters
            destVC.pickedClass = pickedClass
            destVC.pickedClass2 = pickedClass2
            destVC.classesCycleValue = classesCycleValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateCharacterOnLoad()
    }
    
    func generateCharacterOnLoad() {
        if generatedCharacters == false {
            //Character One
            name = nameGenerator()
            pickedClass = classes[classesCycleValue]
            health = statGenerator()
            accuracy = statGenerator()
            hunting = statGenerator()
            //Character Two
            name2 = nameGenerator()
            pickedClass2 = classes[classesCycleValue]
            health2 = statGenerator()
            accuracy2 = statGenerator()
            hunting2 = statGenerator()
            generatedCharacters = true
        }
    }
    
    //Grabs a random name from the characterNames array
    func nameGenerator() -> String {
        let namesListValue = characterNames.count - 1
        
        let rand = Int.random(in: 0...namesListValue)
        
        return characterNames[rand]
    }
    
    //Generators all stats randomly
    func statGenerator() -> Int {
        let rand = Int.random(in: 1...9)
        
        return rand
    }
    
    
}

