//
//  RangeCircle.m
//  Ingress
//
//  Created by Buddy Favors Jr on 10/11/14.
//  Copyright (c) 2014 A&A Code. All rights reserved.
//

#import "RangeCircle.h"

@implementation RangeCircle

@dynamic latitude;
@dynamic longitude;

- (CLLocationCoordinate2D)coordinate {
    return CLLocationCoordinate2DMake(self.latitude, self.longitude);
}

- (MKMapRect)boundingMapRect {
    MKMapPoint upperLeft = MKMapPointForCoordinate(self.coordinate);
    double pointsPerMeter = MKMapPointsPerMeterAtLatitude(self.coordinate.latitude);
    int size = SCANNER_RANGE;
    MKMapRect bounds = MKMapRectMake(upperLeft.x - (size*pointsPerMeter/2), upperLeft.y - (size*pointsPerMeter/2), size*pointsPerMeter, size*pointsPerMeter);
    return bounds;
}

@end
