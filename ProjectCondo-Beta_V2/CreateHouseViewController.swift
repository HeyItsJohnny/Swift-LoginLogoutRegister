//
//  CreateHouseViewController.swift
//  ProjectCondo-Beta_V2
//
//  Created by jonathan laroco on 8/11/17.
//  Copyright © 2017 jonathan laroco. All rights reserved.
//

import UIKit

class CreateHouseViewController: UIViewController {
    @IBOutlet weak var HouseNameTxt: UITextField!
    @IBOutlet weak var Address1Txt: UITextField!
    @IBOutlet weak var Address2Txt: UITextField!
    @IBOutlet weak var CityTxt: UITextField!
    @IBOutlet weak var StateTxt: UITextField!
    @IBOutlet weak var PostCodeTxt: UITextField!

    @IBAction func CreateAHouseInMongoDB(_ sender: Any) {
        
        var Add2Field = ""
        
        //Make sure everything is filled out -
        if ((HouseNameTxt.text?.isEmpty) != false) {
            Alert.showAlertWithMessage("Please enter a House Name", fromViewController: self)
            return
        } else if ((Address1Txt.text?.isEmpty) != false) {
            Alert.showAlertWithMessage("Please enter a Address 1", fromViewController: self)
            return
        } else if ((CityTxt.text?.isEmpty) != false) {
            Alert.showAlertWithMessage("Please enter a city", fromViewController: self)
            return
        } else if ((StateTxt.text?.isEmpty) != false) {
            Alert.showAlertWithMessage("Please enter a state", fromViewController: self)
            return
        } else if ((PostCodeTxt.text?.isEmpty) != false) {
            Alert.showAlertWithMessage("Please enter a post code", fromViewController: self)
            return
        }
        //Make sure everything is filled out +
        
        //Handle Address 2 -
        if ((Address1Txt.text?.isEmpty) != false) {
            Add2Field = ""
        } else {
            Add2Field = Address2Txt.text!
        }
        //Handle Address 2 +
        
    }
    
    //Go to House List -
    fileprivate func showHouseListViewController() {
        let MainViewController = self.storyboard?.instantiateViewController(withIdentifier: "SelectHouseViewController")
        self.present(MainViewController!, animated: true, completion: nil)
    }
    //Go to House List +
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
