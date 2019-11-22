//
//  FieldSurveyViewController.swift
//  Field Survey
//
//  Created by Grant Harrison on 11/21/19.
//  Copyright © 2019 Grant Harrison. All rights reserved.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var fieldSurveyTableview: UITableView!
    
    let jsonFileName = "field_observations"
    var observations: FieldSurvey?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        observations = FieldSurveyLoader.load(jsonFileName: jsonFileName)
        
        if observations == nil {
            presentMessage(message: "Unable to load and parse \(jsonFileName).json")
        }

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return observations?.observations.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = fieldSurveyTableview.dequeueReusableCell(withIdentifier: "fieldSurveyCell", for: indexPath)
        
        if let cell = cell as? FieldSurveyTableViewCell,
            let observations = observations?.observations[indexPath.row] {
            cell.title2Label.text = observations.title
            cell.date2Label.text = dateFormatter.string(from: observations.date)
            cell.animalIcon2View.image = UIImage(named: observations.classification.rawValue)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldSurveyDetailViewController,
            let row = fieldSurveyTableview.indexPathForSelectedRow?.row {
            destination.observation = observations?.observations[row]
        }
    }
    
    func presentMessage(message: String) {
        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
