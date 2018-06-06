//
//  MoreViewController.swift
//  GET´IN SHAPE
//
//  Created by Mille  Emdal on 06/06/2018.
//  Copyright © 2018 Mille  Emdal. All rights reserved.
//

import UIKit
var more = ["Profil", "Traeningsprogram", "Skridt", "Kost", "Forums"]

class MoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return more.count
        }
        
       public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let Mycell = tableView.dequeueReusableCell(withIdentifier: "Mycell", for: indexPath)
            
            Mycell.textLabel?.text = more[indexPath.row]
            
            
            return Mycell
        }
 

}
