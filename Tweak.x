%hook T1ImageQualitySettings
-(bool)shouldUseHighQualityImages {
    return TRUE;
}
%end

%hook T1ImageDisplayView
-(bool)_tfn_shouldUseHighQualityImage {
    return TRUE;
}
%end

%hook T1ImageDisplayView
-(bool)_tfn_shouldUseHighestQualityImage {
    return TRUE;
}
%end
// enable double zoom for 4k images
%hook TFNTwitterAccount
-(bool)isDoubleMaxZoomFor4KImagesEnabled {
  return TRUE;
}
%end
