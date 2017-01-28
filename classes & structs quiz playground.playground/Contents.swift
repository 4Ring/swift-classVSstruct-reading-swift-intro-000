//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// QUESTION 1

// Given this class that represents a giant:

class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

// And this code that instantiates an instance of Giant:


let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

// Will these three lines of code run? If not, why not?

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"



// QUESTION 2

// Can you fix the class definition above so that it does work?



// QUESTION 3

// Take a look at this struct that represents an alien:
struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

// And this line of code that instantiates an Alien:

var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

// Will these three lines of code run? If so, why not?

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"



// QUESTION 4

// Can you change the declaration of bilbo so that the above three lines of code do work?



// QUESTION 5

// Consider this bit of code that uses the Giant class:

let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"

// What will the value of edgar.name be after those three lines of code are run? What will the value of jason.name be? Why?


// QUESTION 6

// Given this bit of code that uses the Alien struct:

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"

// What will the value of charles.homePlanet be after the above code run? What about the value of charlesFromJupiter.homePlanet? Why?

charles.homePlanet
charlesFromJupiter.homePlanet

// QUESTION 7

// Here's a struct that represents a bank account:

struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

// Does this code work? Why or why not?



// QUESTION 8

// Can you fix the BankAccount struct so it does work?


// QUESTION 9

// Given this bit of code (which incorporates any fixes you made in Question 8):

var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)

// What will the value of joeAccount.balance be after the above code runs? What about the value of joeOtherAccount.balance? Why?

joeAccount.balance
joeOtherAccount.balance



// QUESTION 10

// Here's a class that can track songs in a music library:

class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

// Given this bit of code that uses MusicLibrary:

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")

// After this code runs, what are the contents of library1.tracks? What about the contents of library2.tracks? WHY?

library1.tracks
library2.tracks
