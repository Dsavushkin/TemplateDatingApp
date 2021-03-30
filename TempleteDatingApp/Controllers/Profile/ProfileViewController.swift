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
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet var scrollView: UIScrollView?
    
    
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
        rectShape.path = UIBezierPath(roundedRect: descriptionView.bounds, byRoundingCorners: [.topRight, .bottomRight, .bottomLeft , .bottomRight , .topRight], cornerRadii: CGSize(width: 15, height: 15)).cgPath
        descriptionView.layer.cornerRadius = 15
//        scrollView.isScrollEnabled = true
//        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 22000)
         //or what ever size you want to set



//        descriptionView.layer.backgroundColor = UIColor.green.cgColor
        //Here I'm masking the textView's layer with rectShape layer
        descriptionView.layer.mask = rectShape
        
        collectionView.register(UINib(nibName: "EventCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "eventCell")
    }
    
    
    @IBAction func followingAction(_ sender: UIButton) {
        performSegue(withIdentifier: "list", sender: nil)
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        performSegue(withIdentifier: "settings", sender: nil)
        
    }
    
}

extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "eventCell", for: indexPath)
        return item
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width/1.3, height: 180)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "EventDetailsViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
