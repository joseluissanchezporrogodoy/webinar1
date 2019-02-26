//
//  StatsViewController.swift
//  Webinar2
//
//  Created by jose luis sanchez-porro godoy on 26/02/2019.
//  Copyright © 2019 uax. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    var word:String = ""
    var vocalsStats: Int = 0
    var consonantStats: Int = 0
    
    let vocals = ["a","e","i","o","u"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        makeStats(inputString: word)
        print("El número de vocales es \(vocalsStats)")
        print("El número de consonantes es \(consonantStats)")
    }
    
    
    func makeStats(inputString: String) {
        
        for i:Int in 0..<inputString.count{
            let index = inputString.index(inputString.startIndex, offsetBy: i)
            if  vocals.contains(String(inputString[index])){
                vocalsStats += 1
            }else {
                consonantStats += 1
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
