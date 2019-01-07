.class public Lorg/webrtc/Camera1Session;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Lorg/webrtc/CameraSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/Camera1Session$SessionState;
    }
.end annotation


# static fields
.field private static final MIN_VIDEO_FRAMERATE:I = 0xf

.field private static final NUMBER_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Camera1Session"

.field private static final camera1ResolutionHistogram:Lorg/webrtc/Histogram;

.field private static final camera1StartTimeMsHistogram:Lorg/webrtc/Histogram;

.field private static final camera1StopTimeMsHistogram:Lorg/webrtc/Histogram;


# instance fields
.field private adaptFramerate:J

.field private final applicationContext:Landroid/content/Context;

.field private final camera:Landroid/hardware/Camera;

.field private final cameraId:I

.field private final cameraOutFormat:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private final captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

.field private final constructionTimeNs:J

.field private enableMirror_:Z

.field private final events:Lorg/webrtc/CameraSession$Events;

.field private firstFrameReported:Z

.field private final framerate:I

.field private final height:I

.field private final info:Landroid/hardware/Camera$CameraInfo;

.field private state:Lorg/webrtc/Camera1Session$SessionState;

.field private final surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x2710

    const/16 v2, 0x32

    const/4 v1, 0x1

    .line 37
    const-string/jumbo v0, "WebRTC.Android.Camera1.StartTimeMs"

    .line 38
    invoke-static {v0, v1, v3, v2}, Lorg/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera1Session;->camera1StartTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 39
    const-string/jumbo v0, "WebRTC.Android.Camera1.StopTimeMs"

    .line 40
    invoke-static {v0, v1, v3, v2}, Lorg/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera1Session;->camera1StopTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 41
    const-string/jumbo v0, "WebRTC.Android.Camera1.Resolution"

    sget-object v1, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 41
    invoke-static {v0, v1}, Lorg/webrtc/Histogram;->createEnumeration(Ljava/lang/String;I)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera1Session;->camera1ResolutionHistogram:Lorg/webrtc/Histogram;

    return-void
.end method

.method private constructor <init>(Lorg/webrtc/CameraSession$Events;ILandroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;IIIILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;J)V
    .locals 6
    .param p1, "events"    # Lorg/webrtc/CameraSession$Events;
    .param p2, "cameraOutFormat"    # I
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p5, "cameraId"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "framerate"    # I
    .param p9, "camera"    # Landroid/hardware/Camera;
    .param p10, "info"    # Landroid/hardware/Camera$CameraInfo;
    .param p11, "captureFormat"    # Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .param p12, "constructionTimeNs"    # J

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/webrtc/Camera1Session;->adaptFramerate:J

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/webrtc/Camera1Session;->firstFrameReported:Z

    .line 64
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/webrtc/Camera1Session;->enableMirror_:Z

    .line 192
    const-string/jumbo v2, "Camera1Session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Create new camera1 session on cameraId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lorg/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 195
    iput-object p1, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    .line 196
    iput p2, p0, Lorg/webrtc/Camera1Session;->cameraOutFormat:I

    .line 197
    iput-object p3, p0, Lorg/webrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    .line 198
    iput-object p4, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 199
    iput p5, p0, Lorg/webrtc/Camera1Session;->cameraId:I

    .line 200
    iput p6, p0, Lorg/webrtc/Camera1Session;->width:I

    .line 201
    iput p7, p0, Lorg/webrtc/Camera1Session;->height:I

    .line 202
    iput p8, p0, Lorg/webrtc/Camera1Session;->framerate:I

    .line 203
    iput-object p9, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 204
    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 205
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/webrtc/Camera1Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 206
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lorg/webrtc/Camera1Session;->constructionTimeNs:J

    .line 208
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->startCapturing()V

    .line 209
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/Camera1Session;)Lorg/webrtc/Camera1Session$SessionState;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    return-object v0
.end method

.method static synthetic access$002(Lorg/webrtc/Camera1Session;Lorg/webrtc/Camera1Session$SessionState;)Lorg/webrtc/Camera1Session$SessionState;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;
    .param p1, "x1"    # Lorg/webrtc/Camera1Session$SessionState;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    return-object p1
.end method

.method static synthetic access$100(Lorg/webrtc/Camera1Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->stopInternal()V

    return-void
.end method

.method static synthetic access$1000(Lorg/webrtc/Camera1Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/webrtc/Camera1Session;->enableMirror_:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/Camera1Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/Camera1Session;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/Camera1Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/webrtc/Camera1Session;->firstFrameReported:Z

    return v0
.end method

.method static synthetic access$502(Lorg/webrtc/Camera1Session;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/webrtc/Camera1Session;->firstFrameReported:Z

    return p1
.end method

.method static synthetic access$600(Lorg/webrtc/Camera1Session;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    iget-wide v0, p0, Lorg/webrtc/Camera1Session;->constructionTimeNs:J

    return-wide v0
.end method

.method static synthetic access$700()Lorg/webrtc/Histogram;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/webrtc/Camera1Session;->camera1StartTimeMsHistogram:Lorg/webrtc/Histogram;

    return-object v0
.end method

.method static synthetic access$800(Lorg/webrtc/Camera1Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->getFrameOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 563
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    return-void
.end method

.method public static create(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;ILandroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;IIII)V
    .locals 25
    .param p0, "callback"    # Lorg/webrtc/CameraSession$CreateSessionCallback;
    .param p1, "events"    # Lorg/webrtc/CameraSession$Events;
    .param p2, "cameraOutFormat"    # I
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p5, "cameraId"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "framerate"    # I

    .prologue
    .line 70
    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    :cond_0
    const/16 v24, 0x1

    .line 71
    .local v24, "raw_capture":Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 72
    .local v16, "constructionTimeNs":J
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Open cameraId "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-interface/range {p1 .. p1}, Lorg/webrtc/CameraSession$Events;->onCameraOpening()V

    .line 77
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 84
    .local v13, "camera":Landroid/hardware/Camera;
    if-nez v13, :cond_2

    .line 85
    const-string/jumbo v4, "Camera1Session"

    const-string/jumbo v5, "Camera open failed, camera is null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const-string/jumbo v4, "Camera open failed, camera is null"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Ljava/lang/String;)V

    .line 129
    .end local v13    # "camera":Landroid/hardware/Camera;
    :goto_1
    return-void

    .line 70
    .end local v16    # "constructionTimeNs":J
    .end local v24    # "raw_capture":Z
    :cond_1
    const/16 v24, 0x0

    goto :goto_0

    .line 78
    .restart local v16    # "constructionTimeNs":J
    .restart local v24    # "raw_capture":Z
    :catch_0
    move-exception v19

    .line 79
    .local v19, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Camera open failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    .end local v19    # "e":Ljava/lang/Throwable;
    .restart local v13    # "camera":Landroid/hardware/Camera;
    :cond_2
    const-string/jumbo v4, "Camera1Session"

    const-string/jumbo v5, "Camera open success"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    new-instance v14, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v14}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 102
    .local v14, "info":Landroid/hardware/Camera$CameraInfo;
    move/from16 v0, p5

    invoke-static {v0, v14}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 104
    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v22

    .line 106
    .local v22, "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, v22

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/Camera1Session;->findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v15

    .line 107
    .local v15, "captureFormat":Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    sput-object v15, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->captureFormatSet:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 108
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "find Closest Capture Format: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    move-object/from16 v0, v22

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-static {v0, v1, v2}, Lorg/webrtc/Camera1Session;->findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lorg/webrtc/Size;

    move-result-object v23

    .line 110
    .local v23, "pictureSize":Lorg/webrtc/Size;
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "find Closest Picture Size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v13, v0, v15, v1, v2}, Lorg/webrtc/Camera1Session;->updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;Lorg/webrtc/Size;Z)V

    .line 115
    if-eqz v24, :cond_3

    .line 116
    invoke-virtual {v15}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->frameSize()I

    move-result v20

    .line 117
    .local v20, "frameSize":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ge v0, v4, :cond_3

    .line 118
    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 119
    .local v18, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 117
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 94
    .end local v14    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v15    # "captureFormat":Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .end local v20    # "frameSize":I
    .end local v21    # "i":I
    .end local v22    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v23    # "pictureSize":Lorg/webrtc/Size;
    :catch_1
    move-exception v19

    .line 95
    .local v19, "e":Ljava/io/IOException;
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Camera setPreviewTexture failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v13}, Landroid/hardware/Camera;->release()V

    .line 97
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v14    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v15    # "captureFormat":Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .restart local v22    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v23    # "pictureSize":Lorg/webrtc/Size;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 126
    new-instance v4, Lorg/webrtc/Camera1Session;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v4 .. v17}, Lorg/webrtc/Camera1Session;-><init>(Lorg/webrtc/CameraSession$Events;ILandroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;IIIILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;J)V

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onDone(Lorg/webrtc/CameraSession;)V

    goto/16 :goto_1
.end method

.method private static findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 8
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    .prologue
    const/4 v7, 0x0

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lorg/webrtc/Camera1Enumerator;->convertFramerates(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 167
    .local v3, "supportedFramerates":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;>;"
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Available fps ranges: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {v3, p3}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object v0

    .line 172
    .local v0, "fpsRange":Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lorg/webrtc/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 173
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/Size;>;"
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Available preview sizes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {v2, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;

    move-result-object v1

    .line 176
    .local v1, "previewSize":Lorg/webrtc/Size;
    sget-object v4, Lorg/webrtc/Camera1Session;->camera1ResolutionHistogram:Lorg/webrtc/Histogram;

    invoke-static {v4, v1}, Lorg/webrtc/CameraEnumerationAndroid;->reportCameraResolution(Lorg/webrtc/Histogram;Lorg/webrtc/Size;)V

    .line 178
    new-instance v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v5, v1, Lorg/webrtc/Size;->width:I

    iget v6, v1, Lorg/webrtc/Size;->height:I

    invoke-direct {v4, v5, v6, v0}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IILorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    return-object v4
.end method

.method private static findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lorg/webrtc/Size;
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/webrtc/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/Size;>;"
    const-string/jumbo v1, "Camera1Session"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Available picture sizes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-static {v0, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;

    move-result-object v1

    return-object v1
.end method

.method private getDeviceOrientation()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 520
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 521
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 533
    const/4 v0, 0x0

    .line 536
    .local v0, "orientation":I
    :goto_0
    return v0

    .line 523
    .end local v0    # "orientation":I
    :pswitch_0
    const/16 v0, 0x5a

    .line 524
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 526
    .end local v0    # "orientation":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 527
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 529
    .end local v0    # "orientation":I
    :pswitch_2
    const/16 v0, 0x10e

    .line 530
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFrameOrientation()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 540
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->getDeviceOrientation()I

    move-result v1

    .line 541
    .local v1, "rotation":I
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_0

    .line 542
    rsub-int v1, v1, 0x168

    .line 548
    :cond_0
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, v1

    rem-int/lit16 v0, v2, 0x168

    .line 549
    .local v0, "resultRotation":I
    return v0
.end method

.method private listenForBytebufferFrames()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 478
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "listen to raw buffer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    new-instance v1, Lorg/webrtc/Camera1Session$3;

    invoke-direct {v1, p0}, Lorg/webrtc/Camera1Session$3;-><init>(Lorg/webrtc/Camera1Session;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 515
    return-void
.end method

.method private listenForTextureFrames()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 435
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "listen to texture"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    new-instance v1, Lorg/webrtc/Camera1Session$2;

    invoke-direct {v1, p0}, Lorg/webrtc/Camera1Session$2;-><init>(Lorg/webrtc/Camera1Session;)V

    invoke-virtual {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->startListening(Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 475
    return-void
.end method

.method private startCapturing()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 350
    const-string/jumbo v2, "Camera1Session"

    const-string/jumbo v3, "Start capturing"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 353
    sget-object v2, Lorg/webrtc/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/Camera1Session$SessionState;

    iput-object v2, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    .line 355
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    new-instance v3, Lorg/webrtc/Camera1Session$1;

    invoke-direct {v3, p0}, Lorg/webrtc/Camera1Session$1;-><init>(Lorg/webrtc/Camera1Session;)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 376
    iget v2, p0, Lorg/webrtc/Camera1Session;->cameraOutFormat:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 377
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->listenForTextureFrames()V

    .line 387
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 388
    invoke-virtual {p0}, Lorg/webrtc/Camera1Session;->getBrightness()I

    move-result v0

    .line 389
    .local v0, "brightness":I
    if-lez v0, :cond_0

    .line 390
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    invoke-interface {v2, v0}, Lorg/webrtc/CameraSession$Events;->onAdjustBrightnessSupport(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "brightness":I
    :cond_0
    :goto_1
    const-string/jumbo v2, "Camera1Session"

    const-string/jumbo v3, "Camera start preview success"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    return-void

    .line 379
    :cond_1
    iget v2, p0, Lorg/webrtc/Camera1Session;->cameraOutFormat:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 380
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->listenForTextureFrames()V

    .line 382
    :cond_2
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->listenForBytebufferFrames()V

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lorg/webrtc/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/Camera1Session$SessionState;

    iput-object v2, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    .line 395
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->stopInternal()V

    .line 396
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, p0, v3, v4}, Lorg/webrtc/CameraSession$Events;->onCameraError(Lorg/webrtc/CameraSession;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private stopInternal()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 403
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "Stop internal"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    sput v3, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->cameraFps:I

    .line 405
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 407
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 412
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 413
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 414
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    invoke-interface {v0, p0}, Lorg/webrtc/CameraSession$Events;->onCameraClosed(Lorg/webrtc/CameraSession;)V

    .line 416
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "Stop done"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    return-void
.end method

.method private static updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;Lorg/webrtc/Size;Z)V
    .locals 7
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "captureFormat"    # Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .param p3, "pictureSize"    # Lorg/webrtc/Size;
    .param p4, "captureToRaw"    # Z

    .prologue
    const/16 v5, 0xf

    .line 134
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v2, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    .line 136
    .local v2, "minFramerate":I
    iget-object v4, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v1, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    .line 138
    .local v1, "maxFramerate":I
    if-ge v2, v5, :cond_0

    if-le v1, v5, :cond_0

    .line 140
    const/16 v2, 0xf

    .line 143
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 144
    iget v4, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget v5, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {p1, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 145
    iget v4, p3, Lorg/webrtc/Size;->width:I

    iget v5, p3, Lorg/webrtc/Size;->height:I

    invoke-virtual {p1, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 146
    if-eqz p4, :cond_1

    .line 147
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x11

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 153
    :cond_2
    const-string/jumbo v4, "continuous-video"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    const-string/jumbo v4, "continuous-video"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 157
    :cond_3
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 158
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 159
    .local v3, "paramets":Landroid/hardware/Camera$Parameters;
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cameral parameters: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method


# virtual methods
.method public checkLightEnable()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 337
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 339
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 341
    .local v0, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v2, "torch"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "off"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const/4 v2, 0x1

    .line 346
    .end local v0    # "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public enableCameraLight(Z)V
    .locals 8
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 226
    const-string/jumbo v3, "Camera1Session"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "enableCameraLight, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v3, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v3, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 231
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "flashMode":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 237
    const-string/jumbo v3, "torch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 239
    const-string/jumbo v3, "torch"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    const-string/jumbo v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 243
    :cond_2
    const-string/jumbo v3, "Camera1Session"

    const-string/jumbo v4, "enableCameraLight"

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "FLASH_MODE_TORCH not supported"

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 247
    :cond_3
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    const-string/jumbo v3, "off"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 250
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 253
    :cond_4
    const-string/jumbo v3, "Camera1Session"

    const-string/jumbo v4, "enableCameraLight"

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "FLASH_MODE_OFF not supported"

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public enableMirror(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Lorg/webrtc/Camera1Session;->enableMirror_:Z

    .line 572
    return-void
.end method

.method public getBrightness()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 304
    iget-object v5, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    if-eqz v5, :cond_1

    .line 305
    iget-object v5, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 306
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v1

    .line 307
    .local v1, "exposure":I
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 308
    .local v2, "maxExposure":I
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 309
    .local v3, "minExposure":I
    const/4 v0, -0x1

    .line 311
    .local v0, "brightness":I
    if-le v2, v3, :cond_0

    .line 312
    sub-int v5, v1, v3

    mul-int/lit8 v5, v5, 0x64

    sub-int v6, v2, v3

    div-int v0, v5, v6

    .line 314
    :cond_0
    const-string/jumbo v5, "Camera1Session"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getBrightness, minExposure: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", maxExposure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", exposure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", brightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    .end local v0    # "brightness":I
    .end local v1    # "exposure":I
    .end local v2    # "maxExposure":I
    .end local v3    # "minExposure":I
    .end local v4    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method needDropFrame()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 422
    .local v2, "curtime":J
    iget v5, p0, Lorg/webrtc/Camera1Session;->framerate:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_0

    .line 431
    :goto_0
    return v4

    .line 426
    :cond_0
    iget v5, p0, Lorg/webrtc/Camera1Session;->framerate:I

    int-to-long v6, v5

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 427
    .local v0, "curr_ticks":J
    iget-wide v6, p0, Lorg/webrtc/Camera1Session;->adaptFramerate:J

    cmp-long v5, v6, v0

    if-ltz v5, :cond_1

    .line 428
    const/4 v4, 0x1

    goto :goto_0

    .line 430
    :cond_1
    iput-wide v0, p0, Lorg/webrtc/Camera1Session;->adaptFramerate:J

    goto :goto_0
.end method

.method public setBrightness(I)V
    .locals 8
    .param p1, "brightness"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 263
    const/16 v4, 0x64

    if-gt p1, v4, :cond_0

    if-gez p1, :cond_2

    .line 265
    :cond_0
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setBrightness parameter error, brightness: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    iget-object v4, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    .line 270
    iget-object v4, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 272
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 278
    .local v1, "maxExposure":I
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 280
    .local v2, "minExposure":I
    if-gt v1, v2, :cond_3

    .line 281
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setBrightness faild, maxExposure: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", minExposure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {v3, v7}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 287
    iget-object v4, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 289
    iget-object v4, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 290
    sub-int v4, v1, v2

    mul-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x64

    add-int v0, v2, v4

    .line 291
    .local v0, "exposure":I
    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 292
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 293
    iget-object v4, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 295
    iget-object v4, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 296
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setBrightness cameral parameters: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setBrightness, minExposure: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", maxExposure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", exposure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", brightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setCameraXParam([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # [Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 326
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 327
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 328
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 329
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 333
    .end local v0    # "i":I
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 213
    const-string/jumbo v3, "Camera1Session"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Stop camera1 session on cameraId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/webrtc/Camera1Session;->cameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 215
    iget-object v3, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    sget-object v4, Lorg/webrtc/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/Camera1Session$SessionState;

    if-eq v3, v4, :cond_0

    .line 216
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 217
    .local v0, "stopStartTime":J
    sget-object v3, Lorg/webrtc/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/Camera1Session$SessionState;

    iput-object v3, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    .line 218
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->stopInternal()V

    .line 219
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v2, v4

    .line 220
    .local v2, "stopTimeMs":I
    sget-object v3, Lorg/webrtc/Camera1Session;->camera1StopTimeMsHistogram:Lorg/webrtc/Histogram;

    invoke-virtual {v3, v2}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 222
    .end local v0    # "stopStartTime":J
    .end local v2    # "stopTimeMs":I
    :cond_0
    return-void
.end method
