//
//  HomeVC.swift
//  weatherapp-Bitcot
//
//  Created by Bravery Infotech on 16/02/23.
//

import Foundation
import UIKit
import CoreLocation


class HomeVC:UIViewController{
    
    
    @IBOutlet weak var homeScrollView: UIScrollView!
    @IBOutlet weak var lblPlaceNameTop: UILabel!
    @IBOutlet weak var nextDaysCollView: UICollectionView!
    @IBOutlet weak var currentImg: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTempMain: UILabel!
    @IBOutlet weak var lblWind: UILabel!
    @IBOutlet weak var lblWindSpeed: UILabel!
    @IBOutlet weak var WindImg: UIImageView!
    @IBOutlet weak var lblSunrise: UILabel!
    @IBOutlet weak var lblDateSunrise: UILabel!
    @IBOutlet weak var SunriseImg: UIImageView!
    @IBOutlet weak var lblFeelslike: UILabel!
    @IBOutlet weak var lblFeelslikeValue: UILabel!
    @IBOutlet weak var lblPressure: UILabel!
    @IBOutlet weak var lblPressurevalue: UILabel!
    
    var forecastmodel : ForeCastModel!
    var homeViewModel : HomeViewModel! = HomeViewModel()
    var locationManager = LocationManager.shared
    var refreshControl = UIRefreshControl()
    let commonMethods = CommonMethods.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        //        MARK: -It hepls to refresh the screen
        self.refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        self.refreshControl.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
        homeScrollView.addSubview(refreshControl)
        bindingData()
        self.homeViewModel.getUserCurrentLocation()
    }
    
    
    @objc func refresh(_ sender: AnyObject){
        refreshControl.endRefreshing()
        self.homeViewModel.getUserCurrentLocation()
    }
    
   
    func bindingData(){
        homeViewModel.observables.bindValue { homeAndForeCastModel in
            
            if let hommodelData = homeAndForeCastModel?.homeModel{
                DispatchQueue.main.async {
                    self.setdata(homeModelData: hommodelData)
                }
            }
            if let forecastmodel = homeAndForeCastModel?.forecastModel{
                self.forecastmodel = forecastmodel
                DispatchQueue.main.async {
                    self.nextDaysCollView.reloadData()
                }
            }
            
            if let message = homeAndForeCastModel?.message{
                DispatchQueue.main.async {
                    self.commonMethods.alertMessage(message: message, view: self)
                }
            }
            
        }
    }
    
    //     MARK: - While clicking the search icon its navigate to Search page
    @IBAction func navigateToSearchPageAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let searchVC = storyboard.instantiateViewController(withIdentifier: "SearchVC") as? SearchVC{
            self.navigationController?.pushViewController(searchVC, animated: true)
        }
    }
    
    
    
    
    
    //      MARK: - Bind the  HomePage Data
    func setdata(homeModelData: HomeModel){
        lblPlaceNameTop.text = homeModelData.name + "," + homeModelData.sys.country
        
        lblDescription.text = homeModelData.weather[0].description
        
        lblPressurevalue.text = "\(homeModelData.main.pressure)mbar"
        
        lblFeelslikeValue.text = "\(commonMethods.kelToCel(temp:homeModelData.main.feels_like ))°"
        
        lblWindSpeed.text = "\(homeModelData.wind.speed)km/j"
        
        lblDate.text = commonMethods.dateAndtime(timestamp: homeModelData.dt, format: false)
        
        lblTempMain.text = "\(commonMethods.kelToCel(temp:homeModelData.main.temp ))°"
        
        lblDateSunrise.text = commonMethods.dateAndtime(timestamp: homeModelData.sys.sunrise, format: true )
        
        let icon = homeModelData.weather[0].icon
        commonMethods.loadImage(icon: icon){images in
            
            self.currentImg.image = images
        }
        
    }
    
}





//MARK: -   This extension matains only collectionview of next days weather
extension HomeVC:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self.forecastmodel == nil ? 0 : 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return  forecastmodel == nil ? 1 : forecastmodel.daily.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        nextDaysCollView.register(UINib.init(nibName: "nextDaysCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "nextDaysCollectionViewCell")
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "nextDaysCollectionViewCell", for: indexPath) as? nextDaysCollectionViewCell
        
        if cell == nil {
            let tempArray = Bundle.main.loadNibNamed("nextDaysCollectionViewCell", owner: self, options: nil)
            cell = tempArray?.first  as? nextDaysCollectionViewCell
        }
        
        
        //
        if indexPath.row == 0{
            cell?.viewCell.backgroundColor = UIColor.link
            cell?.dailyImg.tintColor = UIColor.white
            cell?.dailyTimelbl.text = "Today"
        }else{
            cell?.viewCell.backgroundColor = UIColor.white
            cell?.dailyImg.tintColor = UIColor.link
            cell?.dailyTimelbl.text = commonMethods.dateAndtime(timestamp: forecastmodel.daily[indexPath.row].dt, format: false)
        }
        
        cell?.dailyTemplbl.text = forecastmodel.daily[indexPath.row].weather[0].main
        
        let icon = forecastmodel.daily[indexPath.row].weather[0].icon
        commonMethods.loadImage(icon: icon){images in
            cell?.dailyImg.image = images
            
        }
       
        
        return cell!
    }
}



