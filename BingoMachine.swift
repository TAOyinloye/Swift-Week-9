import Foundation

class BingoMachine {
    
    private var tumbler = [Int]()
    private var board = Set<Int>()
    
    init() {
        for i in 1...90 {
            tumbler.append(i)
        }
    }
    
    func getNumber() -> Int {
        let randIndex = Int.random(in: 0..<tumbler.count)
        let number = tumbler.remove(at: randIndex)
        board.insert(number)
        return number
    }
    
    func check(number: Int) -> Bool {
        return board.contains(number)
    }
    

    func check<SequenceType: Sequence> (numbers: SequenceType) -> Bool where SequenceType.Element == Int {
        for number in numbers {
            if !check(number: number) {
                return false
            }
        }
        return true
    }
    
}
