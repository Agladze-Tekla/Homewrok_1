//
//  ViewController.swift
//  Factorial
//
//  Created by Tekla on 11/8/23.
//

import UIKit

final class ViewController: UIViewController {
    //MARK: - Properties
    let globalQueue = DispatchQueue.global()
    let group = DispatchGroup()
    private var factorialStringFirst: String?
    private var factorialStringSecond: String?
    private var firstFactorial: Decimal?
    private var secondFactorial: Decimal?
    
    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        findWinnerFactorialThreadAsync()
    }
    
    //MARK: - Private Methods
    private func generateRandomNumber(min: Int, max: Int) -> Int {
        let number = Int.random(in: 20...50)
        return number
    }
    
    private func findWinnerFactorialThreadAsync() {
        let firstNumber = generateRandomNumber(min: 20, max: 50)
        let secondNumber = generateRandomNumber(min: 20, max: 50)
        
        group.enter()

        globalQueue.async(group: group) { [self] in
            factorialStringFirst = calculateFactorial(firstNumber)
            print("The first number: \(firstNumber) | Factorial: \(factorialStringFirst)")
            firstFactorial = Decimal(string: factorialStringFirst ?? "0")
            group.leave()
            
        }

        globalQueue.async(group: group) { [self] in
            factorialStringSecond = calculateFactorial(secondNumber)
            print("The second number: \(secondNumber) | Factorial: \(factorialStringSecond)")
            secondFactorial = Decimal(string: factorialStringSecond ?? "0")
            
            group.leave()
        }

        group.notify(queue: globalQueue) { [self] in
            if firstFactorial! > secondFactorial! {
                print("The winner is the first thread.")
            } else if secondFactorial! > firstFactorial! {
                print("The winner is the second thread.")
            } else {
                print("The both thread are equal, it is a tie.")
            }
        }
    }
}

