//
//  StatsViewController.swift
//  iOS-Pokedex-App
//
//  Created by Stewart Dulaney on 11/12/16.
//  Copyright © 2016 Stewart Dulaney. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {
    
    
    @IBOutlet weak var PokemonImageView: UIImageView!
    @IBOutlet weak var WeightLabel: UILabel!
    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var BaseExperienceLabel: UILabel!
    
    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()
        PokemonImageView.image = UIImage(named: "\(pokemon.pokemonID)")
        WeightLabel.text = "\(Double(pokemon.pokemonWeight) * 0.1) kg"
        HeightLabel.text = "\(Double(pokemon.pokemonHeight) * 0.1) m"
        BaseExperienceLabel.text = "\(Double(pokemon.pokemonBaseExperience)) xp"
    }

}
