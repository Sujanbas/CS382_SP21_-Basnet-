//
//  MapViewController.swift
//  lab08
//
//  Created by Sujan Basnet on 2/24/21.
//

import Foundation
import UIKit
import MapKit
class MapViewController: UIViewController {
    var mapView: MKMapView!
    override func loadView(){
        mapView = MKMapView()
        view = mapView
        
        let segementedControl = UISegementedControl(items: ["Satndard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColro = UIColor.systemBackground
        segementControl.selectedSegmentIndex = 0
        
        entedControl.translatesAutoresizingMaskIntoConstrains = false
        
        view.addSubview(segmentedControl)
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLAyoutGuide.topAnchor. constant: 8)
        let margins = view.layoutMarginsGuide
        let leadingConstraint = segmentedControl.loadingAnchor.constraint(equalTo: view.leadingAnchor)
        let trailingConstrain = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            topConstraint.isActive = true
            leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        segementedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)

        @bojc func mapTypeChanged(_segControl: UISegmentedControl){
            switch _segControl.selectedSegmentIndex{
            case 0:
                mapView.mapType = .standard
            case 1:
                mapView,mapType = .hybrid
            case 2:
                mapView.mapType = .Satellitedefault:
                break
            }
            
        }
        
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        print ("Map view Controller view did load")
    }
}
