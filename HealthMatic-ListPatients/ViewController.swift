//
//  ViewController.swift
//  HealthMatic-ListPatients
//
//  Created by Shelalaine Chan on 2016-10-19.
//  Copyright © 2016 Team SPY. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    // MARK: Properties
    @IBOutlet weak var segCtrlPatientSelection: UISegmentedControl!
    @IBOutlet weak var patientTableView: UITableView!
    
    var patients = [Patient]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSamplePatients()
        patientTableView.dataSource = self
        patientTableView.tableFooterView = UIView()
    }
    
    func loadSamplePatients() {
        let patient1 = Patient(firstName: "Prashant", lastName: "Pol", roomNumber: 100, staffName: "Gigi Hadid", gender: false)!
        let patient2 = Patient(firstName: "Shelalaine", lastName: "Chan", roomNumber: 101, staffName: "Charlie Hunnam", gender: true)!
        let patient3 = Patient(firstName: "Yatin", lastName: "Sharma", roomNumber: 102, staffName: "Kendall Jenner", gender: false)!
        
        patients += [patient1, patient2, patient3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "PatientTableViewCell"
        let cell = patientTableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PatientTableViewCell
        let patient = patients[indexPath.row]
        
        cell.contentView.layer.cornerRadius = 5
        cell.contentView.layer.masksToBounds = true
        
        cell.patientNameLabel.text = patient.firstName + " " + patient.lastName
        cell.staffNameLabel.text = patient.staffName
        cell.roomNumberLabel.text = String(patient.roomNumber)

        if (patient.gender) {
            cell.patientImage.image = UIImage(named: "Circled User Female _2")
        } else {
            cell.patientImage.image = UIImage(named: "Circled User Male_2")
        }
        return cell
    }
    

    // MARK: View Information Actions
    @IBAction func patientSelection(_ sender: UISegmentedControl) {
        if (segCtrlPatientSelection.selectedSegmentIndex == 0) {
            // TODO Handle proper code here
            //      Print is for debugging purposes only and shall be removed once finalized
            print("My Patients selected")
        } else {
            print("All patients selected")
        }
    }
}

