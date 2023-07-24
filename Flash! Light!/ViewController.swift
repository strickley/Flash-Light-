//
//  ViewController.swift
//  Flash! Light!
//
//  Created by admin on 7/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    
    @IBOutlet weak var lightButton: UIButton!
    
    //MARK: - Instance Properties
    var lightOn = true
    var counter = 1
    
    //MARK: - VDL
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateUI()
        
    }
    
    //MARK: - IB Actions
    
    @IBAction func lightButtonTapped(_ sender: Any) {
        //lightOn = !lightOn
        //lightOn.toggle()
      
        counter += 1
        updateUI()
        
    }
    
    
    //MARK - Instance Methods
    fileprivate func updateUI() {
        
        if lightOn {
            if counter.isMultiple(of: 2) {
                view.backgroundColor = .white
            } else if counter.isMultiple(of: 3) {
                view.backgroundColor = .red
            } else if counter.isMultiple(of: 5) {
                view.backgroundColor = .cyan
            } else if counter.isMultiple(of: 7){
                view.backgroundColor = .magenta
            } else {
                view.backgroundColor = .purple
            }
            
            //
            //            view.backgroundColor = .white
            ////            lightButton.setTitle("Off", for: .normal)
            ////            lightButton.setTitleColor(.black, for: .normal)
            //        } else {
            //
            //            view.backgroundColor = .black
            ////            lightButton.setTitle("On", for: .normal)
            ////            lightButton.setTitleColor(.white, for: .normal)
            //        }
        }
    }
}
