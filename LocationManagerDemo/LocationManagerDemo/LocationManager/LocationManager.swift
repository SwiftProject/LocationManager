//
//  LocationManager.swift
//  LocationManagerDemo
//
//  Created by 张青明 on 15/8/19.
//  Copyright (c) 2015年 极客栈. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

/// 地理定位管理类
class LocationManager: NSObject {
    
    private var locationManager:CLLocationManager!
    var delegate: LocationManagerDelegate?
    
    // MARK: -----成员属性-----
    
    var coordinate: CLLocationCoordinate2D? = nil
    
    /// 纬度
    var latitude:Double  = 0.0
    /// 经度
    var longitude:Double = 0.0
    
    /// 纬度字符串
    var latitudeAsString:String   = ""
    /// 经度字符串
    var longitudeAsString:String  = ""
    
    var lastKnownLatitude:Double  = 0.0
    var lastKnownLongitude:Double = 0.0
    
    var lastKnownLatitudeAsString:String = ""
    var lastKnownLongitudeAsString:String = ""
    
    
    override init() {
        super.init()
        self.resetLatitudeAndLongitude()
    }
    
    /**
    重新设置经纬度为0.0
    */
    // FIXME:
    private func resetCoordinate() {
        
        latitude  = 0.0
        longitude = 0.0
        
        latitudeAsString  = ""
        longitudeAsString = ""
    }
    
    /**
    重新设置经纬度为0.0
    */
    private func resetLatitudeAndLongitude() {
        latitude  = 0.0
        longitude = 0.0
        
        latitudeAsString  = ""
        longitudeAsString = ""
    }
    
    class func sharedInstance() -> LocationManager {
        
        struct Singleton {
            static var once: dispatch_once_t = 0
            static var instance: LocationManager? = nil
        }
        dispatch_once(&Singleton.once , {
            Singleton.instance
        })
        return Singleton.instance!
    }
    
}




@objc protocol LocationManagerDelegate:NSObjectProtocol
{
    //
}
