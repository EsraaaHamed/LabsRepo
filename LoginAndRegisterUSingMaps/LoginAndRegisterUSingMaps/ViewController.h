//
//  ViewController.h
//  LoginAndRegisterUSingMaps
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController  <MKMapViewDelegate,CLLocationManagerDelegate>

{
    
}
@property NSUserDefaults *signupUserDefaults;
@property NSString *selectedimg;
@property CLLocationManager *locationManager;

@end

