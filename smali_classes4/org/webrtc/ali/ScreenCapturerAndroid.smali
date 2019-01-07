.class public Lorg/webrtc/ali/ScreenCapturerAndroid;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"

# interfaces
.implements Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;
.implements Lorg/webrtc/ali/VideoCapturer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final DISPLAY_FLAGS:I = 0x3

.field private static final VIRTUAL_DISPLAY_DPI:I = 0x190


# instance fields
.field private capturerObserver:Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

.field private height:I

.field private isDisposed:Z

.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private final mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

.field private mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private final mediaProjectionPermissionResultData:Landroid/content/Intent;

.field private numCapturedFrames:J

.field private surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)V
    .locals 2
    .param p1, "mediaProjectionPermissionResultData"    # Landroid/content/Intent;
    .param p2, "mediaProjectionCallback"    # Landroid/media/projection/MediaProjection$Callback;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->numCapturedFrames:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->isDisposed:Z

    .line 69
    iput-object p1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    .line 70
    iput-object p2, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/ScreenCapturerAndroid;)Lorg/webrtc/ali/SurfaceTextureHelper;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/ScreenCapturerAndroid;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    return-object v0
.end method

.method static synthetic access$100(Lorg/webrtc/ali/ScreenCapturerAndroid;)Lorg/webrtc/ali/VideoCapturer$CapturerObserver;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/ScreenCapturerAndroid;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->capturerObserver:Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    return-object v0
.end method

.method static synthetic access$200(Lorg/webrtc/ali/ScreenCapturerAndroid;)Landroid/hardware/display/VirtualDisplay;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/ScreenCapturerAndroid;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method static synthetic access$202(Lorg/webrtc/ali/ScreenCapturerAndroid;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/ScreenCapturerAndroid;
    .param p1, "x1"    # Landroid/hardware/display/VirtualDisplay;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic access$300(Lorg/webrtc/ali/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/ScreenCapturerAndroid;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method static synthetic access$302(Lorg/webrtc/ali/ScreenCapturerAndroid;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/ScreenCapturerAndroid;
    .param p1, "x1"    # Landroid/media/projection/MediaProjection;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    return-object p1
.end method

.method static synthetic access$400(Lorg/webrtc/ali/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection$Callback;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/ScreenCapturerAndroid;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/ali/ScreenCapturerAndroid;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/ScreenCapturerAndroid;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->createVirtualDisplay()V

    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->isDisposed:Z

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "capturer is disposed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    return-void
.end method

.method private createVirtualDisplay()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 181
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->width:I

    iget v2, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 182
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    const-string/jumbo v1, "WebRTC_ScreenCapture"

    iget v2, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->width:I

    iget v3, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->height:I

    const/16 v4, 0x190

    const/4 v5, 0x3

    new-instance v6, Landroid/view/Surface;

    iget-object v8, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    .line 183
    invoke-virtual {v8}, Lorg/webrtc/ali/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v8, v7

    .line 182
    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 185
    return-void
.end method


# virtual methods
.method public declared-synchronized changeCaptureFormat(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "ignoredFramerate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->checkNotDisposed()V

    .line 160
    iput p1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->width:I

    .line 161
    iput p2, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->height:I

    .line 163
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/webrtc/ali/ScreenCapturerAndroid$2;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/ScreenCapturerAndroid$2;-><init>(Lorg/webrtc/ali/ScreenCapturerAndroid;)V

    invoke-static {v0, v1}, Lorg/webrtc/ali/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dispose()V
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->isDisposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumCapturedFrames()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->numCapturedFrames:J

    return-wide v0
.end method

.method public declared-synchronized initialize(Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/ali/VideoCapturer$CapturerObserver;)V
    .locals 2
    .param p1, "surfaceTextureHelper"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "capturerObserver"    # Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->checkNotDisposed()V

    .line 84
    if-nez p3, :cond_0

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "capturerObserver not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_0
    :try_start_1
    iput-object p3, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->capturerObserver:Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    .line 89
    if-nez p1, :cond_1

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surfaceTextureHelper not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput-object p1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    .line 94
    const-string/jumbo v0, "media_projection"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit p0

    return-void
.end method

.method public isScreencast()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .locals 9
    .param p1, "oesTextureId"    # I
    .param p2, "transformMatrix"    # [F
    .param p3, "timestampNs"    # J

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->numCapturedFrames:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->numCapturedFrames:J

    .line 191
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->capturerObserver:Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    iget v1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->width:I

    iget v2, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->height:I

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-interface/range {v0 .. v7}, Lorg/webrtc/ali/VideoCapturer$CapturerObserver;->onTextureFrameCaptured(III[FIJ)V

    .line 193
    return-void
.end method

.method public declared-synchronized startCapture(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "ignoredFramerate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->checkNotDisposed()V

    .line 103
    iput p1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->width:I

    .line 104
    iput p2, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->height:I

    .line 106
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    const/4 v1, -0x1

    iget-object v2, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 110
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    iget-object v2, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-virtual {v2}, Lorg/webrtc/ali/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 112
    invoke-direct {p0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->createVirtualDisplay()V

    .line 113
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->capturerObserver:Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/webrtc/ali/VideoCapturer$CapturerObserver;->onCapturerStarted(Z)V

    .line 114
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-virtual {v0, p0}, Lorg/webrtc/ali/SurfaceTextureHelper;->startListening(Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopCapture()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->checkNotDisposed()V

    .line 120
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/webrtc/ali/ScreenCapturerAndroid$1;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/ScreenCapturerAndroid$1;-><init>(Lorg/webrtc/ali/ScreenCapturerAndroid;)V

    invoke-static {v0, v1}, Lorg/webrtc/ali/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
