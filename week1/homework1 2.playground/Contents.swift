import UIKit
var row : Int = 1
var col : Int = 1
for row in 1 ... 9{
    for col in 1 ... row {
        print("\(col) * \(row) = \(row*col)",terminator : "  ")
    }
    print()
}

