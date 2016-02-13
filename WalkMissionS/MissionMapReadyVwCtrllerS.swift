//
//  MissionMapReadyVwCtrllerS.swift
//  WalkMissionS
//
//  Created by KK_mac on 2015/11/29.
//  Copyright © 2015年 KK_mac. All rights reserved.
//

import UIKit

// Map.Kit framework をimport
import MapKit

class MissionMapReadyVwCtrllerS: UIViewController,UITableViewDelegate,UITableViewDataSource,MKMapViewDelegate  {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setMapView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setMapView(){
        self.mapView.rotateEnabled = false
        self.mapView.pitchEnabled = false
        
        // 緯度・軽度を設定
        let location:CLLocationCoordinate2D
        = CLLocationCoordinate2DMake(34.684123,135.507135)
        
        mapView.setCenterCoordinate(location,animated:true)
        
        // 縮尺を設定
        var region:MKCoordinateRegion = mapView.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        
        mapView.setRegion(region,animated:true)
        
        // 表示タイプを地図に設定
        mapView.mapType = MKMapType.Standard
        //        mapView.mapType = MKMapType.Satellite
        //          mapView.mapType = MKMapType.Hybrid // 表示タイプを航空写真と地図のハイブリッドに設定
    }
    
    
   // Cellの総数を返すデータソースメソッド.
   // (実装必須)
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
        
    }
    
   // Cellに値を設定するデータソースメソッド.
   // (実装必須)
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // 再利用するCellを取得する.
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "entrycell")
        
        // Cellに値を設定する.
        cell.textLabel!.text = indexPath.row.description  //test        
        return cell
    }
    
    //  Cellが選択された際に呼び出されるデリゲートメソッド.
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Num: \(indexPath.row)")
    }
    
}
