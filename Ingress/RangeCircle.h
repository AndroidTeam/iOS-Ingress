//
//  RangeCircle.h
//  Ingress
//
//  Created by Buddy Favors Jr on 10/11/14.
//  Copyright (c) 2014 A&A Code. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface RangeCircle : NSManagedObject <MKOverlay>

@property (nonatomic) CLLocationDegrees latitude;
@property (nonatomic) CLLocationDegrees longitude;

@property (nonatomic, readonly) MKMapRect boundingMapRect;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@end
