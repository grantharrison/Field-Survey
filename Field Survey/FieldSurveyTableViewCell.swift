//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Grant Harrison on 11/21/19.
//  Copyright © 2019 Grant Harrison. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {

    @IBOutlet weak var animalIcon2View: UIImageView!
    @IBOutlet weak var title2Label: UILabel!
    @IBOutlet weak var date2Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
