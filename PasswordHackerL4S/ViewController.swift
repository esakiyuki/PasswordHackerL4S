//
//  ViewController.swift
//  PasswordHackerL4S
//
//  Created by esaki yuki on 2020/09/06.
//  Copyright © 2020 esaki yuKki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    
    @IBOutlet var countlabel: UILabel!
    
    var password: Int = 1526

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start() {
        for i in 0...9999 {
            //countlabelにiに入ってる文字を表示
            countlabel.text = String(i)
            //処理を0.00005秒待機する
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.00005))
            //変数iの値が変数passwordと一緒だったら
            if i == password {
                //paswordの桁ごとの数字を入れる配列
                var digits = [Int]()
                for _ in 0...3 {
                    digits.append(password % 10)
                    password = password / 10
                }
                label1.text = String(digits[0])
                label2.text = String(digits[1])
                label3.text = String(digits[2])
                label4.text = String(digits[3])
                
                print("正解は \(i)です！")
            }
        }
    }
    
    @IBAction func reset() {
        password = 1526
        countlabel.text = "「START」を押して解析開始"
        label1.text = "0"
        label2.text = "0"
        label3.text = "0"
        label4.text = "0"
    }
    

}

