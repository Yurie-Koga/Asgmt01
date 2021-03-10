//
//  Recursion.swift
//  Evaluate
//
//  Created by Uji Saori on 2021-03-10.
//

import Foundation

func evaluate(_ input: String) -> Int {
    if input.count == 1 { return Int(String(input))! }
    
    if input.first == "(" && input.last == ")" {
        return evaluate(input[1, input.count - 1])
    } else {
        if let first = Int(input[0, 1]) {
            let next = input[1, 2]
            let remain = input[2, input.count]
            switch next {
            case "+":
                return first + evaluate(remain)
            case "-":
                return first - evaluate(remain)
            case "*":
                return first * evaluate(remain)
            case "/":
                return first / evaluate(remain)
            default:
                return evaluate(remain)
            }
        }
        
        else { return 0 }
    }
}
