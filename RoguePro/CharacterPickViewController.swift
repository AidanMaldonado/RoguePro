//
//  CharacterPickViewController.swift
//  Rogue
//
//  Created by Aidan Maldonado on 12/26/18.
//  Copyright © 2018 Aidan Maldonado. All rights reserved.
//

import UIKit

class CharacterPickViewController: UIViewController {

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
    
    //Labels
    //Char 1
    @IBOutlet weak var nameLabelOne: UILabel!
    @IBOutlet weak var classButton: UIButton!
    @IBOutlet weak var healthLabelOne: UILabel!
    @IBOutlet weak var accurracyLabelOne: UILabel!
    @IBOutlet weak var huntingLabelOne: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var characterCycleLabel: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ContractsViewController
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabelsStart()
    }
    
    func updateLabelsStart() {
        nameLabelOne.text = name
        classButton.setTitle(pickedClass, for: .normal)
        healthLabelOne.text = "Health: " + String(health)
        accurracyLabelOne.text = "Acc: " + String(accuracy)
        huntingLabelOne.text = "Hunting: " + String(hunting)
        levelLabel.text = "Lvl: " + String(level)
    }
    
    func updateLabels() {
        if cycleSwitch == true {
            nameLabelOne.text = name
            classButton.setTitle(pickedClass, for: .normal)
            healthLabelOne.text = "Health: " + String(health)
            accurracyLabelOne.text = "Acc: " + String(accuracy)
            huntingLabelOne.text = "Hunting: " + String(hunting)
            levelLabel.text = "Lvl: " + String(level)
        } else if cycleSwitch == false {
            nameLabelOne.text = name2
            classButton.setTitle(pickedClass2, for: .normal)
            healthLabelOne.text = "Health: " + String(health2)
            accurracyLabelOne.text = "Acc: " + String(accuracy2)
            huntingLabelOne.text = "Hunting: " + String(hunting2)
            levelLabel.text = "Lvl: " + String(level2)
        }
    }
    
    
    //Cycles characters
    @IBAction func characterCycle() {
        if cycleSwitch == false {
            characterCycleLabel.setTitle("Character Two", for: .normal)
            updateLabels()
            cycleSwitch = true
        } else {
            characterCycleLabel.setTitle("Character One", for: .normal)
            updateLabels()
            cycleSwitch = false
        }
    }
    
    @IBAction func classCycle() {
        classesCycleValue += 1
        
        var currentCharacterClass = ""
        
        switch classesCycleValue {
        case 1:
            classButton.setTitle(classes[classesCycleValue], for: .normal)
            currentCharacterClass = classes[classesCycleValue]
        case 2:
            classButton.setTitle(classes[classesCycleValue], for: .normal)
            currentCharacterClass = classes[classesCycleValue]
        case 3:
            classButton.setTitle(classes[classesCycleValue], for: .normal)
            currentCharacterClass = classes[classesCycleValue]
            classesCycleValue = -1
        default:
            classButton.setTitle(classes[classesCycleValue], for: .normal)
            currentCharacterClass = classes[classesCycleValue]
        }
        
        //Determines which class was selected
        if cycleSwitch == false {
            pickedClass = currentCharacterClass
        } else {
            pickedClass2 = currentCharacterClass
        }
        
    }


}
