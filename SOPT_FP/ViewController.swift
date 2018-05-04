//
//  ViewController.swift
//  SOPT_FP
//
//  Created by 이영준 on 2018. 5. 3..
//  Copyright © 2018년 이영준. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    // 0부터 500 까지 들어있는 문자열 배열에
    // 짝수의 합을 구하라
    
    var list : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...500 { list.append("\(i)")}
        
        var resultList : [Int] = []
        for i in list{
            let temp = Int(i)
            if(temp! % 2 == 0){
                resultList.append(temp!)
            }
        }
        
        var result = 0
        for i in resultList{
            result += i
        }
        
        print(result)
        
        
        
        let result2 =  list // iterable 객체에
            .map { Int($0) } // [String] -> [Int]
            .filter { $0! % 2 == 0 } // [Int] 짝수인 애들
            .reduce(0) { (result, num) -> Int in
                guard let num = num else{return 0}
                return result + num
        }
        
        print("test")
        print(result2)

    }
    
}

