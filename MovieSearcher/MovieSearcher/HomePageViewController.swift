//
//  HomePageViewController.swift
//  MovieSearcher
//
//  Created by Robyn Gungon on 5/5/21.
//

import UIKit
import SwiftKeychainWrapper

class HomePageViewController: UIViewController {

    @IBAction func signOutButtonTapped(_ sender: Any) {
        
        KeychainWrapper.standard.removeObject(forKey: "accessToken")
               KeychainWrapper.standard.removeObject(forKey: "userId")
               
               let signInPage = self.storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
               let appDelegate = UIApplication.shared.delegate
               appDelegate?.window??.rootViewController = signInPage
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
