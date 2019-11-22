//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Grant Harrison on 11/21/19.
//  Copyright © 2019 Grant Harrison. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var observation: Observations?

    @IBOutlet weak var animalIconView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    
    @IBOutlet weak var descriptionLabel: UITextView!
    
    
     let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        if let observation = observation {
            titleLabel.text = observation.title
            dateLabel.text = dateFormatter.string(from: observation.date)
            descriptionLabel.text = observation.description
            animalIconView.image = UIImage(named: observation.classification.rawValue)
        }

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

}
