//
//  Player.h
//  Ingress
//
//  Created by Alex Studnička on 23.05.13.
//  Copyright (c) 2013 A&A Code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "User.h"


@interface Player : User <MKOverlay>

@property (nonatomic) int32_t ap;
@property (nonatomic) int16_t energy;
@property (nonatomic) NSTimeInterval lastInventoryUpdated;
@property (nonatomic) BOOL shouldSendEmail;
@property (nonatomic) BOOL maySendPromoEmail;
@property (nonatomic) BOOL allowNicknameEdit;
@property (nonatomic) BOOL allowFactionChoice;
@property (nonatomic) BOOL shouldPushNotifyForAtPlayer;
@property (nonatomic) BOOL shouldPushNotifyForPortalAttacks;
@property (nonatomic) CLLocationDegrees latitude;
@property (nonatomic) CLLocationDegrees longitude;

@property (nonatomic, readonly) int level;
@property (nonatomic, readonly) int maxEnergy;
@property (nonatomic, readonly) int nextLevelAP;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@end
