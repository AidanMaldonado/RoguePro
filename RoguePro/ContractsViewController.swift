//
//  ContractsViewController.swift
//  Rogue
//
//  Created by Aidan Maldonado on 12/26/18.
//  Copyright © 2018 Aidan Maldonado. All rights reserved.
//

import UIKit

class ContractsViewController: UIViewController {
    
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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
