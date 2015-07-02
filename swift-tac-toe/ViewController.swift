//
//  ViewController.swift
//  Swift-Tac-Toe
//
//  Created by Joan Tolós López on 25/6/15.
//  Copyright (c) 2015 Thomson Reuters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tickTacImg1: UIImageView!
    @IBOutlet weak var tickTacImg2: UIImageView!
    @IBOutlet weak var tickTacImg3: UIImageView!
    @IBOutlet weak var tickTacImg4: UIImageView!
    @IBOutlet weak var tickTacImg5: UIImageView!
    @IBOutlet weak var tickTacImg6: UIImageView!
    @IBOutlet weak var tickTacImg7: UIImageView!
    @IBOutlet weak var tickTacImg8: UIImageView!
    @IBOutlet weak var tickTacImg9: UIImageView!
    
    @IBOutlet weak var tickTacButton1: UIButton!
    @IBOutlet weak var tickTacButton2: UIButton!
    @IBOutlet weak var tickTacButton3: UIButton!
    @IBOutlet weak var tickTacButton4: UIButton!
    @IBOutlet weak var tickTacButton5: UIButton!
    @IBOutlet weak var tickTacButton6: UIButton!
    @IBOutlet weak var tickTacButton7: UIButton!
    @IBOutlet weak var tickTacButton8: UIButton!
    @IBOutlet weak var tickTacButton9: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var userMessage: UILabel!
    
    var plays = Dictionary<Int,Int>()
    var done = false
    var aiDeciding = false
    
    @IBAction func UIButtonClick(sender:UIButton){
        userMessage.hidden=true
        if plays[sender.tag] == nil && !aiDeciding && !done{
            setImageForSpot(sender.tag, player:1)
        }
        
        checkForWin()
        aiTurn()
    }
    
    func setImageForSpot(spot:Int, player:Int){
        var playerMark = player == 1 ? "x" : "o"
        plays[spot]=player
        
        switch spot {
        case 1:
            tickTacImg1.image = UIImage(named: playerMark)
        case 2:
            tickTacImg2.image = UIImage(named: playerMark)
        case 3:
            tickTacImg3.image = UIImage(named: playerMark)
        case 4:
            tickTacImg4.image = UIImage(named: playerMark)
        case 5:
            tickTacImg5.image = UIImage(named: playerMark)
        case 6:
            tickTacImg6.image = UIImage(named: playerMark)
        case 7:
            tickTacImg7.image = UIImage(named: playerMark)
        case 8:
            tickTacImg8.image = UIImage(named: playerMark)
        case 9:
            tickTacImg9.image = UIImage(named: playerMark)
        default:
            tickTacImg5.image = UIImage(named: playerMark)
        }
    }
    
    func checkForWin(){
        
    }
    
    func aiTurn(){
        
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
