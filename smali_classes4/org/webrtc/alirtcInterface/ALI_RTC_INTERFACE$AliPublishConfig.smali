.class public Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;
.super Ljava/lang/Object;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliPublishConfig"
.end annotation


# instance fields
.field public audio_track:Z

.field public video_track_profile:[I

.field public video_tracks:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_MAX:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->getValue()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->video_tracks:[Z

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->audio_track:Z

    .line 157
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_MAX:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->getValue()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->video_track_profile:[I

    return-void
.end method
