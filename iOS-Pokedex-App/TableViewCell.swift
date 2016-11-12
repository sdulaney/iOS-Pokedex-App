//
//  TableViewCell.swift
//  iOS-Pokedex-App
//
//  Created by Stewart Dulaney on 11/12/16.
//  Copyright © 2016 Stewart Dulaney. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var PokemonImageView: UIImageView!
    @IBOutlet var PokemonLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(pokemon: Pokemon){
        PokemonImageView.image = UIImage(named: "\(pokemon.pokemonID)")
        PokemonLabel.text = pokemon.name
        
    }
}
