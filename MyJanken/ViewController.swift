//
//  ViewController.swift
//  MyJanken
//
//  Created by Kanako Kobayashi on 2017/05/13.
//  Copyright © 2017年 Swift-Beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBOutlet weak var answerImageView: UIImageView!
  
  @IBOutlet weak var answerLavel: UILabel!

  // じゃんけん
  var answerNumber:UInt32 = 0

  @IBAction func shuffleAction(_ sender: Any) {

    // じゃんけん
    var newAnswerNumber:UInt32 = 0

    repeat {
      // 0,1,2の数値をランダムに算出（乱数）
      newAnswerNumber = arc4random_uniform(3)

    } while answerNumber == newAnswerNumber
    
    //　新しいじゃんけんの結果を格納
    answerNumber = newAnswerNumber
    
    if answerNumber == 0 {
      // グー
      answerLavel.text = "グー"
      answerImageView.image = UIImage(named: "gu")
    } else if answerNumber == 1 {
      // チョキ
      answerLavel.text = "チョキ"
      answerImageView.image = UIImage(named: "choki")
    } else if answerNumber == 2 {
      // パー
      answerLavel.text = "パー"
      answerImageView.image = UIImage(named: "pa")
    }
    
  }
  
  
}

