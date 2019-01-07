.class public Lcom/taobao/taolive/TaoLive$TaoLiveConfig;
.super Ljava/lang/Object;
.source "TaoLive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/TaoLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaoLiveConfig"
.end annotation


# instance fields
.field public appKey:Ljava/lang/String;

.field public audioBitrate:J

.field public audioChannels:I

.field public audioCodec:Ljava/lang/String;

.field public audioProfile:Ljava/lang/String;

.field public audioSamplerate:J

.field public autoBitrateControl:I

.field public cameraId:I

.field public dataDir:I

.field public deviceId:Ljava/lang/String;

.field public isLandscape:I

.field public localUserId:Ljava/lang/String;

.field public mediaType:I

.field public serviveName:Ljava/lang/String;

.field public surface:Landroid/view/Surface;

.field public url:Ljava/lang/String;

.field public videoBitrate:J

.field public videoCodec:Ljava/lang/String;

.field public videoFps:I

.field public videoHeight:I

.field public videoProfile:Ljava/lang/String;

.field public videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->serviveName:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->deviceId:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->dataDir:I

    .line 64
    iput v1, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->mediaType:I

    .line 65
    iput-object v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->surface:Landroid/view/Surface;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->cameraId:I

    .line 68
    iput v1, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->autoBitrateControl:I

    .line 69
    iput v1, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->isLandscape:I

    .line 72
    const-string/jumbo v0, "H264"

    iput-object v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoCodec:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "high"

    iput-object v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoProfile:Ljava/lang/String;

    .line 74
    const/16 v0, 0x170

    iput v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoWidth:I

    .line 75
    const/16 v0, 0x280

    iput v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoHeight:I

    .line 76
    const/16 v0, 0x14

    iput v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoFps:I

    .line 77
    const-wide/32 v0, 0xaae60

    iput-wide v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoBitrate:J

    .line 80
    const-string/jumbo v0, "AAC"

    iput-object v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->audioCodec:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "LC"

    iput-object v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->audioProfile:Ljava/lang/String;

    .line 82
    const-wide/32 v0, 0xac44

    iput-wide v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->audioSamplerate:J

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->audioChannels:I

    .line 84
    const-wide/32 v0, 0xfa00

    iput-wide v0, p0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->audioBitrate:J

    .line 56
    return-void
.end method
