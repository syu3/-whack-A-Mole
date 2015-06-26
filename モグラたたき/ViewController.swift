//
//  ViewController.swift
//  モグラたたき
//
//  Created by 加藤健一 on 2015/06/24.
//  Copyright (c) 2015年 加藤健一. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController,AVAudioPlayerDelegate {
    var array01 : Array<Int> = [0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0]
    
    
    @IBOutlet var mogu1 : UIButton!
    @IBOutlet var mogu2 : UIButton!
    @IBOutlet var mogu3 : UIButton!
    @IBOutlet var mogu4 : UIButton!
    @IBOutlet var mogu5 : UIButton!
    @IBOutlet var mogu6 : UIButton!
    @IBOutlet var mogu7 : UIButton!
    @IBOutlet var mogu8 : UIButton!
    @IBOutlet var mogu9 : UIButton!
    @IBOutlet var startButton : UIButton!
    @IBOutlet var startButtonBack : UIImageView!
    @IBOutlet var finishLabel : UILabel!
    @IBOutlet var scoreLabel : UILabel!
    var timer1 : NSTimer!
    var timer2 : NSTimer!
    var timer3 : NSTimer!
    var timer4 : NSTimer!
    var timer5 : NSTimer!
    var timer6 : NSTimer!
    var timer7 : NSTimer!
    var timer8 : NSTimer!
    var timer9 : NSTimer!
    var stopTimer : NSTimer!
    var musicTimer : NSTimer!
    var number = 20
    var score = 0
    var buttonNumber = -1
    var arN = -1
    
    var myAudioPlayer1 : AVAudioPlayer!
    var myAudioPlayer2 : AVAudioPlayer!
    var myAudioPlayer3 : AVAudioPlayer!
    var myAudioPlayer4 : AVAudioPlayer!
    var myAudioPlayer5 : AVAudioPlayer!
    var myAudioPlayer6 : AVAudioPlayer!
    var myAudioPlayer7 : AVAudioPlayer!
    var myAudioPlayer8 : AVAudioPlayer!
    var myAudioPlayer9 : AVAudioPlayer!
    var myAudioPlayer10 : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //再生する音源のURLを生成.
        var soundFilePath1 : NSString = NSBundle.mainBundle().pathForResource("dog1b", ofType: "mp3")!
        var fileURL1 : NSURL = NSURL(fileURLWithPath: soundFilePath1 as String)!
        myAudioPlayer1 = AVAudioPlayer(contentsOfURL: fileURL1, error: nil)
        
        var soundFilePath2 : NSString = NSBundle.mainBundle().pathForResource("cat1b", ofType: "mp3")!
        var fileURL2 : NSURL = NSURL(fileURLWithPath: soundFilePath2 as String)!
        myAudioPlayer2 = AVAudioPlayer(contentsOfURL: fileURL2, error: nil)
        
        var soundFilePath3 : NSString = NSBundle.mainBundle().pathForResource("cat3b", ofType: "mp3")!
        var fileURL3 : NSURL = NSURL(fileURLWithPath: soundFilePath3 as String)!
        myAudioPlayer3 = AVAudioPlayer(contentsOfURL: fileURL3, error: nil)
        
        var soundFilePath4 : NSString = NSBundle.mainBundle().pathForResource("cat1b", ofType: "mp3")!
        var fileURL4 : NSURL = NSURL(fileURLWithPath: soundFilePath4 as String)!
        myAudioPlayer4 = AVAudioPlayer(contentsOfURL: fileURL4, error: nil)
        
        var soundFilePath5 : NSString = NSBundle.mainBundle().pathForResource("dog1b", ofType: "mp3")!
        var fileURL5 : NSURL = NSURL(fileURLWithPath: soundFilePath5 as String)!
        myAudioPlayer5 = AVAudioPlayer(contentsOfURL: fileURL5, error: nil)
        
        var soundFilePath6 : NSString = NSBundle.mainBundle().pathForResource("cat3b", ofType: "mp3")!
        var fileURL6 : NSURL = NSURL(fileURLWithPath: soundFilePath6 as String)!
        myAudioPlayer6 = AVAudioPlayer(contentsOfURL: fileURL6, error: nil)
        
        var soundFilePath7 : NSString = NSBundle.mainBundle().pathForResource("cat3b", ofType: "mp3")!
        var fileURL7 : NSURL = NSURL(fileURLWithPath: soundFilePath7 as String)!
        myAudioPlayer7 = AVAudioPlayer(contentsOfURL: fileURL7, error: nil)
        
        var soundFilePath8 : NSString = NSBundle.mainBundle().pathForResource("cat1b", ofType: "mp3")!
        var fileURL8 : NSURL = NSURL(fileURLWithPath: soundFilePath8 as String)!
        myAudioPlayer8 = AVAudioPlayer(contentsOfURL: fileURL8, error: nil)
        
        var soundFilePath9 : NSString = NSBundle.mainBundle().pathForResource("dog1b", ofType: "mp3")!
        var fileURL9 : NSURL = NSURL(fileURLWithPath: soundFilePath9 as String)!
        myAudioPlayer9 = AVAudioPlayer(contentsOfURL: fileURL9, error: nil)
        
        
        
        
        var soundFilePath10 : NSString = NSBundle.mainBundle().pathForResource("SourTennesseeRed", ofType: "mp3")!
        var fileURL10 : NSURL = NSURL(fileURLWithPath: soundFilePath10 as String)!
        myAudioPlayer10 = AVAudioPlayer(contentsOfURL: fileURL10, error: nil)
        
        
        
        
        
        
        
        
        
        //AVAudioPlayerのデリゲートをセット.
        myAudioPlayer1.delegate = self
        myAudioPlayer3.delegate = self
        myAudioPlayer4.delegate = self
        myAudioPlayer5.delegate = self
        myAudioPlayer6.delegate = self
        myAudioPlayer7.delegate = self
        myAudioPlayer8.delegate = self
        myAudioPlayer9.delegate = self
        
        
        mogu1.hidden = true
        mogu2.hidden = true
        mogu3.hidden = true
        mogu4.hidden = true
        mogu5.hidden = true
        mogu6.hidden = true
        mogu7.hidden = true
        mogu8.hidden = true
        mogu9.hidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func start(){
        buttonNumber = 0
        score = 0
        scoreLabel.text = ""
        array01 = [0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0]
        startButton.hidden = true
        startButtonBack.hidden = true
        number = 20
        timer1 = NSTimer.scheduledTimerWithTimeInterval(4, target: self, selector: "onUpdate1:", userInfo: nil, repeats: true)
        timer2 = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: "onUpdate2:", userInfo: nil, repeats: true)
        timer3 = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: "onUpdate3:", userInfo: nil, repeats: true)
        timer4 = NSTimer.scheduledTimerWithTimeInterval(4, target: self, selector: "onUpdate4:", userInfo: nil, repeats: true)
        timer5 = NSTimer.scheduledTimerWithTimeInterval(7, target: self, selector: "onUpdate5:", userInfo: nil, repeats: true)
        timer6 = NSTimer.scheduledTimerWithTimeInterval(7, target: self, selector: "onUpdate6:", userInfo: nil, repeats: true)
        timer7 = NSTimer.scheduledTimerWithTimeInterval(8, target: self, selector: "onUpdate7:", userInfo: nil, repeats: true)
        timer8 = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: "onUpdate8:", userInfo: nil, repeats: true)
        timer9 = NSTimer.scheduledTimerWithTimeInterval(8, target: self, selector: "onUpdate9:", userInfo: nil, repeats: true)
        stopTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "stopTimer:", userInfo: nil, repeats: true)
        
        
        
        
    }
    func onUpdate1(timer : NSTimer){
        mogu1.hidden = false
    }
    func onUpdate2(timer : NSTimer){
        mogu2.hidden = false
    }
    func onUpdate3(timer : NSTimer){
        mogu3.hidden = false
    }
    func onUpdate4(timer : NSTimer){
        mogu4.hidden = false
    }
    func onUpdate5(timer : NSTimer){
        mogu5.hidden = false
    }
    func onUpdate6(timer : NSTimer){
        mogu6.hidden = false
    }
    func onUpdate7(timer : NSTimer){
        mogu7.hidden = false
    }
    func onUpdate8(timer : NSTimer){
        mogu8.hidden = false
    }
    func onUpdate9(timer : NSTimer){
        mogu9.hidden = false
    }
    func stopTimer(timer : NSTimer){
        
        number = number - 1
        finishLabel.text = "残り時間:\(number)"
        if(number == 0){
            NSLog("arrayは%@",array01)
            startButton.hidden = false
            startButtonBack.hidden = false
            stopTimer.invalidate()
            timer1.invalidate()
            timer2.invalidate()
            timer3.invalidate()
            timer4.invalidate()
            timer5.invalidate()
            timer6.invalidate()
            timer7.invalidate()
            timer8.invalidate()
            timer9.invalidate()
            mogu1.hidden = true
            mogu2.hidden = true
            mogu3.hidden = true
            mogu4.hidden = true
            mogu5.hidden = true
            mogu6.hidden = true
            mogu7.hidden = true
            mogu8.hidden = true
            mogu9.hidden = true
            scoreLabel.text = String(score)
            finishLabel.text = "おわり"
            
            
        }
    }
    
    
    @IBAction func b1(){
        buttonNumber = buttonNumber + 1
        array01[buttonNumber] = 1
        mogu1.hidden = true
        score = score + 1
        myAudioPlayer1.play()
    }
    @IBAction func b2(){
        buttonNumber = buttonNumber + 1
        array01[buttonNumber] = 2
        mogu2.hidden = true
        score = score + 1
        myAudioPlayer2.play()
    }
    @IBAction func b3(){
        buttonNumber = buttonNumber + 1
        array01[buttonNumber] = 3
        
        mogu3.hidden = true
        score = score + 1
        myAudioPlayer3.play()
    }
    @IBAction func b4(){
        buttonNumber = buttonNumber + 1
        array01[buttonNumber] = 4
        mogu4.hidden = true
        score = score + 1
        myAudioPlayer4.play()
    }
    @IBAction func b5(){
        buttonNumber = buttonNumber + 1
        array01[buttonNumber] = 5
        mogu5.hidden = true
        score = score + 1
        myAudioPlayer5.play()
    }
    @IBAction func b6(){
        buttonNumber = buttonNumber + 1
        array01[buttonNumber] = 6
        mogu6.hidden = true
        score = score + 1
        myAudioPlayer6.play()
    }
    @IBAction func b7(){
        buttonNumber = buttonNumber + 1
        array01[buttonNumber] = 7
        mogu7.hidden = true
        score = score + 1
        myAudioPlayer7.play()
    }
    @IBAction func b8(){
        buttonNumber = buttonNumber + 1
        array01[buttonNumber] = 8
        mogu8.hidden = true
        score = score + 1
        myAudioPlayer8.play()
    }
    @IBAction func b9(){
        buttonNumber = buttonNumber + 1
        array01[buttonNumber] = 9
        mogu9.hidden = true
        score = score + 1
        
        myAudioPlayer9.play()
    }
    @IBAction func musicStart(){
//        myAudioPlayer10.play()
        arN = 0
        musicTimer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "music:", userInfo: nil, repeats: true)
        
    }
    
    func music(timer : NSTimer){
        
                      
        
        arN = arN + 1
        if(array01[arN] == 0){
            
            NSLog("hello")
//            myAudioPlayer10.stop()
            musicTimer.invalidate()
        }else if(array01[arN] == 1){
            NSLog("1")
            myAudioPlayer1.play()
        }else if(array01[arN] == 2){
            NSLog("2")
            myAudioPlayer2.play()
        }else if(array01[arN] == 3){
            NSLog("3")
            myAudioPlayer3.play()
        }else if(array01[arN] == 4){
            NSLog("4")
            myAudioPlayer4.play()
        }else if(array01[arN] == 5){
            NSLog("5")
            myAudioPlayer5.play()
        }else if(array01[arN] == 6){
            NSLog("6")
            myAudioPlayer6.play()
        }else if(array01[arN] == 7){
            NSLog("7")
            myAudioPlayer7.play()
        }else if(array01[arN] == 8){
            NSLog("8")
            myAudioPlayer8.play()
        }else if(array01[arN] == 9){
            NSLog("9")
            myAudioPlayer9.play()
        }
    }
}

