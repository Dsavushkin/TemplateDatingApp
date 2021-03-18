//
//  MainViewController.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 14.03.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView?
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isToolbarHidden = true
        collectionView?.register(UINib(nibName: "EventCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "eventCell")
        searchBar.heightAnchor.constraint(equalToConstant: 200).isActive = true
        


        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        navigationController?.navigationBar.barTintColor = .clear
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventCell", for: indexPath) as! EventCollectionViewCell
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "eventDetails", sender: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width/1.3, height: collectionView.bounds.height)
    }
}
