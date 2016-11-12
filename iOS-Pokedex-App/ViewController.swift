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
    
    var pokemons = [Pokemon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PokemonTableView.dataSource = self
        PokemonTableView.delegate = self
        parse_csv()
    }
    
    func parse_csv(){
        let _file_path = Bundle.main.path(forResource: "pokemon", ofType: "csv")
        do {
            let _csv = try CSV(contentsOfURL: _file_path!)
            let _rows = _csv.rows
            print(_rows)
            for row in _rows {
                let _pokemonID = Int(row["id"]!)!
                let _pokemonHeight = Int(row["height"]!)!
                let _pokemonWeight = Int(row["weight"]!)!
                let _pokemonName = row["identifier"]!
                let _pokemonBaseExperience = Int(row["base_experience"]!)!
                let _pokemon = Pokemon(name: _pokemonName, pokemonID: _pokemonID, pokemonHeight: _pokemonHeight, pokemonWeight: _pokemonWeight, pokemonBaseExperience: _pokemonBaseExperience)
                pokemons.append(_pokemon)
            }
        }
        catch let _err as NSError {
            print(_err.debugDescription)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let _cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell {
            let _pokemon = pokemons[indexPath.row]
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
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let _pokemon = pokemons[indexPath.row]
        performSegue(withIdentifier: "showStats", sender: _pokemon)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showStats" {
            if let _statsViewController = segue.destination as? StatsViewController {
                if let _pokemon = sender as? Pokemon {
                    _statsViewController.pokemon = _pokemon
                }
            }
        }
    }
}
