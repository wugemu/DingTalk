.class public Lorg/webrtc/Camera2Session;
.super Ljava/lang/Object;
.source "Camera2Session.java"

# interfaces
.implements Lorg/webrtc/CameraSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/Camera2Session$CameraCaptureCallback;,
        Lorg/webrtc/Camera2Session$CaptureSessionCallback;,
        Lorg/webrtc/Camera2Session$CameraStateCallback;,
        Lorg/webrtc/Camera2Session$SessionState;
    }
.end annotation


# static fields
.field private static final MIN_VIDEO_FRAMERATE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "Camera2Session"

.field private static final camera2ResolutionHistogram:Lorg/webrtc/Histogram;

.field private static final camera2StartTimeMsHistogram:Lorg/webrtc/Histogram;

.field private static final camera2StopTimeMsHistogram:Lorg/webrtc/Histogram;


# instance fields
.field private adaptFramerate:J

.field private final applicationContext:Landroid/content/Context;

.field private final callback:Lorg/webrtc/CameraSession$CreateSessionCallback;

.field private cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final cameraId:Ljava/lang/String;

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private cameraOrientation:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

.field private captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private captureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final constructionTimeNs:J

.field private enableMirror:Z

.field private final events:Lorg/webrtc/CameraSession$Events;

.field private firstFrameReported:Z

.field private fpsUnitFactor:I

.field private final framerate:I

.field private final height:I

.field private isCameraFrontFacing:Z

.field private state:Lorg/webrtc/Camera2Session$SessionState;

.field private surface:Landroid/view/Surface;

.field private final surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x2710

    const/16 v2, 0x32

    const/4 v1, 0x1

    .line 39
    const-string/jumbo v0, "WebRTC.Android.Camera2.StartTimeMs"

    .line 40
    invoke-static {v0, v1, v3, v2}, Lorg/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera2Session;->camera2StartTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 41
    const-string/jumbo v0, "WebRTC.Android.Camera2.StopTimeMs"

    .line 42
    invoke-static {v0, v1, v3, v2}, Lorg/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera2Session;->camera2StopTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 43
    const-string/jumbo v0, "WebRTC.Android.Camera2.Resolution"

    sget-object v1, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 43
    invoke-static {v0, v1}, Lorg/webrtc/Histogram;->createEnumeration(Ljava/lang/String;I)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera2Session;->camera2ResolutionHistogram:Lorg/webrtc/Histogram;

    return-void
.end method

.method private constructor <init>(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 4
    .param p1, "callback"    # Lorg/webrtc/CameraSession$CreateSessionCallback;
    .param p2, "events"    # Lorg/webrtc/CameraSession$Events;
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p5, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p6, "cameraId"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "framerate"    # I

    .prologue
    const/4 v3, 0x0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/Camera2Session;->adaptFramerate:J

    .line 76
    sget-object v0, Lorg/webrtc/Camera2Session$SessionState;->RUNNING:Lorg/webrtc/Camera2Session$SessionState;

    iput-object v0, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    .line 77
    iput-boolean v3, p0, Lorg/webrtc/Camera2Session;->firstFrameReported:Z

    .line 307
    const-string/jumbo v0, "Camera2Session"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Create new camera2 session on cameraId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/Camera2Session;->constructionTimeNs:J

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 312
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->callback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    .line 313
    iput-object p2, p0, Lorg/webrtc/Camera2Session;->events:Lorg/webrtc/CameraSession$Events;

    .line 314
    iput-object p3, p0, Lorg/webrtc/Camera2Session;->applicationContext:Landroid/content/Context;

    .line 315
    iput-object p4, p0, Lorg/webrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 316
    iput-object p5, p0, Lorg/webrtc/Camera2Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 317
    iput-object p6, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    .line 318
    iput p7, p0, Lorg/webrtc/Camera2Session;->width:I

    .line 319
    iput p8, p0, Lorg/webrtc/Camera2Session;->height:I

    .line 320
    iput p9, p0, Lorg/webrtc/Camera2Session;->framerate:I

    .line 321
    iput-boolean v3, p0, Lorg/webrtc/Camera2Session;->enableMirror:Z

    .line 323
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->start()V

    .line 324
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/Camera2Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/webrtc/Camera2Session;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/webrtc/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$102(Lorg/webrtc/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/webrtc/Camera2Session;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/webrtc/Camera2Session;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/webrtc/Camera2Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget v0, p0, Lorg/webrtc/Camera2Session;->fpsUnitFactor:I

    return v0
.end method

.method static synthetic access$1600(Lorg/webrtc/Camera2Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/webrtc/Camera2Session;->firstFrameReported:Z

    return v0
.end method

.method static synthetic access$1602(Lorg/webrtc/Camera2Session;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/webrtc/Camera2Session;->firstFrameReported:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/webrtc/Camera2Session;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/webrtc/Camera2Session;->constructionTimeNs:J

    return-wide v0
.end method

.method static synthetic access$1800()Lorg/webrtc/Histogram;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/webrtc/Camera2Session;->camera2StartTimeMsHistogram:Lorg/webrtc/Histogram;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/webrtc/Camera2Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->getFrameOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/webrtc/Camera2Session;)Lorg/webrtc/Camera2Session$SessionState;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/webrtc/Camera2Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/webrtc/Camera2Session;->isCameraFrontFacing:Z

    return v0
.end method

.method static synthetic access$202(Lorg/webrtc/Camera2Session;Lorg/webrtc/Camera2Session$SessionState;)Lorg/webrtc/Camera2Session$SessionState;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Lorg/webrtc/Camera2Session$SessionState;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/webrtc/Camera2Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/webrtc/Camera2Session;->enableMirror:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/webrtc/Camera2Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget v0, p0, Lorg/webrtc/Camera2Session;->cameraOrientation:I

    return v0
.end method

.method static synthetic access$2300(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/Camera2Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->stopInternal()V

    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$CreateSessionCallback;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->callback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$Events;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->events:Lorg/webrtc/CameraSession$Events;

    return-object v0
.end method

.method static synthetic access$600(Lorg/webrtc/Camera2Session;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$702(Lorg/webrtc/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$800(Lorg/webrtc/Camera2Session;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    return-object v0
.end method

.method static synthetic access$900(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    return-object v0
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 505
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 506
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    return-void
.end method

.method public static create(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 11
    .param p0, "callback"    # Lorg/webrtc/CameraSession$CreateSessionCallback;
    .param p1, "events"    # Lorg/webrtc/CameraSession$Events;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p5, "cameraId"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "framerate"    # I

    .prologue
    .line 299
    const-string/jumbo v1, "Camera2Session"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create new camera2 on cameraId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " framerate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    new-instance v1, Lorg/webrtc/Camera2Session;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lorg/webrtc/Camera2Session;-><init>(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V

    .line 302
    return-void
.end method

.method private findCaptureFormat()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 344
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 346
    iget-object v5, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 347
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Range;

    .line 348
    .local v2, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v2}, Lorg/webrtc/Camera2Enumerator;->getFpsUnitFactor([Landroid/util/Range;)I

    move-result v5

    iput v5, p0, Lorg/webrtc/Camera2Session;->fpsUnitFactor:I

    .line 349
    iget v5, p0, Lorg/webrtc/Camera2Session;->fpsUnitFactor:I

    .line 350
    invoke-static {v2, v5}, Lorg/webrtc/Camera2Enumerator;->convertFramerates([Landroid/util/Range;I)Ljava/util/List;

    move-result-object v3

    .line 351
    .local v3, "framerateRanges":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;>;"
    iget-object v5, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v5}, Lorg/webrtc/Camera2Enumerator;->getSupportedSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v4

    .line 352
    .local v4, "sizes":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/Size;>;"
    const-string/jumbo v5, "Camera2Session"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Available preview sizes: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    const-string/jumbo v5, "Camera2Session"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Available fps ranges: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 356
    :cond_0
    const-string/jumbo v5, "No supported capture formats."

    invoke-direct {p0, v5}, Lorg/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    .line 359
    :cond_1
    iget v5, p0, Lorg/webrtc/Camera2Session;->framerate:I

    .line 360
    invoke-static {v3, v5}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object v0

    .line 362
    .local v0, "bestFpsRange":Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    iget v5, p0, Lorg/webrtc/Camera2Session;->width:I

    iget v6, p0, Lorg/webrtc/Camera2Session;->height:I

    invoke-static {v4, v5, v6}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;

    move-result-object v1

    .line 363
    .local v1, "bestSize":Lorg/webrtc/Size;
    sget-object v5, Lorg/webrtc/Camera2Session;->camera2ResolutionHistogram:Lorg/webrtc/Histogram;

    invoke-static {v5, v1}, Lorg/webrtc/CameraEnumerationAndroid;->reportCameraResolution(Lorg/webrtc/Histogram;Lorg/webrtc/Size;)V

    .line 365
    new-instance v5, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v6, v1, Lorg/webrtc/Size;->width:I

    iget v7, v1, Lorg/webrtc/Size;->height:I

    invoke-direct {v5, v6, v7, v0}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IILorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    iput-object v5, p0, Lorg/webrtc/Camera2Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 366
    const-string/jumbo v5, "Camera2Session"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Using best capture format: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/webrtc/Camera2Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method private getDeviceOrientation()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 477
    iget-object v2, p0, Lorg/webrtc/Camera2Session;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 478
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 490
    const/4 v0, 0x0

    .line 493
    .local v0, "orientation":I
    :goto_0
    return v0

    .line 480
    .end local v0    # "orientation":I
    :pswitch_0
    const/16 v0, 0x5a

    .line 481
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 483
    .end local v0    # "orientation":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 484
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 486
    .end local v0    # "orientation":I
    :pswitch_2
    const/16 v0, 0x10e

    .line 487
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFrameOrientation()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 497
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->getDeviceOrientation()I

    move-result v0

    .line 498
    .local v0, "rotation":I
    iget-boolean v1, p0, Lorg/webrtc/Camera2Session;->isCameraFrontFacing:Z

    if-nez v1, :cond_0

    .line 499
    rsub-int v0, v0, 0x168

    .line 501
    :cond_0
    iget v1, p0, Lorg/webrtc/Camera2Session;->cameraOrientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private openCamera()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 370
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 372
    const-string/jumbo v1, "Camera2Session"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Opening cameraId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->events:Lorg/webrtc/CameraSession$Events;

    invoke-interface {v1}, Lorg/webrtc/CameraSession$Events;->onCameraOpening()V

    .line 376
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    new-instance v3, Lorg/webrtc/Camera2Session$CameraStateCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/webrtc/Camera2Session$CameraStateCallback;-><init>(Lorg/webrtc/Camera2Session;Lorg/webrtc/Camera2Session$1;)V

    iget-object v4, p0, Lorg/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to open cameraId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 462
    const-string/jumbo v1, "Camera2Session"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 465
    .local v0, "startFailure":Z
    :cond_0
    sget-object v1, Lorg/webrtc/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/Camera2Session$SessionState;

    iput-object v1, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    .line 466
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->stopInternal()V

    .line 467
    if-eqz v0, :cond_1

    .line 468
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->callback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    invoke-interface {v1, p1}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Ljava/lang/String;)V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->events:Lorg/webrtc/CameraSession$Events;

    const/4 v2, -0x1

    invoke-interface {v1, p0, p1, v2}, Lorg/webrtc/CameraSession$Events;->onCameraError(Lorg/webrtc/CameraSession;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private start()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 328
    const-string/jumbo v1, "Camera2Session"

    const-string/jumbo v3, "start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/webrtc/Camera2Session;->cameraOrientation:I

    .line 336
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lorg/webrtc/Camera2Session;->isCameraFrontFacing:Z

    .line 339
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->findCaptureFormat()V

    .line 340
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->openCamera()V

    .line 341
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getCameraCharacteristics(): "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    move v1, v2

    .line 336
    goto :goto_1
.end method

.method private stopInternal()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 438
    const-string/jumbo v0, "Camera2Session"

    const-string/jumbo v1, "Stop internal"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    sput v3, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->cameraFps:I

    .line 440
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 442
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 444
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 446
    iput-object v4, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 450
    iput-object v4, p0, Lorg/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    .line 452
    :cond_1
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 454
    iput-object v4, p0, Lorg/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 457
    :cond_2
    const-string/jumbo v0, "Camera2Session"

    const-string/jumbo v1, "Stop done"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    return-void
.end method


# virtual methods
.method public checkLightEnable()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v2, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 416
    .local v0, "available":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 418
    .end local v0    # "available":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return v1

    .line 416
    .restart local v0    # "available":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public enableCameraLight(Z)V
    .locals 7
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 398
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 399
    if-eqz p1, :cond_1

    .line 400
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 401
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lorg/webrtc/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 404
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lorg/webrtc/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string/jumbo v1, "Camera2Session"

    const-string/jumbo v2, "enableCameraLight"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "cameraId"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public enableMirror(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 529
    iput-boolean p1, p0, Lorg/webrtc/Camera2Session;->enableMirror:Z

    .line 530
    return-void
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, -0x1

    return v0
.end method

.method needDropFrame()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 513
    .local v2, "curtime":J
    iget v5, p0, Lorg/webrtc/Camera2Session;->framerate:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_0

    .line 523
    :goto_0
    return v4

    .line 518
    :cond_0
    iget v5, p0, Lorg/webrtc/Camera2Session;->framerate:I

    int-to-long v6, v5

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 519
    .local v0, "curr_ticks":J
    iget-wide v6, p0, Lorg/webrtc/Camera2Session;->adaptFramerate:J

    cmp-long v5, v6, v0

    if-ltz v5, :cond_1

    .line 520
    const/4 v4, 0x1

    goto :goto_0

    .line 522
    :cond_1
    iput-wide v0, p0, Lorg/webrtc/Camera2Session;->adaptFramerate:J

    goto :goto_0
.end method

.method public setBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 424
    return-void
.end method

.method public setCameraXParam([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # [Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 435
    return-void
.end method

.method public stop()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 384
    const-string/jumbo v3, "Camera2Session"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Stop camera2 session on cameraId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 386
    iget-object v3, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    sget-object v4, Lorg/webrtc/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/Camera2Session$SessionState;

    if-eq v3, v4, :cond_0

    .line 387
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 388
    .local v0, "stopStartTime":J
    sget-object v3, Lorg/webrtc/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/Camera2Session$SessionState;

    iput-object v3, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    .line 389
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->stopInternal()V

    .line 390
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v2, v4

    .line 391
    .local v2, "stopTimeMs":I
    sget-object v3, Lorg/webrtc/Camera2Session;->camera2StopTimeMsHistogram:Lorg/webrtc/Histogram;

    invoke-virtual {v3, v2}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 393
    .end local v0    # "stopStartTime":J
    .end local v2    # "stopTimeMs":I
    :cond_0
    return-void
.end method
