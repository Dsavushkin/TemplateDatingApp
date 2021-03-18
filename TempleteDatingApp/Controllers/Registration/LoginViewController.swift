//
//  LoginViewController.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 16.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func loginWithPhoneAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "authorizationZone")
        present(vc, animated: true, completion: nil)
        
    }
    @IBAction func loginWithApple(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "authorizationZone")
        present(vc, animated: true, completion: nil)
    }
    @IBAction func loginWithVK(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "authorizationZone")
        present(vc, animated: true, completion: nil)
    }
    @IBAction func loginWithGmail(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "authorizationZone")
        present(vc, animated: true, completion: nil)
    }
}
