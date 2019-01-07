.class public Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
.super Ljava/lang/Object;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliSubscribeConfig"
.end annotation


# instance fields
.field public audio_track_label:Ljava/lang/String;

.field public stream_label:Ljava/lang/String;

.field public video_track_labels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_MAX:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->getValue()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    return-void
.end method
