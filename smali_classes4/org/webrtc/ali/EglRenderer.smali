.class public Lorg/webrtc/ali/EglRenderer;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Lorg/webrtc/ali/VideoRenderer$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;,
        Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;,
        Lorg/webrtc/ali/EglRenderer$FrameListener;
    }
.end annotation


# static fields
.field private static final LOG_INTERVAL_SEC:J = 0x4L

.field private static final MAX_SURFACE_CLEAR_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EglRenderer"


# instance fields
.field private bitmapTextureFramebuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

.field private drawer:Lorg/webrtc/ali/RendererCommon$GlDrawer;

.field private eglBase:Lorg/webrtc/ali/EglBase;

.field private final eglSurfaceCreationRunnable:Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;",
            ">;"
        }
    .end annotation
.end field

.field private final frameLock:Ljava/lang/Object;

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private final handlerLock:Ljava/lang/Object;

.field private layoutAspectRatio:F

.field private final layoutLock:Ljava/lang/Object;

.field private final logStatisticsRunnable:Ljava/lang/Runnable;

.field private minRenderPeriodNs:J

.field private mirror:Z

.field private final name:Ljava/lang/String;

.field private nextFrameTimeNs:J

.field private pendingFrame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

.field private final renderFrameRunnable:Ljava/lang/Runnable;

.field private renderSwapBufferTimeNs:J

.field private renderThreadHandler:Landroid/os/Handler;

.field private renderTimeNs:J

.field private final statisticsLock:Ljava/lang/Object;

.field private statisticsStartTimeNs:J

.field private final yuvUploader:Lorg/webrtc/ali/RendererCommon$YuvUploader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Lorg/webrtc/ali/RendererCommon$YuvUploader;

    invoke-direct {v0}, Lorg/webrtc/ali/RendererCommon$YuvUploader;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/EglRenderer;->yuvUploader:Lorg/webrtc/ali/RendererCommon$YuvUploader;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Lorg/webrtc/ali/EglRenderer$1;

    invoke-direct {v0, p0}, Lorg/webrtc/ali/EglRenderer$1;-><init>(Lorg/webrtc/ali/EglRenderer;)V

    iput-object v0, p0, Lorg/webrtc/ali/EglRenderer;->renderFrameRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lorg/webrtc/ali/EglRenderer$2;

    invoke-direct {v0, p0}, Lorg/webrtc/ali/EglRenderer$2;-><init>(Lorg/webrtc/ali/EglRenderer;)V

    iput-object v0, p0, Lorg/webrtc/ali/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;-><init>(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/EglRenderer$1;)V

    iput-object v0, p0, Lorg/webrtc/ali/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;

    .line 159
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer;->name:Ljava/lang/String;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    return-object v0
.end method

.method static synthetic access$002(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/EglBase;)Lorg/webrtc/ali/EglBase;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;
    .param p1, "x1"    # Lorg/webrtc/ali/EglBase;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    return-object p1
.end method

.method static synthetic access$100(Lorg/webrtc/ali/EglRenderer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/webrtc/ali/EglRenderer;->renderFrameOnRenderThread()V

    return-void
.end method

.method static synthetic access$1000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/GlTextureFrameBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/GlTextureFrameBuffer;)Lorg/webrtc/ali/GlTextureFrameBuffer;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;
    .param p1, "x1"    # Lorg/webrtc/ali/GlTextureFrameBuffer;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/webrtc/ali/EglRenderer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/webrtc/ali/EglRenderer;FFFF)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/webrtc/ali/EglRenderer;->clearSurfaceOnRenderThread(FFFF)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/ali/EglRenderer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/webrtc/ali/EglRenderer;->logStatistics()V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/ali/EglRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->handlerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/ali/EglRenderer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/ali/EglRenderer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lorg/webrtc/ali/EglRenderer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/RendererCommon$GlDrawer;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->drawer:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    return-object v0
.end method

.method static synthetic access$802(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/RendererCommon$GlDrawer;)Lorg/webrtc/ali/RendererCommon$GlDrawer;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;
    .param p1, "x1"    # Lorg/webrtc/ali/RendererCommon$GlDrawer;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer;->drawer:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    return-object p1
.end method

.method static synthetic access$900(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/RendererCommon$YuvUploader;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->yuvUploader:Lorg/webrtc/ali/RendererCommon$YuvUploader;

    return-object v0
.end method

.method private averageTimeAsString(JI)Ljava/lang/String;
    .locals 5
    .param p1, "sumTimeNs"    # J
    .param p3, "count"    # I

    .prologue
    .line 713
    if-gtz p3, :cond_0

    const-string/jumbo v0, "NA"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p3

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u03bcs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private clearSurfaceOnRenderThread(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 504
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const-string/jumbo v0, "clearSurface"

    invoke-direct {p0, v0}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 506
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 507
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 508
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->swapBuffers()V

    .line 510
    :cond_0
    return-void
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .locals 1
    .param p1, "surface"    # Ljava/lang/Object;

    .prologue
    .line 215
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, p1}, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;

    invoke-direct {p0, v0}, Lorg/webrtc/ali/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 737
    const-string/jumbo v0, "EglRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method private logStatistics()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 717
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 718
    .local v0, "currentTimeNs":J
    iget-object v6, p0, Lorg/webrtc/ali/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 719
    :try_start_0
    iget-wide v8, p0, Lorg/webrtc/ali/EglRenderer;->statisticsStartTimeNs:J

    sub-long v2, v0, v8

    .line 720
    .local v2, "elapsedTimeNs":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-gtz v5, :cond_0

    .line 721
    monitor-exit v6

    .line 733
    :goto_0
    return-void

    .line 723
    :cond_0
    iget v5, p0, Lorg/webrtc/ali/EglRenderer;->framesRendered:I

    int-to-long v8, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    mul-long/2addr v8, v10

    long-to-float v5, v8

    long-to-float v7, v2

    div-float v4, v5, v7

    .line 724
    .local v4, "renderFps":F
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Duration: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " ms. Frames received: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lorg/webrtc/ali/EglRenderer;->framesReceived:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Dropped: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lorg/webrtc/ali/EglRenderer;->framesDropped:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Rendered: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lorg/webrtc/ali/EglRenderer;->framesRendered:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Render fps: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 728
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Average render time: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lorg/webrtc/ali/EglRenderer;->renderTimeNs:J

    iget v7, p0, Lorg/webrtc/ali/EglRenderer;->framesRendered:I

    .line 729
    invoke-direct {p0, v8, v9, v7}, Lorg/webrtc/ali/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Average swapBuffer time: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lorg/webrtc/ali/EglRenderer;->renderSwapBufferTimeNs:J

    iget v7, p0, Lorg/webrtc/ali/EglRenderer;->framesRendered:I

    .line 731
    invoke-direct {p0, v8, v9, v7}, Lorg/webrtc/ali/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 724
    invoke-direct {p0, v5}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 732
    invoke-direct {p0, v0, v1}, Lorg/webrtc/ali/EglRenderer;->resetStatistics(J)V

    .line 733
    monitor-exit v6

    goto/16 :goto_0

    .end local v2    # "elapsedTimeNs":J
    .end local v4    # "renderFps":F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private notifyCallbacks(Lorg/webrtc/ali/VideoRenderer$I420Frame;[I[FZ)V
    .locals 16
    .param p1, "frame"    # Lorg/webrtc/ali/VideoRenderer$I420Frame;
    .param p2, "yuvTextures"    # [I
    .param p3, "texMatrix"    # [F
    .param p4, "wasRendered"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 655
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/ali/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    :cond_0
    return-void

    .line 658
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/webrtc/ali/EglRenderer;->mirror:Z

    if-eqz v1, :cond_5

    .line 660
    invoke-static {}, Lorg/webrtc/ali/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v1

    .line 659
    :goto_0
    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lorg/webrtc/ali/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v1

    .line 661
    invoke-static {}, Lorg/webrtc/ali/RendererCommon;->verticalFlipMatrix()[F

    move-result-object v2

    .line 658
    invoke-static {v1, v2}, Lorg/webrtc/ali/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v3

    .line 663
    .local v3, "bitmapMatrix":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/ali/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 664
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;>;"
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;

    .line 666
    .local v15, "listenerAndParams":Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;
    if-nez p4, :cond_3

    iget-boolean v1, v15, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    if-nez v1, :cond_2

    .line 669
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 671
    iget v1, v15, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 672
    .local v8, "scaledWidth":I
    iget v1, v15, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v9, v1

    .line 674
    .local v9, "scaledHeight":I
    if-eqz v8, :cond_4

    if-nez v9, :cond_6

    .line 675
    :cond_4
    iget-object v1, v15, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/ali/EglRenderer$FrameListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/webrtc/ali/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 660
    .end local v3    # "bitmapMatrix":[F
    .end local v8    # "scaledWidth":I
    .end local v9    # "scaledHeight":I
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;>;"
    .end local v15    # "listenerAndParams":Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;
    :cond_5
    invoke-static {}, Lorg/webrtc/ali/RendererCommon;->identityMatrix()[F

    move-result-object v1

    goto :goto_0

    .line 679
    .restart local v3    # "bitmapMatrix":[F
    .restart local v8    # "scaledWidth":I
    .restart local v9    # "scaledHeight":I
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;>;"
    .restart local v15    # "listenerAndParams":Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/ali/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    if-nez v1, :cond_7

    .line 680
    new-instance v1, Lorg/webrtc/ali/GlTextureFrameBuffer;

    const/16 v2, 0x1908

    invoke-direct {v1, v2}, Lorg/webrtc/ali/GlTextureFrameBuffer;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/webrtc/ali/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    .line 682
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/ali/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    invoke-virtual {v1, v8, v9}, Lorg/webrtc/ali/GlTextureFrameBuffer;->setSize(II)V

    .line 684
    const v1, 0x8d40

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lorg/webrtc/ali/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 685
    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v4, 0xde1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/ali/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/ali/GlTextureFrameBuffer;

    .line 686
    invoke-virtual {v5}, Lorg/webrtc/ali/GlTextureFrameBuffer;->getTextureId()I

    move-result v5

    const/4 v6, 0x0

    .line 685
    invoke-static {v1, v2, v4, v5, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 688
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 689
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 690
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v1, :cond_8

    .line 691
    iget-object v1, v15, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->drawer:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v4

    .line 692
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    .line 691
    invoke-interface/range {v1 .. v9}, Lorg/webrtc/ali/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    .line 698
    :goto_2
    mul-int v1, v8, v9

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 699
    .local v12, "bitmapBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v8, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 700
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    invoke-static/range {v6 .. v12}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 703
    const v1, 0x8d40

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 704
    const-string/jumbo v1, "EglRenderer.notifyCallbacks"

    invoke-static {v1}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 706
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 707
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v13, v12}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 708
    iget-object v1, v15, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/ali/EglRenderer$FrameListener;

    invoke-interface {v1, v13}, Lorg/webrtc/ali/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 694
    .end local v12    # "bitmapBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    iget-object v1, v15, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->drawer:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    move-object/from16 v0, p1

    iget v2, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->textureId:I

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v4

    .line 695
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 694
    invoke-interface/range {v1 .. v9}, Lorg/webrtc/ali/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    goto :goto_2
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 496
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private renderFrameOnRenderThread()V
    .locals 31

    .prologue
    .line 542
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/webrtc/ali/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v9

    .line 543
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/EglRenderer;->pendingFrame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    if-nez v4, :cond_0

    .line 544
    monitor-exit v9

    .line 651
    :goto_0
    return-void

    .line 546
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/ali/EglRenderer;->pendingFrame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    move-object/from16 v20, v0

    .line 547
    .local v20, "frame":Lorg/webrtc/ali/VideoRenderer$I420Frame;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/webrtc/ali/EglRenderer;->pendingFrame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    .line 548
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v4}, Lorg/webrtc/ali/EglBase;->hasSurface()Z

    move-result v4

    if-nez v4, :cond_2

    .line 550
    :cond_1
    const-string/jumbo v4, "Dropping frame - No surface"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 551
    invoke-static/range {v20 .. v20}, Lorg/webrtc/ali/VideoRenderer;->renderFrameDone(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    goto :goto_0

    .line 548
    .end local v20    # "frame":Lorg/webrtc/ali/VideoRenderer$I420Frame;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 556
    .restart local v20    # "frame":Lorg/webrtc/ali/VideoRenderer$I420Frame;
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/webrtc/ali/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v9

    .line 557
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->minRenderPeriodNs:J

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v4, v10, v12

    if-nez v4, :cond_7

    .line 559
    const/16 v24, 0x0

    .line 575
    .local v24, "shouldRenderFrame":Z
    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 577
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    .line 578
    .local v26, "startTimeNs":J
    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->samplingMatrix:[F

    move-object/from16 v0, v20

    iget v9, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    int-to-float v9, v9

    .line 579
    invoke-static {v4, v9}, Lorg/webrtc/ali/RendererCommon;->rotateTextureMatrix([FF)[F

    move-result-object v30

    .line 587
    .local v30, "texMatrix":[F
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/webrtc/ali/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v9

    .line 589
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/EglRenderer;->layoutAspectRatio:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_b

    .line 590
    invoke-virtual/range {v20 .. v20}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v20 .. v20}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v21, v4, v10

    .line 591
    .local v21, "frameAspectRatio":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/webrtc/ali/EglRenderer;->mirror:Z

    move-object/from16 v0, p0

    iget v10, v0, Lorg/webrtc/ali/EglRenderer;->layoutAspectRatio:F

    move/from16 v0, v21

    invoke-static {v4, v0, v10}, Lorg/webrtc/ali/RendererCommon;->getLayoutMatrix(ZFF)[F

    move-result-object v22

    .line 592
    .local v22, "layoutMatrix":[F
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/EglRenderer;->layoutAspectRatio:F

    cmpl-float v4, v21, v4

    if-lez v4, :cond_a

    .line 593
    invoke-virtual/range {v20 .. v20}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v10, v0, Lorg/webrtc/ali/EglRenderer;->layoutAspectRatio:F

    mul-float/2addr v4, v10

    float-to-int v7, v4

    .line 594
    .local v7, "drawnFrameWidth":I
    invoke-virtual/range {v20 .. v20}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v8

    .line 605
    .end local v21    # "frameAspectRatio":F
    .local v8, "drawnFrameHeight":I
    :goto_2
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/webrtc/ali/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v6

    .line 606
    .local v6, "drawMatrix":[F
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 608
    const/16 v25, 0x0

    .line 609
    .local v25, "shouldUploadYuvTextures":Z
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v4, :cond_5

    .line 613
    move/from16 v25, v24

    if-nez v24, :cond_5

    .line 614
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;

    .line 615
    .local v23, "listenerAndParams":Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;
    move-object/from16 v0, v23

    iget v9, v0, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->scale:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    if-nez v24, :cond_4

    move-object/from16 v0, v23

    iget-boolean v9, v0, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    if-nez v9, :cond_3

    .line 617
    :cond_4
    const/16 v25, 0x1

    .line 623
    .end local v23    # "listenerAndParams":Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;
    :cond_5
    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/EglRenderer;->yuvUploader:Lorg/webrtc/ali/RendererCommon$YuvUploader;

    move-object/from16 v0, v20

    iget v9, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->width:I

    move-object/from16 v0, v20

    iget v10, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->height:I

    move-object/from16 v0, v20

    iget-object v11, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    move-object/from16 v0, v20

    iget-object v12, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 624
    invoke-virtual {v4, v9, v10, v11, v12}, Lorg/webrtc/ali/RendererCommon$YuvUploader;->uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I

    move-result-object v5

    .line 627
    .local v5, "yuvTextures":[I
    :goto_3
    if-eqz v24, :cond_6

    .line 628
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v9, v10, v11}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 629
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 630
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v4, :cond_e

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/EglRenderer;->drawer:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    .line 632
    invoke-virtual {v11}, Lorg/webrtc/ali/EglBase;->surfaceWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v12}, Lorg/webrtc/ali/EglBase;->surfaceHeight()I

    move-result v12

    .line 631
    invoke-interface/range {v4 .. v12}, Lorg/webrtc/ali/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    .line 638
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    .line 639
    .local v28, "swapBuffersStartTimeNs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v4}, Lorg/webrtc/ali/EglBase;->swapBuffers()V

    .line 641
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 642
    .local v18, "currentTimeNs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/webrtc/ali/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 643
    :try_start_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/EglRenderer;->framesRendered:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/webrtc/ali/EglRenderer;->framesRendered:I

    .line 644
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->renderTimeNs:J

    sub-long v12, v18, v26

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->renderTimeNs:J

    .line 645
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->renderSwapBufferTimeNs:J

    sub-long v12, v18, v28

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->renderSwapBufferTimeNs:J

    .line 646
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 649
    .end local v18    # "currentTimeNs":J
    .end local v28    # "swapBuffersStartTimeNs":J
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    move/from16 v3, v24

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/webrtc/ali/EglRenderer;->notifyCallbacks(Lorg/webrtc/ali/VideoRenderer$I420Frame;[I[FZ)V

    .line 650
    invoke-static/range {v20 .. v20}, Lorg/webrtc/ali/VideoRenderer;->renderFrameDone(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    goto/16 :goto_0

    .line 560
    .end local v5    # "yuvTextures":[I
    .end local v6    # "drawMatrix":[F
    .end local v7    # "drawnFrameWidth":I
    .end local v8    # "drawnFrameHeight":I
    .end local v22    # "layoutMatrix":[F
    .end local v24    # "shouldRenderFrame":Z
    .end local v25    # "shouldUploadYuvTextures":Z
    .end local v26    # "startTimeNs":J
    .end local v30    # "texMatrix":[F
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->minRenderPeriodNs:J

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-gtz v4, :cond_8

    .line 562
    const/16 v24, 0x1

    .restart local v24    # "shouldRenderFrame":Z
    goto/16 :goto_1

    .line 564
    .end local v24    # "shouldRenderFrame":Z
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 565
    .restart local v18    # "currentTimeNs":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->nextFrameTimeNs:J

    cmp-long v4, v18, v10

    if-gez v4, :cond_9

    .line 566
    const-string/jumbo v4, "Skipping frame rendering - fps reduction is active."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 567
    const/16 v24, 0x0

    .restart local v24    # "shouldRenderFrame":Z
    goto/16 :goto_1

    .line 569
    .end local v24    # "shouldRenderFrame":Z
    :cond_9
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->nextFrameTimeNs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/webrtc/ali/EglRenderer;->minRenderPeriodNs:J

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->nextFrameTimeNs:J

    .line 571
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->nextFrameTimeNs:J

    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/webrtc/ali/EglRenderer;->nextFrameTimeNs:J

    .line 572
    const/16 v24, 0x1

    .restart local v24    # "shouldRenderFrame":Z
    goto/16 :goto_1

    .line 575
    .end local v18    # "currentTimeNs":J
    .end local v24    # "shouldRenderFrame":Z
    :catchall_1
    move-exception v4

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 596
    .restart local v21    # "frameAspectRatio":F
    .restart local v22    # "layoutMatrix":[F
    .restart local v24    # "shouldRenderFrame":Z
    .restart local v26    # "startTimeNs":J
    .restart local v30    # "texMatrix":[F
    :cond_a
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v7

    .line 597
    .restart local v7    # "drawnFrameWidth":I
    invoke-virtual/range {v20 .. v20}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v10, v0, Lorg/webrtc/ali/EglRenderer;->layoutAspectRatio:F

    div-float/2addr v4, v10

    float-to-int v8, v4

    .line 599
    .restart local v8    # "drawnFrameHeight":I
    goto/16 :goto_2

    .line 600
    .end local v7    # "drawnFrameWidth":I
    .end local v8    # "drawnFrameHeight":I
    .end local v21    # "frameAspectRatio":F
    .end local v22    # "layoutMatrix":[F
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/webrtc/ali/EglRenderer;->mirror:Z

    if-eqz v4, :cond_c

    .line 601
    invoke-static {}, Lorg/webrtc/ali/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v22

    .line 602
    .restart local v22    # "layoutMatrix":[F
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v7

    .line 603
    .restart local v7    # "drawnFrameWidth":I
    invoke-virtual/range {v20 .. v20}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v8

    .restart local v8    # "drawnFrameHeight":I
    goto/16 :goto_2

    .line 601
    .end local v7    # "drawnFrameWidth":I
    .end local v8    # "drawnFrameHeight":I
    .end local v22    # "layoutMatrix":[F
    :cond_c
    invoke-static {}, Lorg/webrtc/ali/RendererCommon;->identityMatrix()[F

    move-result-object v22

    goto :goto_5

    .line 606
    :catchall_2
    move-exception v4

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4

    .line 624
    .restart local v6    # "drawMatrix":[F
    .restart local v7    # "drawnFrameWidth":I
    .restart local v8    # "drawnFrameHeight":I
    .restart local v22    # "layoutMatrix":[F
    .restart local v25    # "shouldUploadYuvTextures":Z
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 634
    .restart local v5    # "yuvTextures":[I
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/webrtc/ali/EglRenderer;->drawer:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    move-object/from16 v0, v20

    iget v10, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->textureId:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    .line 635
    invoke-virtual {v4}, Lorg/webrtc/ali/EglBase;->surfaceWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/EglRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v4}, Lorg/webrtc/ali/EglBase;->surfaceHeight()I

    move-result v17

    move-object v11, v6

    move v12, v7

    move v13, v8

    .line 634
    invoke-interface/range {v9 .. v17}, Lorg/webrtc/ali/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    goto/16 :goto_4

    .line 646
    .restart local v18    # "currentTimeNs":J
    .restart local v28    # "swapBuffersStartTimeNs":J
    :catchall_3
    move-exception v4

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4
.end method

.method private resetStatistics(J)V
    .locals 5
    .param p1, "currentTimeNs"    # J

    .prologue
    .line 283
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    iput-wide p1, p0, Lorg/webrtc/ali/EglRenderer;->statisticsStartTimeNs:J

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/ali/EglRenderer;->framesReceived:I

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/ali/EglRenderer;->framesDropped:I

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/ali/EglRenderer;->framesRendered:I

    .line 288
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/webrtc/ali/EglRenderer;->renderTimeNs:J

    .line 289
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/webrtc/ali/EglRenderer;->renderSwapBufferTimeNs:J

    .line 290
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;F)V
    .locals 2
    .param p1, "listener"    # Lorg/webrtc/ali/EglRenderer$FrameListener;
    .param p2, "scale"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 370
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/webrtc/ali/EglRenderer;->addFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;FLorg/webrtc/ali/RendererCommon$GlDrawer;Z)V

    .line 371
    return-void
.end method

.method public addFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;FLorg/webrtc/ali/RendererCommon$GlDrawer;)V
    .locals 1
    .param p1, "listener"    # Lorg/webrtc/ali/EglRenderer$FrameListener;
    .param p2, "scale"    # F
    .param p3, "drawerParam"    # Lorg/webrtc/ali/RendererCommon$GlDrawer;

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/webrtc/ali/EglRenderer;->addFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;FLorg/webrtc/ali/RendererCommon$GlDrawer;Z)V

    .line 385
    return-void
.end method

.method public addFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;FLorg/webrtc/ali/RendererCommon$GlDrawer;Z)V
    .locals 6
    .param p1, "listener"    # Lorg/webrtc/ali/EglRenderer$FrameListener;
    .param p2, "scale"    # F
    .param p3, "drawerParam"    # Lorg/webrtc/ali/RendererCommon$GlDrawer;
    .param p4, "applyFpsReduction"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 400
    new-instance v0, Lorg/webrtc/ali/EglRenderer$6;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/ali/EglRenderer$6;-><init>(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/RendererCommon$GlDrawer;Lorg/webrtc/ali/EglRenderer$FrameListener;FZ)V

    invoke-direct {p0, v0}, Lorg/webrtc/ali/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method public clearImage()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 516
    invoke-virtual {p0, v0, v0, v0, v0}, Lorg/webrtc/ali/EglRenderer;->clearImage(FFFF)V

    .line 517
    return-void
.end method

.method public clearImage(FFFF)V
    .locals 8
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 523
    iget-object v6, p0, Lorg/webrtc/ali/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 524
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 525
    monitor-exit v6

    .line 533
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v7, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v0, Lorg/webrtc/ali/EglRenderer$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/ali/EglRenderer$9;-><init>(Lorg/webrtc/ali/EglRenderer;FFFF)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 533
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createEglSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lorg/webrtc/ali/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lorg/webrtc/ali/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    .prologue
    .line 353
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {p0, v0}, Lorg/webrtc/ali/EglRenderer;->setFpsReduction(F)V

    .line 354
    return-void
.end method

.method public init(Lorg/webrtc/ali/EglBase$Context;[ILorg/webrtc/ali/RendererCommon$GlDrawer;)V
    .locals 10
    .param p1, "sharedContext"    # Lorg/webrtc/ali/EglBase$Context;
    .param p2, "configAttributes"    # [I
    .param p3, "drawer"    # Lorg/webrtc/ali/RendererCommon$GlDrawer;

    .prologue
    .line 170
    iget-object v4, p0, Lorg/webrtc/ali/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 171
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 172
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/webrtc/ali/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Already initialized"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 174
    :cond_0
    :try_start_1
    const-string/jumbo v3, "Initializing EglRenderer"

    invoke-direct {p0, v3}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 175
    iput-object p3, p0, Lorg/webrtc/ali/EglRenderer;->drawer:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    .line 177
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/webrtc/ali/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "EglRenderer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "renderThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 183
    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v5, Lorg/webrtc/ali/EglRenderer$3;

    invoke-direct {v5, p0, p1, p2}, Lorg/webrtc/ali/EglRenderer$3;-><init>(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/EglBase$Context;[I)V

    invoke-static {v3, v5}, Lorg/webrtc/ali/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 198
    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lorg/webrtc/ali/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 200
    .local v0, "currentTimeNs":J
    invoke-direct {p0, v0, v1}, Lorg/webrtc/ali/EglRenderer;->resetStatistics(J)V

    .line 201
    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lorg/webrtc/ali/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x4

    .line 202
    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 201
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/webrtc/ali/EglRenderer;->setFpsReduction(F)V

    .line 358
    return-void
.end method

.method public printStackTrace()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 294
    iget-object v4, p0, Lorg/webrtc/ali/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 295
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 297
    .local v1, "renderThread":Ljava/lang/Thread;
    :goto_0
    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 299
    .local v0, "renderStackTrace":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 300
    const-string/jumbo v3, "EglRenderer stack trace:"

    invoke-direct {p0, v3}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 301
    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v2, v0, v3

    .line 302
    .local v2, "traceElem":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 295
    .end local v0    # "renderStackTrace":[Ljava/lang/StackTraceElement;
    .end local v1    # "renderThread":Ljava/lang/Thread;
    .end local v2    # "traceElem":Ljava/lang/StackTraceElement;
    :cond_0
    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 296
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    goto :goto_0

    .line 306
    .restart local v1    # "renderThread":Ljava/lang/Thread;
    :cond_1
    monitor-exit v4

    return-void

    .end local v1    # "renderThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public release()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 226
    const-string/jumbo v2, "Releasing."

    invoke-direct {p0, v2}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 228
    .local v0, "eglCleanupBarrier":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 229
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 230
    const-string/jumbo v2, "Already released"

    invoke-direct {p0, v2}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 231
    monitor-exit v3

    .line 277
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lorg/webrtc/ali/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v4, Lorg/webrtc/ali/EglRenderer$4;

    invoke-direct {v4, p0, v0}, Lorg/webrtc/ali/EglRenderer$4;-><init>(Lorg/webrtc/ali/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 256
    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 258
    .local v1, "renderLooper":Landroid/os/Looper;
    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v4, Lorg/webrtc/ali/EglRenderer$5;

    invoke-direct {v4, p0, v1}, Lorg/webrtc/ali/EglRenderer$5;-><init>(Lorg/webrtc/ali/EglRenderer;Landroid/os/Looper;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 267
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-static {v0}, Lorg/webrtc/ali/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 270
    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v3

    .line 271
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->pendingFrame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->pendingFrame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    invoke-static {v2}, Lorg/webrtc/ali/VideoRenderer;->renderFrameDone(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    .line 273
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/ali/EglRenderer;->pendingFrame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    .line 275
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    const-string/jumbo v2, "Releasing done."

    invoke-direct {p0, v2}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v1    # "renderLooper":Landroid/os/Looper;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 275
    .restart local v1    # "renderLooper":Landroid/os/Looper;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public releaseEglSurface(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "completionCallback"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 472
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 473
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/ali/EglRenderer$8;

    invoke-direct {v2, p0, p1}, Lorg/webrtc/ali/EglRenderer$8;-><init>(Lorg/webrtc/ali/EglRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 486
    monitor-exit v1

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/webrtc/ali/EglRenderer$FrameListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 418
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 419
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "removeFrameListener must not be called on the render thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 422
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lorg/webrtc/ali/EglRenderer$7;

    invoke-direct {v1, p0, v0, p1}, Lorg/webrtc/ali/EglRenderer$7;-><init>(Lorg/webrtc/ali/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lorg/webrtc/ali/EglRenderer$FrameListener;)V

    invoke-direct {p0, v1}, Lorg/webrtc/ali/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 434
    invoke-static {v0}, Lorg/webrtc/ali/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 435
    return-void
.end method

.method public renderFrame(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V
    .locals 5
    .param p1, "frame"    # Lorg/webrtc/ali/VideoRenderer$I420Frame;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 440
    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_0
    iget v1, p0, Lorg/webrtc/ali/EglRenderer;->framesReceived:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/webrtc/ali/EglRenderer;->framesReceived:I

    .line 442
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 446
    const-string/jumbo v1, "Dropping frame - Not initialized or already released."

    invoke-direct {p0, v1}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 447
    invoke-static {p1}, Lorg/webrtc/ali/VideoRenderer;->renderFrameDone(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    .line 448
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 442
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 450
    :cond_1
    :try_start_3
    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 451
    :try_start_4
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer;->pendingFrame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 452
    .local v0, "dropOldFrame":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 453
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer;->pendingFrame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    invoke-static {v1}, Lorg/webrtc/ali/VideoRenderer;->renderFrameDone(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    .line 455
    :cond_2
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer;->pendingFrame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    .line 456
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lorg/webrtc/ali/EglRenderer;->renderFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 458
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 459
    if-eqz v0, :cond_0

    .line 460
    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 461
    :try_start_6
    iget v1, p0, Lorg/webrtc/ali/EglRenderer;->framesDropped:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/webrtc/ali/EglRenderer;->framesDropped:I

    .line 462
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 451
    .end local v0    # "dropOldFrame":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 457
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    .line 458
    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1
.end method

.method public setFpsReduction(F)V
    .locals 6
    .param p1, "fps"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFpsReduction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 339
    :try_start_0
    iget-wide v0, p0, Lorg/webrtc/ali/EglRenderer;->minRenderPeriodNs:J

    .line 340
    .local v0, "previousRenderPeriodNs":J
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 341
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lorg/webrtc/ali/EglRenderer;->minRenderPeriodNs:J

    .line 345
    :goto_0
    iget-wide v4, p0, Lorg/webrtc/ali/EglRenderer;->minRenderPeriodNs:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 347
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/webrtc/ali/EglRenderer;->nextFrameTimeNs:J

    .line 349
    :cond_0
    monitor-exit v3

    return-void

    .line 343
    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    long-to-float v2, v4

    div-float/2addr v2, p1

    float-to-long v4, v2

    iput-wide v4, p0, Lorg/webrtc/ali/EglRenderer;->minRenderPeriodNs:J

    goto :goto_0

    .line 349
    .end local v0    # "previousRenderPeriodNs":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setLayoutAspectRatio(F)V
    .locals 2
    .param p1, "layoutAspectRatio"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setLayoutAspectRatio: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_0
    iput p1, p0, Lorg/webrtc/ali/EglRenderer;->layoutAspectRatio:F

    .line 327
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMirror(Z)V
    .locals 2
    .param p1, "mirror"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMirror: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/EglRenderer;->logD(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    iput-boolean p1, p0, Lorg/webrtc/ali/EglRenderer;->mirror:Z

    .line 316
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
