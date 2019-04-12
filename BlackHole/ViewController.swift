//
//  ViewController.swift
//  BlackHole
//
//  Created by 春名卓哉 on 2019/04/12.
//  Copyright © 2019 Animation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView = UIImageView()
    var imageArray : Array<UIImage> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("読まれたぜ")
        self.view.backgroundColor = UIColor.black
        let startButton: UIButton = UIButton()
        let stopButton: UIButton = UIButton()
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        imageView.frame = CGRect(x: 0, y: (screenHeight/2)-100, width: screenWidth , height: 200)
        startButton.frame = CGRect(x: (screenWidth/2)-100, y: screenHeight-100, width: 100 , height: 50)
        stopButton.frame = CGRect(x: (screenWidth/2), y: screenHeight-100, width: 100 , height: 50)
        
        startButton.setTitle("開始", for: .normal)
        startButton.backgroundColor = UIColor.blue
        startButton.tintColor = UIColor.white
        startButton.addTarget(self, action: #selector(startAnimation(sendar:)), for: .touchUpInside)
        stopButton.setTitle("停止", for: .normal)
        stopButton.backgroundColor = UIColor.red
        stopButton.tintColor = UIColor.white
        stopButton.addTarget(self, action: #selector(stopAnimation(sendar:)), for: .touchUpInside)
        
         //画像連番作成
        while let image = UIImage(named: "blackhole\(imageArray.count+1)") {
            imageArray.append(image)
            print(image)
        }
       
        
        
        self.view.addSubview(imageView)
        self.view.addSubview(startButton)
        self.view.addSubview(stopButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        
    }
    
    
    @objc func startAnimation(sendar: UIButton){
        print("スタートが押されました")
        self.imageView.animationImages = imageArray
        // 1.5秒間隔
        self.imageView.animationDuration = 0.5
        // アニメーションを開始
        self.imageView.startAnimating()
        
    }
    
    @objc func stopAnimation(sendar: UIButton){
         print("ストップが押されました")
        // アニメーションを停止
        self.imageView.stopAnimating()
    }


}

