.class public abstract Lorg/webrtc/CameraCapturer;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lorg/webrtc/CameraVideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/CameraCapturer$SwitchState;
    }
.end annotation


# static fields
.field private static final MAX_OPEN_CAMERA_ATTEMPTS:I = 0x3

.field private static final OPEN_CAMERA_DELAY_MS:I = 0x1f4

.field private static final OPEN_CAMERA_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CameraCapturer"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private autoRotate:Z

.field private final cameraEnumerator:Lorg/webrtc/CameraEnumerator;

.field private cameraName:Ljava/lang/String;

.field private final cameraSessionEventsHandler:Lorg/webrtc/CameraSession$Events;

.field private cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

.field private cameraThreadHandler:Landroid/os/Handler;

.field private capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

.field private final createSessionCallback:Lorg/webrtc/CameraSession$CreateSessionCallback;

.field private currentSession:Lorg/webrtc/CameraSession;

.field private final eventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

.field private firstFrameObserved:Z

.field private framerate:I

.field private height:I

.field private openAttemptsRemaining:I

.field private final openCameraTimeoutRunnable:Ljava/lang/Runnable;

.field private sessionOpening:Z

.field private final stateLock:Ljava/lang/Object;

.field private surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

.field private switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

.field private switchState:Lorg/webrtc/CameraCapturer$SwitchState;

.field private ud_angle:I

.field private final uiThreadHandler:Landroid/os/Handler;

.field private video_rotate_angle:I

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/CameraEnumerator;)V
    .locals 4
    .param p1, "cameraName"    # Ljava/lang/String;
    .param p2, "eventsHandler"    # Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    .param p3, "cameraEnumerator"    # Lorg/webrtc/CameraEnumerator;

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v2, p0, Lorg/webrtc/CameraCapturer;->video_rotate_angle:I

    .line 40
    new-instance v1, Lorg/webrtc/CameraCapturer$1;

    invoke-direct {v1, p0}, Lorg/webrtc/CameraCapturer$1;-><init>(Lorg/webrtc/CameraCapturer;)V

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->createSessionCallback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    .line 99
    new-instance v1, Lorg/webrtc/CameraCapturer$2;

    invoke-direct {v1, p0}, Lorg/webrtc/CameraCapturer$2;-><init>(Lorg/webrtc/CameraCapturer;)V

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraSessionEventsHandler:Lorg/webrtc/CameraSession$Events;

    .line 206
    new-instance v1, Lorg/webrtc/CameraCapturer$3;

    invoke-direct {v1, p0}, Lorg/webrtc/CameraCapturer$3;-><init>(Lorg/webrtc/CameraCapturer;)V

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    .line 220
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 228
    sget-object v1, Lorg/webrtc/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/CameraCapturer$SwitchState;

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/CameraCapturer;->autoRotate:Z

    .line 235
    iput v2, p0, Lorg/webrtc/CameraCapturer;->ud_angle:I

    .line 239
    if-nez p2, :cond_0

    .line 240
    new-instance p2, Lorg/webrtc/CameraCapturer$4;

    .end local p2    # "eventsHandler":Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    invoke-direct {p2, p0}, Lorg/webrtc/CameraCapturer$4;-><init>(Lorg/webrtc/CameraCapturer;)V

    .line 269
    .restart local p2    # "eventsHandler":Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    :cond_0
    iput-object p2, p0, Lorg/webrtc/CameraCapturer;->eventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 270
    iput-object p3, p0, Lorg/webrtc/CameraCapturer;->cameraEnumerator:Lorg/webrtc/CameraEnumerator;

    .line 271
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 272
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    .line 274
    invoke-interface {p3}, Lorg/webrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

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

    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Camera name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

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

.method static synthetic access$000(Lorg/webrtc/CameraCapturer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/webrtc/CameraCapturer;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/CameraCapturer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/webrtc/CameraCapturer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-boolean v0, p0, Lorg/webrtc/CameraCapturer;->firstFrameObserved:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/webrtc/CameraCapturer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lorg/webrtc/CameraCapturer;->firstFrameObserved:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraCapturer$SwitchState;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraCapturer$SwitchState;)Lorg/webrtc/CameraCapturer$SwitchState;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraCapturer$SwitchState;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/webrtc/CameraCapturer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraEnumerator;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraEnumerator:Lorg/webrtc/CameraEnumerator;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/webrtc/CameraCapturer;->switchCameraInternal(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/webrtc/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget v0, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$1610(Lorg/webrtc/CameraCapturer;)I
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget v0, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$1700(Lorg/webrtc/CameraCapturer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/webrtc/CameraCapturer;->createSessionInternal(I)V

    return-void
.end method

.method static synthetic access$1800(Lorg/webrtc/CameraCapturer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-boolean v0, p0, Lorg/webrtc/CameraCapturer;->autoRotate:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/webrtc/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget v0, p0, Lorg/webrtc/CameraCapturer;->ud_angle:I

    return v0
.end method

.method static synthetic access$200(Lorg/webrtc/CameraCapturer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession$CreateSessionCallback;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->createSessionCallback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession$Events;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraSessionEventsHandler:Lorg/webrtc/CameraSession$Events;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/webrtc/CameraCapturer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/webrtc/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget v0, p0, Lorg/webrtc/CameraCapturer;->width:I

    return v0
.end method

.method static synthetic access$2400(Lorg/webrtc/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget v0, p0, Lorg/webrtc/CameraCapturer;->height:I

    return v0
.end method

.method static synthetic access$2500(Lorg/webrtc/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget v0, p0, Lorg/webrtc/CameraCapturer;->framerate:I

    return v0
.end method

.method static synthetic access$300(Lorg/webrtc/CameraCapturer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/VideoCapturer$CapturerObserver;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    return-object v0
.end method

.method static synthetic access$502(Lorg/webrtc/CameraCapturer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    return p1
.end method

.method static synthetic access$600(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    return-object v0
.end method

.method static synthetic access$602(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraSession;)Lorg/webrtc/CameraSession;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraSession;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    return-object p1
.end method

.method static synthetic access$700(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraStatistics;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    return-object v0
.end method

.method static synthetic access$702(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/CameraVideoCapturer$CameraStatistics;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    return-object p1
.end method

.method static synthetic access$800(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    return-object v0
.end method

.method static synthetic access$900(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->eventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    return-object v0
.end method

.method private checkIsOnCameraThread()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 529
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 530
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "Check is on camera thread failed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not on camera thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    return-void
.end method

.method private createSessionInternal(I)V
    .locals 4
    .param p1, "delayMs"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 318
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    add-int/lit16 v2, p1, 0x2710

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/CameraCapturer$5;

    invoke-direct {v1, p0}, Lorg/webrtc/CameraCapturer$5;-><init>(Lorg/webrtc/CameraCapturer;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    return-void
.end method

.method private switchCameraInternal(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 8
    .param p1, "switchEventsHandler"    # Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 470
    const-string/jumbo v3, "CameraCapturer"

    const-string/jumbo v4, "switchCamera internal"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraEnumerator:Lorg/webrtc/CameraEnumerator;

    invoke-interface {v3}, Lorg/webrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "deviceNames":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 475
    if-eqz p1, :cond_0

    .line 476
    const-string/jumbo v3, "No camera to switch to."

    invoke-interface {p1, v3}, Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v4, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 482
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    sget-object v5, Lorg/webrtc/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/CameraCapturer$SwitchState;

    if-eq v3, v5, :cond_3

    .line 483
    const-string/jumbo v3, "CameraCapturer"

    const-string/jumbo v5, "switchCamera switchInProgress"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    if-eqz p1, :cond_2

    .line 485
    const-string/jumbo v3, "Camera switch already in progress."

    invoke-interface {p1, v3}, Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 487
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 490
    :cond_3
    :try_start_1
    iget-boolean v3, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-nez v3, :cond_5

    .line 491
    const-string/jumbo v3, "CameraCapturer"

    const-string/jumbo v5, "switchCamera: No session open"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    if-eqz p1, :cond_4

    .line 493
    const-string/jumbo v3, "Camera is not running."

    invoke-interface {p1, v3}, Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 495
    :cond_4
    monitor-exit v4

    goto :goto_0

    .line 498
    :cond_5
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 499
    iget-boolean v3, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-eqz v3, :cond_6

    .line 500
    sget-object v3, Lorg/webrtc/CameraCapturer$SwitchState;->PENDING:Lorg/webrtc/CameraCapturer$SwitchState;

    iput-object v3, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    .line 501
    monitor-exit v4

    goto :goto_0

    .line 503
    :cond_6
    sget-object v3, Lorg/webrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/webrtc/CameraCapturer$SwitchState;

    iput-object v3, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    .line 506
    const-string/jumbo v3, "CameraCapturer"

    const-string/jumbo v5, "switchCamera: Stopping session"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {v3}, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->release()V

    .line 508
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    .line 509
    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    .line 510
    .local v2, "oldSession":Lorg/webrtc/CameraSession;
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v5, Lorg/webrtc/CameraCapturer$8;

    invoke-direct {v5, p0, v2}, Lorg/webrtc/CameraCapturer$8;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraSession;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    .line 518
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 519
    .local v0, "cameraNameIndex":I
    add-int/lit8 v3, v0, 0x1

    array-length v5, v1

    rem-int/2addr v3, v5

    aget-object v3, v1, v3

    iput-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 521
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    .line 522
    const/4 v3, 0x1

    iput v3, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 523
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/webrtc/CameraCapturer;->createSessionInternal(I)V

    .line 524
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    const-string/jumbo v3, "CameraCapturer"

    const-string/jumbo v4, "switchCamera done"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public changeCaptureFormat(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 361
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

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lorg/webrtc/CameraCapturer;->stopCapture()V

    .line 364
    invoke-virtual {p0, p1, p2, p3}, Lorg/webrtc/CameraCapturer;->startCapture(III)V

    .line 365
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkLightEnable()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    invoke-interface {v0}, Lorg/webrtc/CameraSession;->checkLightEnable()Z

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract createCameraSession(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
.end method

.method public dispose()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 370
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "dispose"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p0}, Lorg/webrtc/CameraCapturer;->stopCapture()V

    .line 372
    return-void
.end method

.method public enableCameraLight(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 393
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    invoke-interface {v0, p1}, Lorg/webrtc/CameraSession;->enableCameraLight(Z)V

    .line 396
    :cond_0
    return-void
.end method

.method public enableMirror(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 408
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    invoke-interface {v0, p1}, Lorg/webrtc/CameraSession;->enableMirror(Z)V

    .line 411
    :cond_0
    return-void
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    invoke-interface {v0}, Lorg/webrtc/CameraSession;->getBrightness()I

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getCameraName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 536
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize(Lorg/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/VideoCapturer$CapturerObserver;)V
    .locals 3
    .param p1, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "capturerObserver"    # Lorg/webrtc/VideoCapturer$CapturerObserver;

    .prologue
    .line 288
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "invoke initialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iput-object p2, p0, Lorg/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    .line 290
    iput-object p3, p0, Lorg/webrtc/CameraCapturer;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    .line 291
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 292
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 293
    :goto_0
    iput-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 294
    return-void

    .line 293
    :cond_0
    invoke-virtual {p1}, Lorg/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public isFrontFacingCamera()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 388
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraEnumerator:Lorg/webrtc/CameraEnumerator;

    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/webrtc/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isScreencast()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public printStackTrace()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "cameraThread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 456
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 458
    :cond_0
    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 460
    .local v0, "cameraStackTrace":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 461
    const-string/jumbo v3, "CameraCapturer"

    const-string/jumbo v5, "CameraCapturer stack trace:"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v0, v3

    .line 463
    .local v2, "traceElem":Ljava/lang/StackTraceElement;
    const-string/jumbo v6, "CameraCapturer"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "cameraStackTrace":[Ljava/lang/StackTraceElement;
    .end local v2    # "traceElem":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    invoke-interface {v0, p1}, Lorg/webrtc/CameraSession;->setBrightness(I)V

    .line 418
    :cond_0
    return-void
.end method

.method public setCameraXParam([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # [Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/CameraSession;->setCameraXParam([Ljava/lang/String;[Ljava/lang/String;)V

    .line 434
    :cond_0
    return-void
.end method

.method public setVideoRotation(ZI)V
    .locals 5
    .param p1, "auto"    # Z
    .param p2, "angle"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 438
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "set video rotation, angle:"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " auto:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iput-boolean p1, p0, Lorg/webrtc/CameraCapturer;->autoRotate:Z

    .line 440
    iput p2, p0, Lorg/webrtc/CameraCapturer;->ud_angle:I

    .line 441
    return-void
.end method

.method public startCapture(III)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 298
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

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v2, "Session already open"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    monitor-exit v1

    .line 314
    :goto_0
    return-void

    .line 306
    :cond_1
    iput p1, p0, Lorg/webrtc/CameraCapturer;->width:I

    .line 307
    iput p2, p0, Lorg/webrtc/CameraCapturer;->height:I

    .line 308
    iput p3, p0, Lorg/webrtc/CameraCapturer;->framerate:I

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    .line 311
    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/webrtc/CameraCapturer;->createSessionInternal(I)V

    .line 313
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v2, "startCapture OK"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
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
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 330
    const-string/jumbo v1, "CameraCapturer"

    const-string/jumbo v2, "Stop capture"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-eqz v1, :cond_0

    .line 334
    const-string/jumbo v1, "CameraCapturer"

    const-string/jumbo v3, "Stop capture: Waiting for session to open"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    invoke-static {v1}, Lorg/webrtc/ThreadUtils;->waitUninterruptibly(Ljava/lang/Object;)V

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 338
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v1, :cond_1

    .line 339
    const-string/jumbo v1, "CameraCapturer"

    const-string/jumbo v3, "Stop capture: stop current session"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {v1}, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->release()V

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    .line 342
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    .line 343
    .local v0, "oldSession":Lorg/webrtc/CameraSession;
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v3, Lorg/webrtc/CameraCapturer$6;

    invoke-direct {v3, p0, v0}, Lorg/webrtc/CameraCapturer$6;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraSession;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    .line 350
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    invoke-interface {v1}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onCapturerStopped()V

    .line 354
    .end local v0    # "oldSession":Lorg/webrtc/CameraSession;
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    const-string/jumbo v1, "CameraCapturer"

    const-string/jumbo v2, "Stop capture done"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    return-void

    .line 352
    :cond_1
    :try_start_2
    const-string/jumbo v1, "CameraCapturer"

    const-string/jumbo v3, "Stop capture: No session open"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 3
    .param p1, "switchEventsHandler"    # Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 376
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "switchCamera"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/CameraCapturer$7;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/CameraCapturer$7;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method
