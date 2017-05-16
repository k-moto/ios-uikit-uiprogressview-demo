//
//  ViewController.swift
//  ios-uikit-uiprogressview-demo
//
//  Created by Kentaro on 2017/02/20.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        progressView.trackTintColor = UIColor.black
        progressView.progressTintColor = UIColor.red
    }
    
    @IBAction private func increaseProgress(_ sender: UIButton) {
        guard progressView.progress < 1.0 else {
            print("すでに100%です")
            return
        }
        // アニメーション付きでプログレスを25%ずつ増やす
        progressView.setProgress(progressView.progress + 0.25, animated: true)
    }
    
    @IBAction private func resetProgress(_ sender: UIButton) {
        // アニメーションなしでプログレスを0に戻す
        progressView.progress = 0.0
    }

}

