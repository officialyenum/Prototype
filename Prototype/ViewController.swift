//
//  ViewController.swift
//  Prototype
//
//  Created by Chukwuyenum Opone on 22/02/2020.
//  Copyright © 2020 Chukwuyenum Opone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var contact = Contact(firstName: "john", lastName: "Abel")
    var john = CloningContact(firstName: "Micheal", lastName: "Appleseed", address: Address(street: "ITANOLA", city: "IKEJA", zip: "23401"))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var bob = contact
        print("\n\(bob),")
        
        bob.firstName = "Chucky"
        bob.lastName = "Opone"
        
        print("\(bob)")
        
        
        var kel = john.clone()
        print("\n\(kel),")
        
        kel.firstName = "Chin"
        kel.lastName = "prince"
        kel.address.street = "ngbowo"
        kel.address.city = "benin"
        kel.address.zip = "23411"
        
        
        print("\(kel)")
        
        
    }


}

