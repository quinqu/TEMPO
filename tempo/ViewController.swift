//
//  ViewController.swift
//  tempo
//
//  Created by Quinn Quintero on 7/13/20.
//  Copyright © 2020 Quinn Quintero. All rights reserved.
//

import UIKit
import SafariServices
import Alamofire


class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    @IBOutlet weak var loginButton: UIButton!
    var safariVC: SFSafariViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
          
      }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        let vc = SFSafariViewController(url: URL(string: "http://localhost:3000/auth/spotify")!)
        present(vc, animated: true)
        if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
            sceneDelegate.safariVC = vc
        }
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "height_vc") as! HeightViewController
        self.present(nextViewController, animated:true, completion:nil)
        
        }
    
    
        
    }
    

    
    
    
    




