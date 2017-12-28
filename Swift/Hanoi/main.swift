//
//  Towers of Hanoi (main)
//

import Foundation


extension ClosedRange
{
    func clamp(_ value : Bound) -> Bound
    {
        return lowerBound < value ? value < upperBound ? value : upperBound : lowerBound
    }
}


func parse(_ argv: [String], default otherwise: Int, maximum limit : Int) -> Int
{
    return (1 ... limit).clamp({
        if let n = argv.count < 2 ? nil : Int(argv[1]) {
            return n
        } else {
            return otherwise
        }
    }())
}

Hanoi(discs: parse(CommandLine.arguments, default: 4, maximum: 15)).solve()
