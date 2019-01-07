.class public Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;
.super Ljava/lang/Object;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliCameraConfig"
.end annotation


# instance fields
.field public autoFocus:Z

.field public flash:Z

.field public preferFps:I

.field public preferHeight:I

.field public preferWidth:I

.field public restart:Z

.field public sharedContext:J

.field public video_source:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;->video_source:I

    .line 122
    iput-boolean v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;->autoFocus:Z

    .line 123
    iput-boolean v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;->flash:Z

    .line 124
    iput-boolean v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;->restart:Z

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;->sharedContext:J

    return-void
.end method
