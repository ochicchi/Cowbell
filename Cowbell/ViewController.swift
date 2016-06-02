//
//  ViewController.swift
//  Cowbell
//
//  Created by 大口 聡 on 2015/08/29.
//  Copyright (c) 2015年 *. All rights reserved.
//

import UIKit
// AVFoundation フレームワークをインポートする。
import AVFoundation

class ViewController: UIViewController {

    // 音声を制御するための変数 player
    var player:AVAudioPlayer?
    
    @IBAction func play(sender: AnyObject) {
        // サウンドファイルを読み込む
        // let soundPath = NSBundle.mainBundle().bundlePath.stringByAppendingPathComponent("cowbell.mp3")
        // 読み込んだファイルにパスを付ける
        // let url:NSURL? = NSURL.fileURLWithPath(soundPath)
        // Playerに読み込んだmp3ファイルへのパスを設定する
        // player = AVAudioPlayer(contentsOfURL:url, error:nil)
    
        // 
        let url = NSBundle.mainBundle().bundleURL.URLByAppendingPathComponent("cowbell.mp3")
        do {
            try player = AVAudioPlayer(contentsOfURL: url)
        } catch {
            print("Error!")
        }
        // 音を再生する
        player?.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

