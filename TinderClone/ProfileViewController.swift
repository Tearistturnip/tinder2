//
//  ProfileViewController.swift
//  TinderClone
//
//  Created by Justin Lee on 4/15/18.
//  Copyright © 2018 Justin Lee. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var varPicture = UIImage()
    @IBOutlet weak var profilePic2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePic2.image = varPicture

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
