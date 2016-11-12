//
//  File.swift
//  iOS-Pokedex-App
//
//  Created by Stewart Dulaney on 10/17/16.
//  Copyright © 2016 Stewart Dulaney. All rights reserved.
//

import Foundation

class Pokemon {
    
    private var _name: String!
    private var _pokemonID: Int!
    private var _pokemonHeight: Int!
    private var _pokemonWeight: Int!
    private var _pokemonBaseExperience: Int!
    
    var name: String {
        return _name
    }
    var pokemonID: Int {
        return _pokemonID
    }
    var pokemonHeight: Int {
        return _pokemonHeight
    }
    var pokemonWeight: Int {
        return _pokemonWeight
    }
    var pokemonBaseExperience: Int {
        return _pokemonBaseExperience
    }
    
    init(name: String, pokemonID: Int, pokemonHeight: Int, pokemonWeight: Int, pokemonBaseExperience: Int){
        self._name = name
        self._pokemonID = pokemonID
        self._pokemonHeight = pokemonHeight
        self._pokemonWeight = pokemonWeight
        self._pokemonBaseExperience = pokemonBaseExperience
    }
    
}
