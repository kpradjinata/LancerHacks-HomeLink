import Mapbox
import UIKit
import CoreLocation
import MessageUI

class MapViewController: UIViewController, MGLMapViewDelegate {
    
    @IBOutlet var mapView: MGLMapView!
    let locationManager = CLLocationManager()
    var coordinates = [CLLocationCoordinate2D]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        
        locationManager.requestWhenInUseAuthorization()
//        locationManager.requestLocation()
        
        
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.setCenter(CLLocationCoordinate2D(latitude: 37.0902, longitude: -95.7129), zoomLevel: 2.25, animated: false)
        mapView.styleURL = MGLStyle.darkStyleURL
        mapView.tintColor = .lightGray
        mapView.zoomLevel = 2
        mapView.delegate = self
        
        var pointAnnotations = [MGLPointAnnotation]()
        for coordinate in coordinates {
        let point = MGLPointAnnotation()
        point.coordinate = coordinate
        point.title = "Rough Sleeper Reported"
        pointAnnotations.append(point)
        }
         
        mapView.addAnnotations(pointAnnotations)
    }
    
    func mapView(_ mapView: MGLMapView, didSelect annotation: MGLAnnotation) {
        print(annotation.coordinate.longitude)
    }
    
    func mapView(_ mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
    return true
    }
    
    @IBAction func reportHomeless(_ sender: Any) {
        locationManager.requestLocation()
    
    }
    
    func messageComposeViewController(controller:
        MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult) {
        //Displaying the message screen with animation.
        controller.dismiss(animated: true, completion: nil)
    
    }

}

extension MapViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            print("Lat: \(lat), Lon: \(lon)")
        
            
            if (MFMessageComposeViewController.canSendText()) {
            let controller = MFMessageComposeViewController()
            controller.body = "Homeless person found at the following coordinates: Latitude: \(lat) and Longititude: \(lon)"
            controller.recipients = ["5103201372"]
            controller.messageComposeDelegate = self as? MFMessageComposeViewControllerDelegate
            self.present(controller, animated: true, completion: nil)
            }
            //This is just for testing purpose as when you run in the simulator, you cannot send the message.
            else{
            print("Cannot send the message")
            }

            let annotation = MGLPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
            annotation.title = "Rough Sleeper Reported"
            annotation.subtitle = "Authorities and Local Shelters will be contacted!"
            mapView.addAnnotation(annotation)
            mapView.showAnnotations(mapView.annotations!, animated: true)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}

class CustomAnnotationView: MGLAnnotationView {
    override func layoutSubviews() {
    super.layoutSubviews()
     
    // Use CALayer’s corner radius to turn this view into a circle.
    layer.cornerRadius = bounds.width / 2
    layer.borderWidth = 2
    layer.borderColor = UIColor.white.cgColor
    }
     
    override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
     
    // Animate the border width in/out, creating an iris effect.
    let animation = CABasicAnimation(keyPath: "borderWidth")
    animation.duration = 0.1
    layer.borderWidth = selected ? bounds.width / 4 : 2
    layer.add(animation, forKey: "borderWidth")
    }
}
