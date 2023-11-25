//
//  BingoMachine.swift
//  BingoMachine
//
//  Created by Toyosi Oyinloye on 14/11/2023.
//

import Foundation
class BingoMachine {
    private var tumbler: [Int]
    var calledNumbers: [Int]
    init() {
        tumbler = [Int]()
        calledNumbers = [Int]()
        //populate the tumbler
        for i in 1...90 {
            tumbler.append(i)
        }
    }
    func getNumber() -> Int {
        let randomIndex = tumbler.indices.randomElement()
        let randomNumber = tumbler.remove(at: randomIndex!)
        calledNumbers.append(randomNumber)
        return randomNumber
    }
    func ballRemaining() -> Bool {
        return tumbler.count > 0
    }
    func hasCalled (number: Int) -> Bool {
        return calledNumbers.contains(number)
    }
}
