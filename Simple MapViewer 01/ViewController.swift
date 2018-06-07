//
//  ViewController.swift
//  Simple MapViewer 01
//
//  Created by D7703_16 on 2018. 6. 7..
//  Copyright © 2018년 201412402. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //위도 경도 설정
        let loc : CLLocationCoordinate2D = CLLocationCoordinate2D (latitude: 35.165999, longitude: 129.072543)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.009, longitudeDelta: 0.009)
        
        let region = MKCoordinateRegion(center: loc, span: span)
        
        myMapView.setRegion(region, animated: true)
        
        let anno = MKPointAnnotation()
        anno.coordinate = loc
        anno.title = "DIT 동의과학대학교"
        anno.subtitle = "내꿈이 실현되는곳"
        myMapView.addAnnotation(anno)
        




}

}
