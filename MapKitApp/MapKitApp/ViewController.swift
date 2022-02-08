//
//  ViewController.swift
//  MapKitApp
//
//  Created by Çağdaş Ekşi on 8.02.2022.
//

import UIKit
import MapKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let search = UISearchController(searchResultsController: nil)
    
    
     override func viewDidLoad() {
        super.viewDidLoad()
    
         search.searchBar.delegate = self
         navigationItem.searchController = search
         search.searchBar.backgroundColor  = .white
         
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        
        let text = search.searchBar.text ?? "İstanbul"
        
        search(text: text)
        
    }

    func search(text: String) {
        
        let indicator = UIActivityIndicatorView()
        indicator.style = UIActivityIndicatorView.Style.large
        indicator.center = self.view.center
        indicator.hidesWhenStopped = true
        indicator.startAnimating()
        
        self.view.addSubview(indicator)
        
        let searcRequest = MKLocalSearch.Request()
        searcRequest.naturalLanguageQuery = text
        
        let activeSearch = MKLocalSearch(request: searcRequest)
        
        activeSearch.start{ (response, error) in
        
            indicator.stopAnimating()
            
            if (response == nil) {
            print("error")
                
            }else {
                
                let annotations = self.mapView.annotations
                self.mapView.removeAnnotations(annotations)
                
                let lat = response?.boundingRegion.center.latitude
                let long = response?.boundingRegion.center.longitude
                
                let annotation = MKPointAnnotation()
                annotation.title = text
                annotation.coordinate = CLLocationCoordinate2DMake(lat!, long!)
                self.mapView.addAnnotation(annotation)
                
                let coordinate = CLLocationCoordinate2DMake(lat!, long!)
                let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                let region = MKCoordinateRegion(center: coordinate, span: span)
                self.mapView.setRegion(region, animated: true)
                
            }
            
        
    }
    
}

}
