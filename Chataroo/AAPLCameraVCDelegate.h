//
//  AAPLCameraVCDelegate.h
//  Chataroo
//
//  Created by Chase McElroy on 4/12/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

#ifndef AAPLCameraVCDelegate_h
#define AAPLCameraVCDelegate_h
#import <Foundation/Foundation.h>

@protocol AAPLCameraVCDelegate <NSObject>

-(void)shouldEnableRecordUI:(BOOL)enable;
-(void)shouldEnableCameraUI:(BOOL)enable;
-(void)canStartRecording;
-(void)recordingHasStarted;

@end
#endif /* AAPLCameraVCDelegate_h */
