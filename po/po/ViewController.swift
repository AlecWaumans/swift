//
//  ViewController.swift
//  po
//
//  Created by Alec Waumans on 16/01/2024.
//

import UIKit

class ViewController: UIViewController {

    var surnoms = ["Mon chat", "Mon Coeur", "Mon ange", "Mon amour", "Petit panda roux"]
    var activities = ["Passe une bonne journée !", "Fais un beau voyage au pays des merveilles !", "Je t'aime ", "Tu me manques", "Fais de beau rêve !"]

    @IBOutlet weak var codeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeQuote(_ sender: Any) {
        // choisir en random dans le tb un surnoms
        let randomIndex1 = Int.random(in: 0..<surnoms.count)
        let randomSurnoms = surnoms[randomIndex1]
        // choisir ici une activité dans le tb des activité
        let randomIndex2 = Int.random(in: 0..<activities.count)
        let randomActivity = activities[randomIndex2]
        // Fusionner les deux et changer ainsi dans l'affichage
        let quote = randomActivity + " " + randomSurnoms
        codeLabel.text = quote
    }

}

