//
//  PlayerOverlayView.m
//  Ingress
//
//  Created by Buddy Favors Jr on 10/13/14.
//  Copyright (c) 2014 A&A Code. All rights reserved.
//

#import "PlayerOverlayView.h"
#import "ScannerViewController.h"

@implementation PlayerOverlayView

- (void)drawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale inContext:(CGContextRef)context {
    ScannerViewController *scannerVC = [AppDelegate instance].scannerViewController;
    Player *player = (Player *)self.overlay;
    CGImageRef imageRef = scannerVC.playerImage.CGImage;
    MKMapPoint mapPoint = MKMapPointForCoordinate(self.overlay.coordinate);
    CGPoint point = [self pointForMapPoint:mapPoint];
    MKMapRect boundingMapRect = player.boundingMapRect;
    double size = boundingMapRect.size.width;
    CGContextDrawImage(context, CGRectMake(point.x-size/2, point.y-size/2, size, size), imageRef);
}

@end
