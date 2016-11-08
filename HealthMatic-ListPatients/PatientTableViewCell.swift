//
//  PatientTableViewCell.swift
//  HealthMatic-ListPatients
//
//  Created by Shelalaine Chan on 2016-10-19.
//  Copyright © 2016 Team SPY. All rights reserved.
//

import UIKit

class PatientTableViewCell: UITableViewCell {
    // MARK: Properties
    @IBOutlet weak var patientImage: UIImageView!
    @IBOutlet weak var patientNameLabel: UILabel!
    @IBOutlet weak var staffNameLabel: UILabel!
    @IBOutlet weak var roomNumberLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
