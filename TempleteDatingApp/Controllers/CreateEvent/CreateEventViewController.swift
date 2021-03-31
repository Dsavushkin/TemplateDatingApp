//
//  CreateEventViewController.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 16.03.2021.
//

import UIKit

class CreateEventViewController: UIViewController {

//    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var locationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


    @IBAction func locationAction(_ sender: UIButton) {
        performSegue(withIdentifier: "map", sender: nil)
    }
}

extension CreateEventViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "addCell") as! AddEventTableViewCell
        cell.titleLabel.text = "123"
        return cell
    }
    
    
}
