//
//  ViewController.m
//  LoginAndRegisterUSingMaps
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "ImagesTableViewController.h"
#import "LoginViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *phoneTf;
@property (weak, nonatomic) IBOutlet UITextField *nameTf;
@property (weak, nonatomic) IBOutlet UITextField *emailTf;
@property (weak, nonatomic) IBOutlet UITextField *ageTf;
- (IBAction)selectImgBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *langtitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *longtitudeLabel;
- (IBAction)registerBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)click:(UITapGestureRecognizer *)sender;
- (IBAction)clickOnMap:(UITapGestureRecognizer *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    printf("img");
    NSLog(@"%@",_selectedimg);
    _signupUserDefaults=[NSUserDefaults standardUserDefaults];
  
    
    [_mapView setDelegate:self];
    _locationManager= [CLLocationManager new];
    [_locationManager setDistanceFilter:kCLHeadingFilterNone];
    [_locationManager setDelegate:self];
    [_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locationManager startUpdatingLocation];
    [_locationManager requestAlwaysAuthorization];
    [_locationManager requestWhenInUseAuthorization];
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selectImgBtn:(UIButton *)sender {
    ImagesTableViewController *imagesTable=[self.storyboard instantiateViewControllerWithIdentifier:@"tableview"];
    
    [self.navigationController pushViewController:imagesTable animated:YES];

}
- (IBAction)registerBtn:(UIButton *)sender {


 
    LoginViewController *loginviewcontroller=[self.storyboard instantiateViewControllerWithIdentifier:@"loginview"];
    
    [_signupUserDefaults setObject:[_phoneTf text] forKey:@"phone"];
    
    [_signupUserDefaults setObject:[_nameTf text] forKey:@"name"];
    [_signupUserDefaults setObject:[_emailTf text] forKey:@"email"];
    [_signupUserDefaults setObject:[_ageTf text] forKey:@"age"];
    [_signupUserDefaults setObject:[_langtitudeLabel text] forKey:@"langtitude"];
    [_signupUserDefaults setObject:[_longtitudeLabel text] forKey:@"longtitude"];
    NSLog(@"%@",_selectedimg);
    [_signupUserDefaults setObject:_selectedimg forKey:@"img"];
    
    
    loginviewcontroller.loginUserDefaults=_signupUserDefaults;
    [self.navigationController pushViewController:loginviewcontroller animated:YES]; 
    
   
}

- (IBAction)click:(UITapGestureRecognizer *)sender {

    
    
}

- (IBAction)clickOnMap:(UITapGestureRecognizer *)sender {
    printf("updated!\n");
    CGPoint touchPoint=[sender locationInView:self.mapView];
    CLLocationCoordinate2D locationCoordinate=[_mapView convertPoint:touchPoint toCoordinateFromView:self.mapView];
   
    NSNumber *latitude=[NSNumber numberWithDouble:locationCoordinate.latitude];
    
    [_langtitudeLabel setText:[latitude stringValue] ];
    NSNumber *longtiude=[NSNumber numberWithDouble:locationCoordinate.longitude];
    
    [_longtitudeLabel setText:[longtiude stringValue] ];
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    printf(" did updated!\n");

    CLLocation *location= [locations lastObject];
    NSNumber *latitude=[NSNumber numberWithDouble:location.coordinate.latitude];
    
    [_langtitudeLabel setText:[latitude stringValue] ];
    NSNumber *longtiude=[NSNumber numberWithDouble:location.coordinate.longitude];
    
    [_longtitudeLabel setText:[longtiude stringValue] ];
    
}
@end










