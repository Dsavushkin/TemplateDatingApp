//
//  MainViewController.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 14.03.2021.
//

import UIKit


class MainViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView?
    @IBOutlet weak var popularEventCollectionView: UICollectionView!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
//    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var headerView: UICollectionReusableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isToolbarHidden = true
        collectionView?.register(UINib(nibName: "EventCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "eventCell")
        popularEventCollectionView?.register(UINib(nibName: "EventCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "eventCell")
//        searchBar.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
//        scrollView.contentSize.height = 2000
        

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
        switch collectionView {
        case collectionView:
            return 20
        case popularEventCollectionView:
            return 1
        default:
            return 0
        }
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        switch collectionView {
        case popularEventCollectionView:
            return 2
        default:
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
        switch collectionView {
        case collectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventCell", for: indexPath) as! EventCollectionViewCell
                return cell
        case popularEventCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventCell", for: indexPath) as! EventCollectionViewCell
                return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventCell", for: indexPath) as! EventCollectionViewCell
                return cell
        }
   
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "eventDetails", sender: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width/1.3, height: collectionView.bounds.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let reusableview = popularEventCollectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerPopularCell", for: indexPath)
        
        return reusableview
    }
}


extension MainViewController: UISearchBarDelegate{
    
    //SearchBar
    
//        let url = "https://jsonplaceholder.typicode.com/posts"
        

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText != "" {
            let alert = UIAlertController.init(title: "123", message: "123", preferredStyle: .actionSheet)
            alert.addAction(.init(title: "123", style: .default, handler:  {_ in
                alert.dismiss(animated: true, completion: nil)
                                  }))
            present(alert, animated: true, completion: nil)
        }
        print(searchText)
    }
    
    
}


class Post: Codable {
    let title: String
    let description: String
    let id: String
    let body: String
}
