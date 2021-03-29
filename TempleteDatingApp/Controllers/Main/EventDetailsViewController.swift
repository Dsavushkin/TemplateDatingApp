//
//  EventDetailsViewController.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 14.03.2021.
//

import UIKit

class EventDetailsViewController: UIViewController, UIGestureRecognizerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
//    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var intrestedButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.delegate = self
        navigationController?.barHideOnSwipeGestureRecognizer.isEnabled = true
        
//        scrollView.isScrollEnabled = true
        
//        scrollView.contentSize.height = scrollView.frame.height
        scrollView.isScrollEnabled = true
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 22000)
//
//        self.scrollView.contentSize.height = scrollView.frame.height + 1000

        collectionView.register(UINib(nibName: "ShortPeopleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "imagePeopleCell")
        
        
        let recognizer = UILongPressGestureRecognizer()
        recognizer.addTarget(self, action: #selector(handleLongPressGesture(_:)))
        view.addGestureRecognizer(recognizer)
        navigationController?.interactivePopGestureRecognizer?.delegate = self
//        navigationController?.navigationBar.backgroundColor = .clear
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = nil
        navigationController?.navigationBar.isTranslucent = false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
 
    @objc func handleLongPressGesture(_ gestureRecognizer: UILongPressGestureRecognizer) {
        print("12345")
    }
    
    @IBAction func backSlide(_ sender: UIScreenEdgePanGestureRecognizer) {
        navigationController?.popToRootViewController(animated: true)
        print("123")
    }


    @IBAction func intrestedButton(_ sender: CustomButton) {
        print("ButtonAction")
    }
    
}

extension EventDetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "imagePeopleCell", for: indexPath) as! ShortPeopleCollectionViewCell
        item.imageView.image = UIImage(named: "MgEoFFZ2Fmc")
        return item
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(identifier: "ProfileViewController")
        present(vc, animated: true, completion: nil)
    }
    
    
}
