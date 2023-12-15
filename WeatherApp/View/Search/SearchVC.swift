//
//  forecastVC.swift
//  weatherapp-Bitcot
//
//  Created by Bravery Infotech on 16/02/23.
//

import Foundation
import UIKit


class SearchVC: UIViewController{
    
    
    @IBOutlet weak var weatherIconImage: UIImageView!
    @IBOutlet weak var tempLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var weatherLbl: UILabel!
    @IBOutlet weak var pressureLbl: UILabel!
    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var foreCastTbl: UITableView!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var currenWeatherContraints: NSLayoutConstraint!
    
    var forecastDataModel: ForeCastModel!
    var homeViewModel: HomeViewModel = HomeViewModel()
    var currentWeather : typeDaily?
    var commonMethods = CommonMethods.shared
    var tap: UITapGestureRecognizer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        currenWeatherContraints.constant = 0
        bindingData()
        initializeHideKeyboard()
    }
    
    @IBAction func searchAction(_ sender: Any) {
        view.endEditing(true)
        if let text = searchField.text{
            homeViewModel.getCoordinatesFromPlaceName(location: text)
        }
    }
    
    func setData(){
        
        currenWeatherContraints.constant = 120
        self.pressureLbl.text = "\(currentWeather!.pressure)mbar"
        
        self.dateLbl.text = commonMethods.dateAndtime(timestamp: currentWeather!.dt, format: false)
        
        self.tempLbl.text = "\( commonMethods.kelToCel(temp:currentWeather!.temp.day))°"
        
        self.weatherLbl.text = currentWeather?.weather[0].main
        let icon = currentWeather?.weather[0].icon
        commonMethods.loadImage(icon: icon!){images in
            
            self.weatherIconImage.image = images
        }
    }
    
    func initializeHideKeyboard(){
        //MARK: - Declare a Tap Gesture Recognizer which will trigger our dismissMyKeyboard() function
        tap = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissMyKeyboard))
        view.addGestureRecognizer(tap!)
    }
    
    @objc func dismissMyKeyboard(){
        view.endEditing(true)
    }
    
    func bindingData(){
        homeViewModel.observables.bindValue {[weak self] homeAndForeCastModel in
            
            if let forecastmodel = homeAndForeCastModel?.forecastModel{
                self?.forecastDataModel = forecastmodel
                self?.currentWeather = forecastmodel.daily[0]
                self?.forecastDataModel.daily.remove(at: 0)
                DispatchQueue.main.async {
                    self?.setData()
                    self?.foreCastTbl.reloadData()
                }
            }
            if let message = homeAndForeCastModel?.message{
                DispatchQueue.main.async {
                    self?.commonMethods.alertMessage(message: message, view: self!)
                }
            }
            
        }
    }
    
    
    //MARK: -   BackAction
    @IBAction func backAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    
}




//MARK: - This extension matains only Tableview of next days weather
extension SearchVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return forecastDataModel == nil ? 0 : 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecastDataModel.daily.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Next 7 days"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "foreCastTableViewCell") as? foreCastTableViewCell
        
        if cell == nil {
            let tempArray = Bundle.main.loadNibNamed("foreCastTableViewCell", owner: self, options: nil)!
            cell = tempArray.first as? foreCastTableViewCell
        }
        
        //        For Image
        let icon = forecastDataModel.daily[indexPath.row].weather[0].icon
        commonMethods.loadImage(icon: icon){images in
            cell?.dailyImg.image = images
            
        }
        
        
        cell?.dailyTimelbl.text = commonMethods.dateAndtime(timestamp: forecastDataModel.daily[indexPath.row].dt, format: false)
        
        
        cell?.dailyTemplbl.text = homeViewModel.getTemp(max: forecastDataModel.daily[indexPath.row].temp.max, min: forecastDataModel.daily[indexPath.row].temp.min)
        
        
        
        return cell!
    }
    
    
}




