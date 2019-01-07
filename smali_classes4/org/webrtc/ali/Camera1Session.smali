.class Lorg/webrtc/ali/Camera1Session;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Lorg/webrtc/ali/CameraSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/Camera1Session$SessionState;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Camera1Session"

.field private static final camera1ResolutionHistogram:Lorg/webrtc/ali/Histogram;

.field private static final camera1StartTimeMsHistogram:Lorg/webrtc/ali/Histogram;

.field private static final camera1StopTimeMsHistogram:Lorg/webrtc/ali/Histogram;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final camera:Landroid/hardware/Camera;

.field private final cameraId:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private final captureFormat:Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

.field private final captureToTexture:Z

.field private final constructionTimeNs:J

.field private final events:Lorg/webrtc/ali/CameraSession$Events;

.field private firstFrameReported:Z

.field private final info:Landroid/hardware/Camera$CameraInfo;

.field private state:Lorg/webrtc/ali/Camera1Session$SessionState;

.field private final surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x2710

    const/16 v2, 0x32

    const/4 v1, 0x1

    .line 30
    const-string/jumbo v0, "WebRTC.Android.Camera1.StartTimeMs"

    .line 31
    invoke-static {v0, v1, v3, v2}, Lorg/webrtc/ali/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/ali/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/Camera1Session;->camera1StartTimeMsHistogram:Lorg/webrtc/ali/Histogram;

    .line 32
    const-string/jumbo v0, "WebRTC.Android.Camera1.StopTimeMs"

    .line 33
    invoke-static {v0, v1, v3, v2}, Lorg/webrtc/ali/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/ali/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/Camera1Session;->camera1StopTimeMsHistogram:Lorg/webrtc/ali/Histogram;

    .line 34
    const-string/jumbo v0, "WebRTC.Android.Camera1.Resolution"

    sget-object v1, Lorg/webrtc/ali/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 34
    invoke-static {v0, v1}, Lorg/webrtc/ali/Histogram;->createEnumeration(Ljava/lang/String;I)Lorg/webrtc/ali/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/Camera1Session;->camera1ResolutionHistogram:Lorg/webrtc/ali/Histogram;

    return-void
.end method

.method private constructor <init>(Lorg/webrtc/ali/CameraSession$Events;ZLandroid/content/Context;Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/media/MediaRecorder;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;J)V
    .locals 4
    .param p1, "events"    # Lorg/webrtc/ali/CameraSession$Events;
    .param p2, "captureToTexture"    # Z
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p5, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p6, "cameraId"    # I
    .param p7, "camera"    # Landroid/hardware/Camera;
    .param p8, "info"    # Landroid/hardware/Camera$CameraInfo;
    .param p9, "captureFormat"    # Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;
    .param p10, "constructionTimeNs"    # J

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/Camera1Session;->firstFrameReported:Z

    .line 153
    const-string/jumbo v0, "Camera1Session"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Create new camera1 session on camera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 156
    iput-object p1, p0, Lorg/webrtc/ali/Camera1Session;->events:Lorg/webrtc/ali/CameraSession$Events;

    .line 157
    iput-boolean p2, p0, Lorg/webrtc/ali/Camera1Session;->captureToTexture:Z

    .line 158
    iput-object p3, p0, Lorg/webrtc/ali/Camera1Session;->applicationContext:Landroid/content/Context;

    .line 159
    iput-object p4, p0, Lorg/webrtc/ali/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    .line 160
    iput p6, p0, Lorg/webrtc/ali/Camera1Session;->cameraId:I

    .line 161
    iput-object p7, p0, Lorg/webrtc/ali/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 162
    iput-object p8, p0, Lorg/webrtc/ali/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 163
    iput-object p9, p0, Lorg/webrtc/ali/Camera1Session;->captureFormat:Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    .line 164
    iput-wide p10, p0, Lorg/webrtc/ali/Camera1Session;->constructionTimeNs:J

    .line 166
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->startCapturing()V

    .line 168
    if-eqz p5, :cond_0

    .line 169
    invoke-virtual {p7}, Landroid/hardware/Camera;->unlock()V

    .line 170
    invoke-virtual {p5, p7}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/Camera1Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->stopInternal()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/CameraSession$Events;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->events:Lorg/webrtc/ali/CameraSession$Events;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->captureFormat:Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/webrtc/ali/Camera1Session;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lorg/webrtc/ali/Camera1Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/Camera1Session$SessionState;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->state:Lorg/webrtc/ali/Camera1Session$SessionState;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/SurfaceTextureHelper;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/ali/Camera1Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    iget-boolean v0, p0, Lorg/webrtc/ali/Camera1Session;->firstFrameReported:Z

    return v0
.end method

.method static synthetic access$502(Lorg/webrtc/ali/Camera1Session;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lorg/webrtc/ali/Camera1Session;->firstFrameReported:Z

    return p1
.end method

.method static synthetic access$600(Lorg/webrtc/ali/Camera1Session;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/webrtc/ali/Camera1Session;->constructionTimeNs:J

    return-wide v0
.end method

.method static synthetic access$700()Lorg/webrtc/ali/Histogram;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/webrtc/ali/Camera1Session;->camera1StartTimeMsHistogram:Lorg/webrtc/ali/Histogram;

    return-object v0
.end method

.method static synthetic access$800(Lorg/webrtc/ali/Camera1Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->getFrameOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/webrtc/ali/Camera1Session;)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 339
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    return-void
.end method

.method public static create(Lorg/webrtc/ali/CameraSession$CreateSessionCallback;Lorg/webrtc/ali/CameraSession$Events;ZLandroid/content/Context;Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/media/MediaRecorder;IIII)V
    .locals 22
    .param p0, "callback"    # Lorg/webrtc/ali/CameraSession$CreateSessionCallback;
    .param p1, "events"    # Lorg/webrtc/ali/CameraSession$Events;
    .param p2, "captureToTexture"    # Z
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p5, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p6, "cameraId"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "framerate"    # I

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 59
    .local v14, "constructionTimeNs":J
    const-string/jumbo v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Open camera "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-interface/range {p1 .. p1}, Lorg/webrtc/ali/CameraSession$Events;->onCameraOpening()V

    .line 64
    :try_start_0
    invoke-static/range {p6 .. p6}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 71
    .local v11, "camera":Landroid/hardware/Camera;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/webrtc/ali/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    new-instance v12, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v12}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 79
    .local v12, "info":Landroid/hardware/Camera$CameraInfo;
    move/from16 v0, p6

    invoke-static {v0, v12}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 81
    invoke-virtual {v11}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v20

    .line 83
    .local v20, "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, v20

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/Camera1Session;->findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v13

    .line 84
    .local v13, "captureFormat":Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;
    move-object/from16 v0, v20

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/Camera1Session;->findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lorg/webrtc/ali/Size;

    move-result-object v21

    .line 86
    .local v21, "pictureSize":Lorg/webrtc/ali/Size;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-static {v11, v0, v13, v1, v2}, Lorg/webrtc/ali/Camera1Session;->updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;Lorg/webrtc/ali/Size;Z)V

    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {v13}, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->frameSize()I

    move-result v18

    .line 91
    .local v18, "frameSize":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    const/4 v4, 0x3

    move/from16 v0, v19

    if-ge v0, v4, :cond_0

    .line 92
    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 93
    .local v16, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 91
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 65
    .end local v11    # "camera":Landroid/hardware/Camera;
    .end local v12    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v13    # "captureFormat":Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;
    .end local v16    # "buffer":Ljava/nio/ByteBuffer;
    .end local v18    # "frameSize":I
    .end local v19    # "i":I
    .end local v20    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v21    # "pictureSize":Lorg/webrtc/ali/Size;
    :catch_0
    move-exception v17

    .line 66
    .local v17, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lorg/webrtc/ali/CameraSession$FailureType;->ERROR:Lorg/webrtc/ali/CameraSession$FailureType;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v5}, Lorg/webrtc/ali/CameraSession$CreateSessionCallback;->onFailure(Lorg/webrtc/ali/CameraSession$FailureType;Ljava/lang/String;)V

    .line 103
    .end local v17    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 72
    .restart local v11    # "camera":Landroid/hardware/Camera;
    :catch_1
    move-exception v17

    .line 73
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Landroid/hardware/Camera;->release()V

    .line 74
    sget-object v4, Lorg/webrtc/ali/CameraSession$FailureType;->ERROR:Lorg/webrtc/ali/CameraSession$FailureType;

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v5}, Lorg/webrtc/ali/CameraSession$CreateSessionCallback;->onFailure(Lorg/webrtc/ali/CameraSession$FailureType;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v12    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v13    # "captureFormat":Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;
    .restart local v20    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v21    # "pictureSize":Lorg/webrtc/ali/Size;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 100
    new-instance v4, Lorg/webrtc/ali/Camera1Session;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v4 .. v15}, Lorg/webrtc/ali/Camera1Session;-><init>(Lorg/webrtc/ali/CameraSession$Events;ZLandroid/content/Context;Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/media/MediaRecorder;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;J)V

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/webrtc/ali/CameraSession$CreateSessionCallback;->onDone(Lorg/webrtc/ali/CameraSession;)V

    goto :goto_1
.end method

.method private static findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    .prologue
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/webrtc/ali/Camera1Enumerator;->convertFramerates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "supportedFramerates":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;>;"
    const-string/jumbo v3, "Camera1Session"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Available fps ranges: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v2, p3}, Lorg/webrtc/ali/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object v0

    .line 137
    .local v0, "fpsRange":Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/webrtc/ali/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 136
    invoke-static {v3, p1, p2}, Lorg/webrtc/ali/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/ali/Size;

    move-result-object v1

    .line 138
    .local v1, "previewSize":Lorg/webrtc/ali/Size;
    sget-object v3, Lorg/webrtc/ali/Camera1Session;->camera1ResolutionHistogram:Lorg/webrtc/ali/Histogram;

    invoke-static {v3, v1}, Lorg/webrtc/ali/CameraEnumerationAndroid;->reportCameraResolution(Lorg/webrtc/ali/Histogram;Lorg/webrtc/ali/Size;)V

    .line 140
    new-instance v3, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    iget v4, v1, Lorg/webrtc/ali/Size;->width:I

    iget v5, v1, Lorg/webrtc/ali/Size;->height:I

    invoke-direct {v3, v4, v5, v0}, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;-><init>(IILorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    return-object v3
.end method

.method private static findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lorg/webrtc/ali/Size;
    .locals 1
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/ali/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-static {v0, p1, p2}, Lorg/webrtc/ali/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/ali/Size;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceOrientation()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 311
    iget-object v2, p0, Lorg/webrtc/ali/Camera1Session;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 312
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 324
    const/4 v0, 0x0

    .line 327
    .local v0, "orientation":I
    :goto_0
    return v0

    .line 314
    .end local v0    # "orientation":I
    :pswitch_0
    const/16 v0, 0x5a

    .line 315
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 317
    .end local v0    # "orientation":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 318
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 320
    .end local v0    # "orientation":I
    :pswitch_2
    const/16 v0, 0x10e

    .line 321
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 312
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
    .line 331
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->getDeviceOrientation()I

    move-result v0

    .line 332
    .local v0, "rotation":I
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    .line 333
    rsub-int v0, v0, 0x168

    .line 335
    :cond_0
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private listenForBytebufferFrames()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 277
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->camera:Landroid/hardware/Camera;

    new-instance v1, Lorg/webrtc/ali/Camera1Session$3;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/Camera1Session$3;-><init>(Lorg/webrtc/ali/Camera1Session;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 306
    return-void
.end method

.method private listenForTextureFrames()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    new-instance v1, Lorg/webrtc/ali/Camera1Session$2;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/Camera1Session$2;-><init>(Lorg/webrtc/ali/Camera1Session;)V

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->startListening(Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 274
    return-void
.end method

.method private startCapturing()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 187
    const-string/jumbo v1, "Camera1Session"

    const-string/jumbo v2, "Start capturing"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->checkIsOnCameraThread()V

    .line 190
    sget-object v1, Lorg/webrtc/ali/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/ali/Camera1Session$SessionState;

    iput-object v1, p0, Lorg/webrtc/ali/Camera1Session;->state:Lorg/webrtc/ali/Camera1Session$SessionState;

    .line 192
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session;->camera:Landroid/hardware/Camera;

    new-instance v2, Lorg/webrtc/ali/Camera1Session$1;

    invoke-direct {v2, p0}, Lorg/webrtc/ali/Camera1Session$1;-><init>(Lorg/webrtc/ali/Camera1Session;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 211
    iget-boolean v1, p0, Lorg/webrtc/ali/Camera1Session;->captureToTexture:Z

    if-eqz v1, :cond_0

    .line 212
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->listenForTextureFrames()V

    .line 217
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_1
    return-void

    .line 214
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->listenForBytebufferFrames()V

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->stopInternal()V

    .line 220
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session;->events:Lorg/webrtc/ali/CameraSession$Events;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lorg/webrtc/ali/CameraSession$Events;->onCameraError(Lorg/webrtc/ali/CameraSession;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopInternal()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 225
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "Stop internal"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->checkIsOnCameraThread()V

    .line 227
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->state:Lorg/webrtc/ali/Camera1Session$SessionState;

    sget-object v1, Lorg/webrtc/ali/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/ali/Camera1Session$SessionState;

    if-ne v0, v1, :cond_0

    .line 228
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "Camera is already stopped"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v0, Lorg/webrtc/ali/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/ali/Camera1Session$SessionState;

    iput-object v0, p0, Lorg/webrtc/ali/Camera1Session;->state:Lorg/webrtc/ali/Camera1Session$SessionState;

    .line 233
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->stopListening()V

    .line 237
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 238
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 239
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session;->events:Lorg/webrtc/ali/CameraSession$Events;

    invoke-interface {v0, p0}, Lorg/webrtc/ali/CameraSession$Events;->onCameraClosed(Lorg/webrtc/ali/CameraSession;)V

    .line 240
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "Stop done"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;Lorg/webrtc/ali/Size;Z)V
    .locals 3
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "captureFormat"    # Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;
    .param p3, "pictureSize"    # Lorg/webrtc/ali/Size;
    .param p4, "captureToTexture"    # Z

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p2, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v1, v1, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget-object v2, p2, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v2, v2, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 111
    iget v1, p2, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget v2, p2, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 112
    iget v1, p3, Lorg/webrtc/ali/Size;->width:I

    iget v2, p3, Lorg/webrtc/ali/Size;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 113
    if-nez p4, :cond_0

    .line 114
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 120
    :cond_1
    const-string/jumbo v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const-string/jumbo v1, "continuous-video"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 123
    :cond_2
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 124
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 176
    const-string/jumbo v3, "Camera1Session"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Stop camera1 session on camera "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/webrtc/ali/Camera1Session;->cameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->checkIsOnCameraThread()V

    .line 178
    iget-object v3, p0, Lorg/webrtc/ali/Camera1Session;->state:Lorg/webrtc/ali/Camera1Session$SessionState;

    sget-object v4, Lorg/webrtc/ali/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/ali/Camera1Session$SessionState;

    if-eq v3, v4, :cond_0

    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 180
    .local v0, "stopStartTime":J
    invoke-direct {p0}, Lorg/webrtc/ali/Camera1Session;->stopInternal()V

    .line 181
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v2, v4

    .line 182
    .local v2, "stopTimeMs":I
    sget-object v3, Lorg/webrtc/ali/Camera1Session;->camera1StopTimeMsHistogram:Lorg/webrtc/ali/Histogram;

    invoke-virtual {v3, v2}, Lorg/webrtc/ali/Histogram;->addSample(I)V

    .line 184
    .end local v0    # "stopStartTime":J
    .end local v2    # "stopTimeMs":I
    :cond_0
    return-void
.end method
