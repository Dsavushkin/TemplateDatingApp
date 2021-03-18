//
//  ProfileViewController.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 13.03.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var descriptionView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        profileImageView.layer.cornerRadius = 15
//        descriptionView.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
        let rectShape = CAShapeLayer()
        rectShape.bounds = descriptionView.frame
        rectShape.position = descriptionView.center
        rectShape.path = UIBezierPath(roundedRect: descriptionView.bounds, byRoundingCorners: [.bottomLeft , .bottomRight , .topRight], cornerRadii: CGSize(width: 15, height: 15)).cgPath

//        descriptionView.layer.backgroundColor = UIColor.green.cgColor
        //Here I'm masking the textView's layer with rectShape layer
        descriptionView.layer.mask = rectShape
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        performSegue(withIdentifier: "settings", sender: nil)
    }
    
}
