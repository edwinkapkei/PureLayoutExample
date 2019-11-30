//
//  ProfileView.swift
//  ByeStoryboard
//
//  Created by Digital Vision on 30/11/2019.
//  Copyright © 2019 Digital Vision. All rights reserved.
//

import UIKit
import PureLayout

class ProfileView: UIView {
    
    var shouldSetupConstraints = true
    
    var bannerView: UIImageView!
    var profileView: UIImageView!
    var segmentedControl: UISegmentedControl!
    
    let screenSize = UIScreen.main.bounds
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        bannerView = UIImageView(frame: CGRect.zero)
        bannerView.backgroundColor = .gray
        
        bannerView.autoSetDimension(.height, toSize: screenSize.width / 3)
        
        self.addSubview(bannerView)
        
        profileView = UIImageView(frame: CGRect.zero)
        profileView.backgroundColor = .gray
        profileView.layer.borderColor = UIColor.white.cgColor
        profileView.layer.borderWidth = 1.0
        profileView.layer.cornerRadius = 5.0
        profileView.layer.masksToBounds = true
        
        profileView.autoSetDimension(.width, toSize: 124.0)
        profileView.autoSetDimension(.height, toSize: 124.0)
        
        self.addSubview(profileView)
        
        segmentedControl = UISegmentedControl(items: ["Tweets","Media", "Likes"])
        
        self.addSubview(segmentedControl)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        if shouldSetupConstraints {
            //Autolayout contstraints
            let edgesInset: CGFloat = 10.0
            let centerOffset: CGFloat = 62.0
            
            bannerView.autoPinEdgesToSuperviewEdges(with: .zero, excludingEdge: .bottom)
            
            profileView.autoPinEdge(toSuperviewEdge: .left, withInset: edgesInset)
            profileView.autoPinEdge(.bottom, to: .bottom, of: bannerView, withOffset: centerOffset)
            
            segmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: edgesInset)
            segmentedControl.autoPinEdge(toSuperviewEdge: .left, withInset: edgesInset)
            segmentedControl.autoPinEdge(toSuperviewEdge: .right, withInset: edgesInset)
            
            shouldSetupConstraints = false
        }
        
        super.updateConstraints()
    }
}
