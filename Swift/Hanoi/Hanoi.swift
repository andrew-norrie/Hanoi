//
//  Towers of Hanoi
//

import Foundation


class Hanoi
{
    typealias Disc = Int

    class Tower
    {
        var stack : [Disc] = [];

        var count : Int { get { return stack.count }}

        func pull() -> Disc
        {
            guard stack.count > 0 else { abort() }

            return stack.removeLast()
        }

        func push(_ item : Disc)
        {
            guard stack.count == 0 || stack.last! > item else { abort() }

            stack.append(item)
        }

        func fill(_ n: Int)
        {
            guard stack.count == 0 else { abort() }

            for i in 0..<n {
                push(Disc(n - i))
            }
        }
    }

    func move(from src: Tower, to dst: Tower)
    {
        dst.push(src.pull())
    }

    let first = Tower()
    let final = Tower()
    let spare = Tower()

    let census : Int

    init(discs count: Int)
    {
        census = count;
        first.fill(count)
    }
}


// MARK: Solving


extension Hanoi
{
    func show()
    {
        print("first = \(first.stack)")
        print("spare = \(spare.stack)")
        print("final = \(final.stack)")
        print("-")
    }

    func solve()
    {
        guard first.count == census else { abort() }

        func solve(_ n: Int, from a: Tower, via b: Tower, to c: Tower)
        {
            if(n > 0) {
                solve(n-1, from: a, via: c, to: b)
                move(from: a, to: c)
                show();
                solve(n-1, from: b, via: a, to: c)
            }
        }

        show();
        solve(census, from: first, via: spare, to: final)
    }
}
