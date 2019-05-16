//
//  ViewController.swift
//  AutoLayoutVisualFormaLanguage
//
//  Created by Art Karma on 5/16/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var moveImageView: UIImageView!
    @IBOutlet weak var moveImageViewConstraintHorizontal: NSLayoutConstraint!
    
    var headerView: UIView!
    var titleLabel: UILabel!
    var descLabel: UILabel!
    var imageView: UIImageView!
    var buttonStart: UIButton!
    
    let airBaloon = UIImage(named: "air")
    let airBaloon2 = UIImage(named: "ball-orange")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initViews()
        createVFL()
        moveImageView.image = airBaloon2
    }
    
    func initViews() {
        
        // Header View
        
        self.headerView = UIView()
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = .lightGray
        self.view.addSubview(headerView)
        
        // Title Label
        
        self.titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 10)
        titleLabel.numberOfLines = 0
        titleLabel.preferredMaxLayoutWidth = 150
        titleLabel.backgroundColor = .yellow
        titleLabel.text = #"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."#
        headerView.addSubview(titleLabel)
        
        // Description Label
        
        self.descLabel = UILabel()
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.font = UIFont.systemFont(ofSize: 14)
        descLabel.backgroundColor = .green
        descLabel.text = "Author Starter"
        headerView.addSubview(descLabel)
        
        // Image View
        
        self.imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        imageView.image = airBaloon
        headerView.addSubview(imageView)
        
        // Button start
        
        self.buttonStart = UIButton()
        buttonStart.translatesAutoresizingMaskIntoConstraints = false
        buttonStart.setTitle("Start", for: .normal)
        buttonStart.setTitleColor(.blue, for: .normal)
        buttonStart.addTarget(self, action: #selector(start(sender:)), for: .touchUpInside)
        headerView.addSubview(buttonStart)
        
    }
    
    func createVFL() {
        
        let views = ["headerView": headerView, "titleLabel": titleLabel, "descLabel": descLabel, "imageView": imageView, "buttonStart": buttonStart]
        let metrics = ["imageWidth": 200, "imageHeight": 300, "padding": 15]
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[headerView]|", options: [], metrics: metrics, views: views as [String : Any]))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-35-[headerView]", options: [], metrics: metrics, views: views as [String : Any]))
        
        headerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-padding-[imageView(imageWidth)]-padding-[titleLabel]-padding-|", options: [], metrics: metrics, views: views as [String : Any]))
        headerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-padding-[titleLabel]->=0-[descLabel]-padding-|", options: .alignAllRight, metrics: metrics, views: views as [String : Any]))
        headerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-padding-[imageView(imageHeight)]->=padding-[buttonStart]-padding-|", options: .alignAllCenterX, metrics: metrics, views: views as [String : Any]))
    }
    
    @objc func start(sender: UIButton) {
        
        
//        sender.isEnabled = false
        
//        UIView.animate(withDuration: 5.0, delay: 0, options: .transitionFlipFromLeft, animations: {
//
//            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
//                self.moveImageViewConstraintHorizontal.constant = 200.0
//                self.view.layoutIfNeeded()
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
//                self.moveImageViewConstraintHorizontal.constant = 25
//                self.view.layoutIfNeeded()
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.125, animations: {
//                self.moveImageViewConstraintHorizontal.constant = 200
//                self.view.layoutIfNeeded()
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 0.875, relativeDuration: 0.0625, animations: {
//                self.moveImageViewConstraintHorizontal.constant = 25
//                self.view.layoutIfNeeded()
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 0.9375, relativeDuration: 0.3125, animations: {
//                self.moveImageViewConstraintHorizontal.constant = 200
//                self.view.layoutIfNeeded()
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 0.9687, relativeDuration: 0.15625, animations: {
//                self.moveImageViewConstraintHorizontal.constant = 25
//                self.view.layoutIfNeeded()
//            })
        
//        }) { (finished: Bool) in
//            sender.isEnabled = true
//        }
    }
    
}

