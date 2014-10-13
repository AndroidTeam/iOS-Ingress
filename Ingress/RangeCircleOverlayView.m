//
//  RangeCircleOverlayView.m
//  Ingress
//
//  Created by Buddy Favors Jr on 10/12/14.
//  Copyright (c) 2014 A&A Code. All rights reserved.
//

#import "RangeCircleOverlayView.h"
#import "ScannerViewController.h"

@implementation RangeCircleOverlayView

- (void)drawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale inContext:(CGContextRef)context {
    ScannerViewController *scannerVC = [AppDelegate instance].scannerViewController;
    RangeCircle *rangeCircle = (RangeCircle *)self.overlay;
    CGImageRef imageRef = scannerVC.rangeCircleImage.CGImage;
    MKMapPoint mapPoint = MKMapPointForCoordinate(self.overlay.coordinate);
    CGPoint point = [self pointForMapPoint:mapPoint];
    MKMapRect boundingMapRect = rangeCircle.boundingMapRect;
    double size = boundingMapRect.size.width;
    CGContextDrawImage(context, CGRectMake(point.x-size/2, point.y-size/2, size, size), imageRef);
}

@end
