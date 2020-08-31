//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Rares Man on 31.08.2020.
//  Copyright © 2020 Rares Man. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        nextBtn.isEnabled = false
    }
    
    @IBAction func onNextTapped (_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMenTap(_ sender: Any) {
        selectLeauge(leagueType: "men")
    }
    
    @IBAction func onWomenTap(_ sender: Any) {
        selectLeauge(leagueType: "women")
    }
    
    @IBAction func onCoedTap(_ sender: Any) {
        selectLeauge(leagueType: "coed")
    }
    
    func selectLeauge(leagueType: String){
        player.desiredLeauge = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
}
