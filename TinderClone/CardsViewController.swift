//
//  CardsViewController.swift
//  TinderClone
//
//  Created by Justin Lee on 4/13/18.
//  Copyright © 2018 Justin Lee. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    
    var cardInitialCenter: CGPoint!
    
    @IBOutlet weak var profilePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)

        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPan(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        let velocity = sender.velocity(in: view)
        let translation = sender.translation(in: view)
        
        if sender.state == .began {
            print("Gesture began")
        } else if sender.state == .changed {
            print("Gesture is changing")
            if(velocity.x > 0){
                profilePic.transform = CGAffineTransform(rotationAngle: CGFloat(45 * M_PI / 180))
            }
            
            else{
                profilePic.transform = CGAffineTransform(rotationAngle: CGFloat(-45 * M_PI / 180))
                print("whats up")
                
            }
            
            //view.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            //view.transform = view.transform.rotated(by: CGFloat(45 * M_PI / 180))
        } else if sender.state == .ended {
            print("Gesture ended")
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
        //self.profilePic.removeFromSuperview()
            self.profilePic.isHidden = true
         
           
            
            //profilePic.move
            })
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
            //view.addSubview(self.profilePic)
            self.profilePic.transform = CGAffineTransform.identity
            self.profilePic.isHidden = false
            
            })
            
            
            
        }
        
    }
    
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            print("wassup")
        self.performSegue(withIdentifier: "profileSwitch", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "profileSwitch") {
            let vc = segue.destination as! ProfileViewController
            print("whats up")
            //vc.varPicture = #imageLiteral(resourceName: "ryan")
            vc.varPicture = profilePic.image!
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
