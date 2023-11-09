//
//  FactorialCalculator.swift
//  Factorial
//
//  Created by Tekla on 11/8/23.
//

import Foundation
//Got this code from stackOverflow (Didn't just use it without understanding, the code is clear, anything over 20 would be too high to be calculated, so we made a map of each multiplication digit and then combined them into a string in reverse order to get the factorial).
func carryAll(_ arr: [Int]) -> [Int] {
    var result = [Int]()
    var carry = 0
    for val in arr.reversed() {
        let total = val + carry
        let digit = total % 10
        carry = total / 10
        result.append(digit)
    }
    while carry > 0 {
        let digit = carry % 10
        carry = carry / 10
        result.append(digit)
    }
    return result.reversed()
}

func calculateFactorial(_ n: Int) -> String {
    var result = [1]
    for i in 2...n {
        result = result.map { $0 * i }
        result = carryAll(result)
    }
    return result.map(String.init).joined()
}
