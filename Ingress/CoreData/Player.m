//
//  Player.m
//  Ingress
//
//  Created by Alex Studnička on 23.05.13.
//  Copyright (c) 2013 A&A Code. All rights reserved.
//

#import "Player.h"


@implementation Player

@dynamic ap;
@dynamic energy;
@dynamic lastInventoryUpdated;
@dynamic shouldSendEmail;
@dynamic maySendPromoEmail;
@dynamic allowNicknameEdit;
@dynamic allowFactionChoice;
@dynamic shouldPushNotifyForAtPlayer;
@dynamic shouldPushNotifyForPortalAttacks;
@dynamic latitude;
@dynamic longitude;

- (int)level {
	return [Utilities levelForAp:self.ap];
}

- (int)maxEnergy {
	return [Utilities maxXmForLevel:self.level];
}

- (int)nextLevelAP {
	return [Utilities maxApForLevel:self.level];
}

- (CLLocationCoordinate2D)coordinate {
    return CLLocationCoordinate2DMake(self.latitude, self.longitude);
}

- (MKMapRect)boundingMapRect {
    MKMapPoint upperLeft = MKMapPointForCoordinate(self.coordinate);
    double pointsPerMeter = MKMapPointsPerMeterAtLatitude(self.coordinate.latitude);
    int size = SCANNER_RANGE / 2;
    MKMapRect bounds = MKMapRectMake(upperLeft.x - (size*pointsPerMeter/2), upperLeft.y - (size*pointsPerMeter/2), size*pointsPerMeter, size*pointsPerMeter);
    return bounds;
}

@end
