//
//  Patient.swift
//  HealthMatic_Scenes
//
//  Created by Shelalaine Chan on 2016-10-19.
//  Copyright © 2016 Team SPY. All rights reserved.
//

import UIKit

 class Patient {
    // MARK: Properties
    // TODO: To be modified, for Demo purposes only for now
    var firstName: String
    var lastName: String
    var roomNumber: Int
    var staffName: String
    var gender: Bool
 
    // MARK: Initialization
    init?(firstName: String, lastName: String, roomNumber: Int, staffName: String, gender: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.roomNumber = roomNumber
        self.staffName = staffName
        self.gender = gender
 
        if (firstName.isEmpty || lastName.isEmpty || roomNumber <= 0 || staffName.isEmpty) {
            return nil
        }
    }
 }
