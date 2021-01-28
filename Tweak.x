// upload 4k

%hook TFNTwitterMediaUploadConfiguration
-(bool)photoUploadHighQualityImagesSettingIsVisible {
    return YES;
} 
%end

%hook TFNTwitterAccount
-(bool)photoUploadHighQualityImagesSettingIsVisible {
    return YES;
} 
%end

%hook T1HighQualityImagesUploadSettings
-(bool)shouldUploadHighQualityImages {
    return YES;
} 
%end

// autoload hq

%hook T1ImageDisplayView
-(bool)_tfn_shouldUseHighQualityImage {
    return YES;
} 
%end

%hook T1ImageDisplayView
-(bool)_tfn_shouldUseHighestQualityImage {
    return YES;
} 
%end

%hook T1ImageQualitySettings
-(bool)shouldUseHighQualityImages {
    return YES;
} 
%end

%hook TFNTwitterAccount
-(bool)isLoadingHighestQualityImageVariantPermitted {
    return YES;
} 
%end

// double zoom for 4k

%hook TFNTwitterAccount
-(bool)isDoubleMaxZoomFor4KImagesEnabled {
  return YES;
  }
  %end
  
%hook T1SlideshowViewController
-(bool)_t1_shouldDisplayLoadHighQualityImageItemForImageDisplayView:(id)arg1 highestQuality:(bool)arg2 {
    return YES;
} 
%end

%hook T1SlideshowViewController
-(id)_t1_loadHighQualityActionItemWithTitle:(id)arg1 forImageDisplayView:(id)arg2 highestQuality:(bool)arg3 {
    arg3 = YES;
    return %orig;
} 
%end
