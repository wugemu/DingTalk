.class abstract Lorg/webrtc/ali/CameraCapturer;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lorg/webrtc/ali/CameraVideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;,
        Lorg/webrtc/ali/CameraCapturer$SwitchState;
    }
.end annotation


# static fields
.field private static final MAX_OPEN_CAMERA_ATTEMPTS:I = 0x3

.field private static final OPEN_CAMERA_DELAY_MS:I = 0x1f4

.field private static final OPEN_CAMERA_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CameraCapturer"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private final cameraEnumerator:Lorg/webrtc/ali/CameraEnumerator;

.field private cameraName:Ljava/lang/String;

.field private final cameraSessionEventsHandler:Lorg/webrtc/ali/CameraSession$Events;

.field private cameraStatistics:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

.field private cameraThreadHandler:Landroid/os/Handler;

.field private capturerObserver:Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

.field private final createSessionCallback:Lorg/webrtc/ali/CameraSession$CreateSessionCallback;

.field private currentSession:Lorg/webrtc/ali/CameraSession;

.field private final eventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

.field private firstFrameObserved:Z

.field private framerate:I

.field private height:I

.field private mediaRecorderEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

.field private mediaRecorderState:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

.field private openAttemptsRemaining:I

.field private final openCameraTimeoutRunnable:Ljava/lang/Runnable;

.field private sessionOpening:Z

.field private final stateLock:Ljava/lang/Object;

.field private surfaceHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

.field private switchEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

.field private switchState:Lorg/webrtc/ali/CameraCapturer$SwitchState;

.field private final uiThreadHandler:Landroid/os/Handler;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/ali/CameraEnumerator;)V
    .locals 4
    .param p1, "cameraName"    # Ljava/lang/String;
    .param p2, "eventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;
    .param p3, "cameraEnumerator"    # Lorg/webrtc/ali/CameraEnumerator;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Lorg/webrtc/ali/CameraCapturer$1;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/CameraCapturer$1;-><init>(Lorg/webrtc/ali/CameraCapturer;)V

    iput-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->createSessionCallback:Lorg/webrtc/ali/CameraSession$CreateSessionCallback;

    .line 128
    new-instance v1, Lorg/webrtc/ali/CameraCapturer$2;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/CameraCapturer$2;-><init>(Lorg/webrtc/ali/CameraCapturer;)V

    iput-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->cameraSessionEventsHandler:Lorg/webrtc/ali/CameraSession$Events;

    .line 218
    new-instance v1, Lorg/webrtc/ali/CameraCapturer$3;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/CameraCapturer$3;-><init>(Lorg/webrtc/ali/CameraCapturer;)V

    iput-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    .line 232
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 240
    sget-object v1, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    iput-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->switchState:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    .line 247
    sget-object v1, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    iput-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderState:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    .line 252
    if-nez p2, :cond_0

    .line 253
    new-instance p2, Lorg/webrtc/ali/CameraCapturer$4;

    .end local p2    # "eventsHandler":Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;
    invoke-direct {p2, p0}, Lorg/webrtc/ali/CameraCapturer$4;-><init>(Lorg/webrtc/ali/CameraCapturer;)V

    .line 269
    .restart local p2    # "eventsHandler":Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;
    :cond_0
    iput-object p2, p0, Lorg/webrtc/ali/CameraCapturer;->eventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    .line 270
    iput-object p3, p0, Lorg/webrtc/ali/CameraCapturer;->cameraEnumerator:Lorg/webrtc/ali/CameraEnumerator;

    .line 271
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 272
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    .line 274
    invoke-interface {p3}, Lorg/webrtc/ali/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "deviceNames":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_1

    .line 277
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "No cameras attached."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Camera name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not match any known camera device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/CameraCapturer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/webrtc/ali/CameraCapturer;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$SwitchState;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->switchState:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/SurfaceTextureHelper;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->surfaceHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    return-object v0
.end method

.method static synthetic access$102(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraCapturer$SwitchState;)Lorg/webrtc/ali/CameraCapturer$SwitchState;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/ali/CameraCapturer$SwitchState;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer;->switchState:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->eventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/webrtc/ali/CameraCapturer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-boolean v0, p0, Lorg/webrtc/ali/CameraCapturer;->firstFrameObserved:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/webrtc/ali/CameraCapturer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lorg/webrtc/ali/CameraCapturer;->firstFrameObserved:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->switchEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer;->switchEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->cameraName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraEnumerator;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->cameraEnumerator:Lorg/webrtc/ali/CameraEnumerator;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/webrtc/ali/CameraCapturer;->switchCameraInternal(Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/webrtc/ali/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget v0, p0, Lorg/webrtc/ali/CameraCapturer;->openAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$1810(Lorg/webrtc/ali/CameraCapturer;)I
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget v0, p0, Lorg/webrtc/ali/CameraCapturer;->openAttemptsRemaining:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/webrtc/ali/CameraCapturer;->openAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$1900(Lorg/webrtc/ali/CameraCapturer;ILandroid/media/MediaRecorder;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/MediaRecorder;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/CameraCapturer;->createSessionInternal(ILandroid/media/MediaRecorder;)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderState:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession$CreateSessionCallback;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->createSessionCallback:Lorg/webrtc/ali/CameraSession$CreateSessionCallback;

    return-object v0
.end method

.method static synthetic access$202(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderState:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession$Events;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->cameraSessionEventsHandler:Lorg/webrtc/ali/CameraSession$Events;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/webrtc/ali/CameraCapturer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/webrtc/ali/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget v0, p0, Lorg/webrtc/ali/CameraCapturer;->width:I

    return v0
.end method

.method static synthetic access$2400(Lorg/webrtc/ali/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget v0, p0, Lorg/webrtc/ali/CameraCapturer;->height:I

    return v0
.end method

.method static synthetic access$2500(Lorg/webrtc/ali/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget v0, p0, Lorg/webrtc/ali/CameraCapturer;->framerate:I

    return v0
.end method

.method static synthetic access$2600(Lorg/webrtc/ali/CameraCapturer;Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # Landroid/media/MediaRecorder;
    .param p2, "x2"    # Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/CameraCapturer;->updateMediaRecorderInternal(Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/ali/CameraCapturer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/VideoCapturer$CapturerObserver;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->capturerObserver:Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    return-object v0
.end method

.method static synthetic access$702(Lorg/webrtc/ali/CameraCapturer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lorg/webrtc/ali/CameraCapturer;->sessionOpening:Z

    return p1
.end method

.method static synthetic access$800(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    return-object v0
.end method

.method static synthetic access$802(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraSession;)Lorg/webrtc/ali/CameraSession;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/ali/CameraSession;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    return-object p1
.end method

.method static synthetic access$900(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->cameraStatistics:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    return-object v0
.end method

.method static synthetic access$902(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer;->cameraStatistics:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    return-object p1
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 557
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 558
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "Check is on camera thread failed."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not on camera thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    return-void
.end method

.method private createSessionInternal(ILandroid/media/MediaRecorder;)V
    .locals 4
    .param p1, "delayMs"    # I
    .param p2, "mediaRecorder"    # Landroid/media/MediaRecorder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    add-int/lit16 v2, p1, 0x2710

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/ali/CameraCapturer$5;

    invoke-direct {v1, p0, p2}, Lorg/webrtc/ali/CameraCapturer$5;-><init>(Lorg/webrtc/ali/CameraCapturer;Landroid/media/MediaRecorder;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    return-void
.end method

.method private reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "switchEventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    .prologue
    .line 431
    const-string/jumbo v0, "CameraCapturer"

    invoke-static {v0, p1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz p2, :cond_0

    .line 433
    invoke-interface {p2, p1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 435
    :cond_0
    return-void
.end method

.method private reportUpdateMediaRecorderError(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "mediaRecoderEventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    .prologue
    .line 495
    invoke-direct {p0}, Lorg/webrtc/ali/CameraCapturer;->checkIsOnCameraThread()V

    .line 496
    const-string/jumbo v0, "CameraCapturer"

    invoke-static {v0, p1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    if-eqz p2, :cond_0

    .line 498
    invoke-interface {p2, p1}, Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;->onMediaRecorderError(Ljava/lang/String;)V

    .line 500
    :cond_0
    return-void
.end method

.method private switchCameraInternal(Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 6
    .param p1, "switchEventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 438
    const-string/jumbo v3, "CameraCapturer"

    const-string/jumbo v4, "switchCamera internal"

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->cameraEnumerator:Lorg/webrtc/ali/CameraEnumerator;

    invoke-interface {v3}, Lorg/webrtc/ali/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "deviceNames":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 443
    if-eqz p1, :cond_0

    .line 444
    const-string/jumbo v3, "No camera to switch to."

    invoke-interface {p1, v3}, Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v4, p0, Lorg/webrtc/ali/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 450
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->switchState:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    sget-object v5, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    if-eq v3, v5, :cond_2

    .line 451
    const-string/jumbo v3, "Camera switch already in progress."

    invoke-direct {p0, v3, p1}, Lorg/webrtc/ali/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 452
    monitor-exit v4

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 454
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderState:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    sget-object v5, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    if-eq v3, v5, :cond_3

    .line 455
    const-string/jumbo v3, "switchCamera: media recording is active"

    invoke-direct {p0, v3, p1}, Lorg/webrtc/ali/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 456
    monitor-exit v4

    goto :goto_0

    .line 458
    :cond_3
    iget-boolean v3, p0, Lorg/webrtc/ali/CameraCapturer;->sessionOpening:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    if-nez v3, :cond_4

    .line 459
    const-string/jumbo v3, "switchCamera: camera is not running."

    invoke-direct {p0, v3, p1}, Lorg/webrtc/ali/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 460
    monitor-exit v4

    goto :goto_0

    .line 463
    :cond_4
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer;->switchEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    .line 464
    iget-boolean v3, p0, Lorg/webrtc/ali/CameraCapturer;->sessionOpening:Z

    if-eqz v3, :cond_5

    .line 465
    sget-object v3, Lorg/webrtc/ali/CameraCapturer$SwitchState;->PENDING:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    iput-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->switchState:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    .line 466
    monitor-exit v4

    goto :goto_0

    .line 468
    :cond_5
    sget-object v3, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    iput-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->switchState:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    .line 471
    const-string/jumbo v3, "CameraCapturer"

    const-string/jumbo v5, "switchCamera: Stopping session"

    invoke-static {v3, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->cameraStatistics:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {v3}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->release()V

    .line 473
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->cameraStatistics:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .line 474
    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    .line 475
    .local v2, "oldSession":Lorg/webrtc/ali/CameraSession;
    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v5, Lorg/webrtc/ali/CameraCapturer$10;

    invoke-direct {v5, p0, v2}, Lorg/webrtc/ali/CameraCapturer$10;-><init>(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraSession;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    .line 483
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lorg/webrtc/ali/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 484
    .local v0, "cameraNameIndex":I
    add-int/lit8 v3, v0, 0x1

    array-length v5, v1

    rem-int/2addr v3, v5

    aget-object v3, v1, v3

    iput-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 486
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/webrtc/ali/CameraCapturer;->sessionOpening:Z

    .line 487
    const/4 v3, 0x1

    iput v3, p0, Lorg/webrtc/ali/CameraCapturer;->openAttemptsRemaining:I

    .line 488
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lorg/webrtc/ali/CameraCapturer;->createSessionInternal(ILandroid/media/MediaRecorder;)V

    .line 489
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    const-string/jumbo v3, "CameraCapturer"

    const-string/jumbo v4, "switchCamera done"

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateMediaRecorderInternal(Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 5
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "mediaRecoderEventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 504
    invoke-direct {p0}, Lorg/webrtc/ali/CameraCapturer;->checkIsOnCameraThread()V

    .line 505
    if-eqz p1, :cond_2

    .line 506
    .local v0, "addMediaRecorder":Z
    :goto_0
    const-string/jumbo v2, "CameraCapturer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateMediaRecoderInternal internal. State: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderState:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Switch state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/ali/CameraCapturer;->switchState:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Add MediaRecorder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 511
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderState:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    sget-object v4, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    if-ne v2, v4, :cond_1

    :cond_0
    if-nez v0, :cond_3

    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderState:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    sget-object v4, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    if-eq v2, v4, :cond_3

    .line 513
    :cond_1
    const-string/jumbo v2, "Incorrect state for MediaRecorder update."

    invoke-direct {p0, v2, p2}, Lorg/webrtc/ali/CameraCapturer;->reportUpdateMediaRecorderError(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    .line 515
    monitor-exit v3

    .line 554
    :goto_1
    return-void

    .end local v0    # "addMediaRecorder":Z
    :cond_2
    move v0, v2

    .line 505
    goto :goto_0

    .line 517
    .restart local v0    # "addMediaRecorder":Z
    :cond_3
    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->switchState:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    sget-object v4, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    if-eq v2, v4, :cond_4

    .line 518
    const-string/jumbo v2, "MediaRecorder update while camera is switching."

    invoke-direct {p0, v2, p2}, Lorg/webrtc/ali/CameraCapturer;->reportUpdateMediaRecorderError(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    .line 520
    monitor-exit v3

    goto :goto_1

    .line 552
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 522
    :cond_4
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    if-nez v2, :cond_5

    .line 523
    const-string/jumbo v2, "MediaRecorder update while camera is closed."

    invoke-direct {p0, v2, p2}, Lorg/webrtc/ali/CameraCapturer;->reportUpdateMediaRecorderError(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    .line 525
    monitor-exit v3

    goto :goto_1

    .line 527
    :cond_5
    iget-boolean v2, p0, Lorg/webrtc/ali/CameraCapturer;->sessionOpening:Z

    if-eqz v2, :cond_6

    .line 528
    const-string/jumbo v2, "MediaRecorder update while camera is still opening."

    invoke-direct {p0, v2, p2}, Lorg/webrtc/ali/CameraCapturer;->reportUpdateMediaRecorderError(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    .line 530
    monitor-exit v3

    goto :goto_1

    .line 533
    :cond_6
    iput-object p2, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    .line 534
    if-eqz v0, :cond_7

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE_TO_ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    :goto_2
    iput-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->mediaRecorderState:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    .line 537
    const-string/jumbo v2, "CameraCapturer"

    const-string/jumbo v4, "updateMediaRecoder: Stopping session"

    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->cameraStatistics:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {v2}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->release()V

    .line 539
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->cameraStatistics:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .line 540
    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    .line 541
    .local v1, "oldSession":Lorg/webrtc/ali/CameraSession;
    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v4, Lorg/webrtc/ali/CameraCapturer$11;

    invoke-direct {v4, p0, v1}, Lorg/webrtc/ali/CameraCapturer$11;-><init>(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraSession;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 547
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    .line 549
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/webrtc/ali/CameraCapturer;->sessionOpening:Z

    .line 550
    const/4 v2, 0x1

    iput v2, p0, Lorg/webrtc/ali/CameraCapturer;->openAttemptsRemaining:I

    .line 551
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lorg/webrtc/ali/CameraCapturer;->createSessionInternal(ILandroid/media/MediaRecorder;)V

    .line 552
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    const-string/jumbo v2, "CameraCapturer"

    const-string/jumbo v3, "updateMediaRecoderInternal done"

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 534
    .end local v1    # "oldSession":Lorg/webrtc/ali/CameraSession;
    :cond_7
    :try_start_2
    sget-object v2, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->ACTIVE_TO_IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 2
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "mediaRecoderEventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 389
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "addMediaRecorderToCamera"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/ali/CameraCapturer$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/ali/CameraCapturer$8;-><init>(Lorg/webrtc/ali/CameraCapturer;Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method public changeCaptureFormat(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 362
    const-string/jumbo v0, "CameraCapturer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "changeCaptureFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lorg/webrtc/ali/CameraCapturer;->stopCapture()V

    .line 365
    invoke-virtual {p0, p1, p2, p3}, Lorg/webrtc/ali/CameraCapturer;->startCapture(III)V

    .line 366
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract createCameraSession(Lorg/webrtc/ali/CameraSession$CreateSessionCallback;Lorg/webrtc/ali/CameraSession$Events;Landroid/content/Context;Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/media/MediaRecorder;Ljava/lang/String;III)V
.end method

.method public dispose()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 371
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "dispose"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lorg/webrtc/ali/CameraCapturer;->stopCapture()V

    .line 373
    return-void
.end method

.method protected getCameraName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 564
    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->cameraName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize(Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/ali/VideoCapturer$CapturerObserver;)V
    .locals 1
    .param p1, "surfaceTextureHelper"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "capturerObserver"    # Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    .prologue
    .line 288
    iput-object p2, p0, Lorg/webrtc/ali/CameraCapturer;->applicationContext:Landroid/content/Context;

    .line 289
    iput-object p3, p0, Lorg/webrtc/ali/CameraCapturer;->capturerObserver:Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    .line 290
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer;->surfaceHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    .line 291
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 292
    :goto_0
    iput-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 293
    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Lorg/webrtc/ali/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method

.method public isScreencast()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public printStackTrace()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "cameraThread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 417
    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 419
    :cond_0
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 421
    .local v0, "cameraStackTrace":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 422
    const-string/jumbo v3, "CameraCapturer"

    const-string/jumbo v4, "CameraCapturer stack trace:"

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 424
    .local v2, "traceElem":Ljava/lang/StackTraceElement;
    const-string/jumbo v5, "CameraCapturer"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "cameraStackTrace":[Ljava/lang/StackTraceElement;
    .end local v2    # "traceElem":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public removeMediaRecorderFromCamera(Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 2
    .param p1, "mediaRecoderEventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 400
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "removeMediaRecorderFromCamera"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/ali/CameraCapturer$9;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/ali/CameraCapturer$9;-><init>(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method public startCapture(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 297
    const-string/jumbo v0, "CameraCapturer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startCapture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "CameraCapturer must be initialized before calling startCapture."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/ali/CameraCapturer;->sessionOpening:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    if-eqz v0, :cond_2

    .line 304
    :cond_1
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v2, "Session already open"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    monitor-exit v1

    .line 315
    :goto_0
    return-void

    .line 308
    :cond_2
    iput p1, p0, Lorg/webrtc/ali/CameraCapturer;->width:I

    .line 309
    iput p2, p0, Lorg/webrtc/ali/CameraCapturer;->height:I

    .line 310
    iput p3, p0, Lorg/webrtc/ali/CameraCapturer;->framerate:I

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/ali/CameraCapturer;->sessionOpening:Z

    .line 313
    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/ali/CameraCapturer;->openAttemptsRemaining:I

    .line 314
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/webrtc/ali/CameraCapturer;->createSessionInternal(ILandroid/media/MediaRecorder;)V

    .line 315
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopCapture()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 331
    const-string/jumbo v1, "CameraCapturer"

    const-string/jumbo v2, "Stop capture"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 334
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/ali/CameraCapturer;->sessionOpening:Z

    if-eqz v1, :cond_0

    .line 335
    const-string/jumbo v1, "CameraCapturer"

    const-string/jumbo v3, "Stop capture: Waiting for session to open"

    invoke-static {v1, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->stateLock:Ljava/lang/Object;

    invoke-static {v1}, Lorg/webrtc/ali/ThreadUtils;->waitUninterruptibly(Ljava/lang/Object;)V

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 339
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    if-eqz v1, :cond_1

    .line 340
    const-string/jumbo v1, "CameraCapturer"

    const-string/jumbo v3, "Stop capture: Nulling session"

    invoke-static {v1, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->cameraStatistics:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->release()V

    .line 342
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->cameraStatistics:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .line 343
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    .line 344
    .local v0, "oldSession":Lorg/webrtc/ali/CameraSession;
    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v3, Lorg/webrtc/ali/CameraCapturer$6;

    invoke-direct {v3, p0, v0}, Lorg/webrtc/ali/CameraCapturer$6;-><init>(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraSession;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->currentSession:Lorg/webrtc/ali/CameraSession;

    .line 351
    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer;->capturerObserver:Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    invoke-interface {v1}, Lorg/webrtc/ali/VideoCapturer$CapturerObserver;->onCapturerStopped()V

    .line 355
    .end local v0    # "oldSession":Lorg/webrtc/ali/CameraSession;
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    const-string/jumbo v1, "CameraCapturer"

    const-string/jumbo v2, "Stop capture done"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void

    .line 353
    :cond_1
    :try_start_2
    const-string/jumbo v1, "CameraCapturer"

    const-string/jumbo v3, "Stop capture: No session open"

    invoke-static {v1, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public switchCamera(Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 2
    .param p1, "switchEventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 377
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "switchCamera"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/ali/CameraCapturer$7;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/ali/CameraCapturer$7;-><init>(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method
