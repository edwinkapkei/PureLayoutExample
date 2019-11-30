//
//  ViewController.swift
//  ByeStoryboard
//
//  Created by Digital Vision on 30/11/2019.
//  Copyright © 2019 Digital Vision. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    var profile: ProfileView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        profile = ProfileView(frame: CGRect.zero)
        self.view.addSubview(profile)
        
        //autolayout
        profile.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets.zero)
        
        profile.bannerView.image = UIImage(named: "banner")
        profile.profileView.image = UIImage(named: "avatar")
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

