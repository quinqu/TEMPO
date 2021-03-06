//
//  SceneDelegate.swift
//  tempo
//
//  Created by Quinn Quintero on 7/13/20.
//  Copyright © 2020 Quinn Quintero. All rights reserved.
//

import UIKit
import SafariServices

class SceneDelegate: UIResponder, UIWindowSceneDelegate, SFSafariViewControllerDelegate {
    
    var window: UIWindow?
    var safariVC: SFSafariViewController?
    var viewController: HeightViewController!
    var spotifyUserId = ""
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        //guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let sf = safariVC
        {
            
            if !URLContexts.isEmpty {
                //getting user ID
                let idk = URLContexts.first!.url
                spotifyUserId = idk.absoluteString.components(separatedBy: "//")[1]
                
                //closing safari view controller
                sf.navigationController?.popViewController(animated: true)
                sf.dismiss(animated: true, completion: nil)
                if let currentRoot = self.window?.rootViewController {
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let artificialRoot = storyboard.instantiateViewController(withIdentifier: "height_vc")
                    currentRoot.present(artificialRoot, animated: false, completion: nil)
                }
            }
        }
        
    }
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
 
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    
}

