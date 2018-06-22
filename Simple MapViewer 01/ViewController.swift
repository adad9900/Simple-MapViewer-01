

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    
    var foodStoreNames = ["늘해랑"]
    var foodStoreAddress = ["부산광역시 부산진구 양정1동 305-1"]

    var i = 0
    var annos  = [MKPointAnnotation]()
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
        
        
        for item in foodStoreAddress {
            let geocoder = CLGeocoder()
            geocoder.geocodeAddressString(item) {
                
               (placemarks: [CLPlacemark]?, error: Error?) -> Void in
                if let myError = error {
                    print(myError)
                    return
                }
                let myPlacemarks = placemarks![0]

                if let loc = myPlacemarks.location {
                    let anno = MKPointAnnotation()
                    anno.coordinate = loc.coordinate
                    anno.title = self.foodStoreNames[self.i]
                    anno.subtitle = self.foodStoreAddress[self.i]
                    self.i = self.i + 1
                    
                    self.annos.append(anno)
                    self.myMapView.addAnnotations(self.annos)
                    
                    self.myMapView.showAnnotations(self.annos, animated: true)
                }
            }
        }

