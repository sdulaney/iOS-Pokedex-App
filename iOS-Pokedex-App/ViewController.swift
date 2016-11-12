//
//  ViewController.swift
//  iOS-Pokedex-App
//
//  Created by Stewart Dulaney on 10/17/16.
//  Copyright © 2016 Stewart Dulaney. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var PokemonTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PokemonTableView.dataSource = self
        PokemonTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let _cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell {
            let _pokemon = Pokemon(name: "", pokemonID: indexPath.row+1, pokemonHeight: 0, pokemonWeight: 0, pokemonBaseExperience: 0)
            _cell.updateUI(pokemon: _pokemon)
            return _cell
        }
        else {
            return UITableViewCell()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 718
    }
}
