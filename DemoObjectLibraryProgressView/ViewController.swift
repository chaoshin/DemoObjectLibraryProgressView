//
//  ViewController.swift
//  DemoObjectLibraryProgressView
//
//  Created by Chao Shin on 17/03/2018.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myProgress: UIProgressView!
    
    var progressTimer:Timer?    // 建立一個Timer變數
    var state:Float = 0.0   // 建立一個Float的變數，來儲存Progress的Value
    
    @objc func countingProgress(){  // 更新Progress View的function
        if state < 1.1 {
            myProgress.progress = state
            state += 0.1    // progress是0到1的範圍
        }else {
            progressTimer?.invalidate() // 更新結束結束Timer，不在更新
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        progressTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.countingProgress), userInfo: nil, repeats: true)   // Timer.scheduledTimer是計時的function、timeInterval是執行的時間間隔、target是目標、countingProgress是時間到執行的function、userInfo是傳遞參數用、repeats為是否重複
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

