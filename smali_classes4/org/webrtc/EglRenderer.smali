.class public Lorg/webrtc/EglRenderer;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Lorg/webrtc/VideoRenderer$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/EglRenderer$EglSurfaceCreation;,
        Lorg/webrtc/EglRenderer$FrameListenerAndParams;,
        Lorg/webrtc/EglRenderer$FrameListener;
    }
.end annotation


# static fields
.field private static final LOG_INTERVAL_SEC:J = 0x4L

.field private static final MAX_SURFACE_CLEAR_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EglRenderer"


# instance fields
.field private bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

.field private drawer:Lorg/webrtc/RendererCommon$GlDrawer;

.field private eglBase:Lorg/webrtc/EglBase;

.field private final eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/EglRenderer$FrameListenerAndParams;",
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

.field private pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

.field private final renderFrameRunnable:Ljava/lang/Runnable;

.field private renderSwapBufferTimeNs:J

.field private renderThreadHandler:Landroid/os/Handler;

.field private renderTimeNs:J

.field private final statisticsLock:Ljava/lang/Object;

.field private statisticsStartTimeNs:J

.field private yuvTextures:[I

.field private final yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Lorg/webrtc/RendererCommon$YuvUploader;

    invoke-direct {v0}, Lorg/webrtc/RendererCommon$YuvUploader;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;

    .line 103
    iput-object v1, p0, Lorg/webrtc/EglRenderer;->yuvTextures:[I

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Lorg/webrtc/EglRenderer$1;

    invoke-direct {v0, p0}, Lorg/webrtc/EglRenderer$1;-><init>(Lorg/webrtc/EglRenderer;)V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->renderFrameRunnable:Ljava/lang/Runnable;

    .line 142
    new-instance v0, Lorg/webrtc/EglRenderer$2;

    invoke-direct {v0, p0}, Lorg/webrtc/EglRenderer$2;-><init>(Lorg/webrtc/EglRenderer;)V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 156
    new-instance v0, Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-direct {v0, p0, v1}, Lorg/webrtc/EglRenderer$EglSurfaceCreation;-><init>(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglRenderer$1;)V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    .line 163
    iput-object p1, p0, Lorg/webrtc/EglRenderer;->name:Ljava/lang/String;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/EglRenderer;)Lorg/webrtc/EglBase;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    return-object v0
.end method

.method static synthetic access$002(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglBase;)Lorg/webrtc/EglBase;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;
    .param p1, "x1"    # Lorg/webrtc/EglBase;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    return-object p1
.end method

.method static synthetic access$100(Lorg/webrtc/EglRenderer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/webrtc/EglRenderer;->renderFrameOnRenderThread()V

    return-void
.end method

.method static synthetic access$1000(Lorg/webrtc/EglRenderer;)Lorg/webrtc/GlTextureFrameBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/webrtc/EglRenderer;Lorg/webrtc/GlTextureFrameBuffer;)Lorg/webrtc/GlTextureFrameBuffer;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;
    .param p1, "x1"    # Lorg/webrtc/GlTextureFrameBuffer;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/webrtc/EglRenderer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/webrtc/EglRenderer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/webrtc/EglRenderer;->clearSurfaceOnRenderThread()V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/EglRenderer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/webrtc/EglRenderer;->logStatistics()V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/EglRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/EglRenderer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/EglRenderer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lorg/webrtc/EglRenderer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lorg/webrtc/EglRenderer;)Lorg/webrtc/RendererCommon$GlDrawer;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    return-object v0
.end method

.method static synthetic access$802(Lorg/webrtc/EglRenderer;Lorg/webrtc/RendererCommon$GlDrawer;)Lorg/webrtc/RendererCommon$GlDrawer;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;
    .param p1, "x1"    # Lorg/webrtc/RendererCommon$GlDrawer;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    return-object p1
.end method

.method static synthetic access$900(Lorg/webrtc/EglRenderer;)[I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->yuvTextures:[I

    return-object v0
.end method

.method static synthetic access$902(Lorg/webrtc/EglRenderer;[I)[I
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;
    .param p1, "x1"    # [I

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/EglRenderer;->yuvTextures:[I

    return-object p1
.end method

.method private averageTimeAsString(JI)Ljava/lang/String;
    .locals 5
    .param p1, "sumTimeNs"    # J
    .param p3, "count"    # I

    .prologue
    .line 678
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

.method private clearSurfaceOnRenderThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const-string/jumbo v0, "clearSurface"

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 509
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 510
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 511
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->swapBuffers()V

    .line 513
    :cond_0
    return-void
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .locals 1
    .param p1, "surface"    # Ljava/lang/Object;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 702
    const-string/jumbo v0, "EglRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    return-void
.end method

.method private logStatistics()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 682
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 683
    .local v0, "currentTimeNs":J
    iget-object v6, p0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 684
    :try_start_0
    iget-wide v8, p0, Lorg/webrtc/EglRenderer;->statisticsStartTimeNs:J

    sub-long v2, v0, v8

    .line 685
    .local v2, "elapsedTimeNs":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-gtz v5, :cond_0

    .line 686
    monitor-exit v6

    .line 698
    :goto_0
    return-void

    .line 688
    :cond_0
    iget v5, p0, Lorg/webrtc/EglRenderer;->framesRendered:I

    int-to-long v8, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    mul-long/2addr v8, v10

    long-to-float v5, v8

    long-to-float v7, v2

    div-float v4, v5, v7

    .line 689
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

    iget v7, p0, Lorg/webrtc/EglRenderer;->framesReceived:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Dropped: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lorg/webrtc/EglRenderer;->framesDropped:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Rendered: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lorg/webrtc/EglRenderer;->framesRendered:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Render fps: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "%.1f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 693
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Average render time: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lorg/webrtc/EglRenderer;->renderTimeNs:J

    iget v7, p0, Lorg/webrtc/EglRenderer;->framesRendered:I

    .line 694
    invoke-direct {p0, v8, v9, v7}, Lorg/webrtc/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Average swapBuffer time: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lorg/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    iget v7, p0, Lorg/webrtc/EglRenderer;->framesRendered:I

    .line 696
    invoke-direct {p0, v8, v9, v7}, Lorg/webrtc/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 689
    invoke-direct {p0, v5}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 697
    invoke-direct {p0, v0, v1}, Lorg/webrtc/EglRenderer;->resetStatistics(J)V

    .line 698
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

.method private notifyCallbacks(Lorg/webrtc/VideoRenderer$I420Frame;[F)V
    .locals 17
    .param p1, "frame"    # Lorg/webrtc/VideoRenderer$I420Frame;
    .param p2, "texMatrix"    # [F

    .prologue
    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    :cond_0
    return-void

    .line 629
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 630
    .local v15, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/webrtc/EglRenderer$FrameListenerAndParams;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 632
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/webrtc/EglRenderer;->mirror:Z

    if-eqz v1, :cond_3

    .line 634
    invoke-static {}, Lorg/webrtc/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v1

    .line 633
    :goto_0
    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v1

    .line 635
    invoke-static {}, Lorg/webrtc/RendererCommon;->verticalFlipMatrix()[F

    move-result-object v2

    .line 632
    invoke-static {v1, v2}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v3

    .line 637
    .local v3, "bitmapMatrix":[F
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/webrtc/EglRenderer$FrameListenerAndParams;

    .line 638
    .local v14, "listenerAndParams":Lorg/webrtc/EglRenderer$FrameListenerAndParams;
    iget v1, v14, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 639
    .local v8, "scaledWidth":I
    iget v1, v14, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v9, v1

    .line 641
    .local v9, "scaledHeight":I
    if-eqz v8, :cond_2

    if-nez v9, :cond_4

    .line 642
    :cond_2
    iget-object v1, v14, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/EglRenderer$FrameListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/webrtc/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 634
    .end local v3    # "bitmapMatrix":[F
    .end local v8    # "scaledWidth":I
    .end local v9    # "scaledHeight":I
    .end local v14    # "listenerAndParams":Lorg/webrtc/EglRenderer$FrameListenerAndParams;
    :cond_3
    invoke-static {}, Lorg/webrtc/RendererCommon;->identityMatrix()[F

    move-result-object v1

    goto :goto_0

    .line 646
    .restart local v3    # "bitmapMatrix":[F
    .restart local v8    # "scaledWidth":I
    .restart local v9    # "scaledHeight":I
    .restart local v14    # "listenerAndParams":Lorg/webrtc/EglRenderer$FrameListenerAndParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    if-nez v1, :cond_5

    .line 647
    new-instance v1, Lorg/webrtc/GlTextureFrameBuffer;

    const/16 v2, 0x1908

    invoke-direct {v1, v2}, Lorg/webrtc/GlTextureFrameBuffer;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 649
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v1, v8, v9}, Lorg/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 651
    const v1, 0x8d40

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lorg/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 652
    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v4, 0xde1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 653
    invoke-virtual {v5}, Lorg/webrtc/GlTextureFrameBuffer;->getTextureId()I

    move-result v5

    const/4 v6, 0x0

    .line 652
    invoke-static {v1, v2, v4, v5, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 655
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v1, :cond_6

    .line 656
    iget-object v1, v14, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/EglRenderer;->yuvTextures:[I

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v4

    .line 657
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 656
    invoke-interface/range {v1 .. v9}, Lorg/webrtc/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    .line 663
    :goto_2
    mul-int v1, v8, v9

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 664
    .local v12, "bitmapBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v8, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 665
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    invoke-static/range {v6 .. v12}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 668
    const v1, 0x8d40

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 669
    const-string/jumbo v1, "EglRenderer.notifyCallbacks"

    invoke-static {v1}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 671
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 672
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v13, v12}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 673
    iget-object v1, v14, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/EglRenderer$FrameListener;

    invoke-interface {v1, v13}, Lorg/webrtc/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 659
    .end local v12    # "bitmapBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v1, v14, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    move-object/from16 v0, p1

    iget v2, v0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v4

    .line 660
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 659
    invoke-interface/range {v1 .. v9}, Lorg/webrtc/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    goto :goto_2
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 499
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 500
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
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
    .locals 27

    .prologue
    .line 538
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v5

    .line 539
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    if-nez v4, :cond_0

    .line 540
    monitor-exit v5

    .line 621
    :goto_0
    return-void

    .line 542
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    move-object/from16 v18, v0

    .line 543
    .local v18, "frame":Lorg/webrtc/VideoRenderer$I420Frame;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    .line 544
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v4}, Lorg/webrtc/EglBase;->hasSurface()Z

    move-result v4

    if-nez v4, :cond_2

    .line 547
    :cond_1
    invoke-static/range {v18 .. v18}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    goto :goto_0

    .line 544
    .end local v18    # "frame":Lorg/webrtc/VideoRenderer$I420Frame;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 551
    .restart local v18    # "frame":Lorg/webrtc/VideoRenderer$I420Frame;
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    .line 552
    .local v22, "startTimeNs":J
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    move-object/from16 v0, v18

    iget v5, v0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    int-to-float v5, v5

    .line 553
    invoke-static {v4, v5}, Lorg/webrtc/RendererCommon;->rotateTextureMatrix([FF)[F

    move-result-object v26

    .line 561
    .local v26, "texMatrix":[F
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v5

    .line 563
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/EglRenderer;->layoutAspectRatio:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    .line 564
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v19, v4, v6

    .line 565
    .local v19, "frameAspectRatio":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/webrtc/EglRenderer;->mirror:Z

    move-object/from16 v0, p0

    iget v6, v0, Lorg/webrtc/EglRenderer;->layoutAspectRatio:F

    move/from16 v0, v19

    invoke-static {v4, v0, v6}, Lorg/webrtc/RendererCommon;->getLayoutMatrix(ZFF)[F

    move-result-object v21

    .line 566
    .local v21, "layoutMatrix":[F
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/EglRenderer;->layoutAspectRatio:F

    cmpl-float v4, v19, v4

    if-lez v4, :cond_3

    .line 567
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/webrtc/EglRenderer;->layoutAspectRatio:F

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v17, v0

    .line 568
    .local v17, "drawnFrameWidth":I
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v16

    .line 579
    .end local v19    # "frameAspectRatio":F
    .local v16, "drawnFrameHeight":I
    :goto_1
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v13

    .line 580
    .local v13, "drawMatrix":[F
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 582
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 583
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 584
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v4, :cond_7

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->yuvTextures:[I

    if-nez v4, :cond_6

    .line 587
    const/4 v4, 0x3

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/webrtc/EglRenderer;->yuvTextures:[I

    .line 588
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    const/4 v4, 0x3

    move/from16 v0, v20

    if-ge v0, v4, :cond_6

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->yuvTextures:[I

    const/16 v5, 0xde1

    invoke-static {v5}, Lorg/webrtc/GlUtil;->generateTexture(I)I

    move-result v5

    aput v5, v4, v20

    .line 588
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 570
    .end local v13    # "drawMatrix":[F
    .end local v16    # "drawnFrameHeight":I
    .end local v17    # "drawnFrameWidth":I
    .end local v20    # "i":I
    .restart local v19    # "frameAspectRatio":F
    :cond_3
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v17

    .line 571
    .restart local v17    # "drawnFrameWidth":I
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/webrtc/EglRenderer;->layoutAspectRatio:F

    div-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v16, v0

    .line 573
    .restart local v16    # "drawnFrameHeight":I
    goto :goto_1

    .line 574
    .end local v16    # "drawnFrameHeight":I
    .end local v17    # "drawnFrameWidth":I
    .end local v19    # "frameAspectRatio":F
    .end local v21    # "layoutMatrix":[F
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/webrtc/EglRenderer;->mirror:Z

    if-eqz v4, :cond_5

    .line 575
    invoke-static {}, Lorg/webrtc/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v21

    .line 576
    .restart local v21    # "layoutMatrix":[F
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v17

    .line 577
    .restart local v17    # "drawnFrameWidth":I
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v16

    .restart local v16    # "drawnFrameHeight":I
    goto :goto_1

    .line 575
    .end local v16    # "drawnFrameHeight":I
    .end local v17    # "drawnFrameWidth":I
    .end local v21    # "layoutMatrix":[F
    :cond_5
    invoke-static {}, Lorg/webrtc/RendererCommon;->identityMatrix()[F

    move-result-object v21

    goto :goto_3

    .line 580
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 593
    .restart local v13    # "drawMatrix":[F
    .restart local v16    # "drawnFrameHeight":I
    .restart local v17    # "drawnFrameWidth":I
    .restart local v21    # "layoutMatrix":[F
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/EglRenderer;->yuvTextures:[I

    move-object/from16 v0, v18

    iget v6, v0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    move-object/from16 v0, v18

    iget v7, v0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    move-object/from16 v0, v18

    iget-object v8, v0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    invoke-virtual/range {v4 .. v9}, Lorg/webrtc/RendererCommon$YuvUploader;->uploadYuvData([III[I[Ljava/nio/ByteBuffer;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/EglRenderer;->yuvTextures:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    .line 596
    invoke-virtual {v6}, Lorg/webrtc/EglBase;->surfaceWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v6}, Lorg/webrtc/EglBase;->surfaceHeight()I

    move-result v12

    move-object v6, v13

    move/from16 v7, v17

    move/from16 v8, v16

    .line 595
    invoke-interface/range {v4 .. v12}, Lorg/webrtc/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    .line 609
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    .line 610
    .local v24, "swapBuffersStartTimeNs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v4}, Lorg/webrtc/EglBase;->swapBuffers()V

    .line 612
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 613
    .local v14, "currentTimeNs":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 614
    :try_start_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/EglRenderer;->framesRendered:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/webrtc/EglRenderer;->framesRendered:I

    .line 615
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/webrtc/EglRenderer;->renderTimeNs:J

    sub-long v8, v14, v22

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/webrtc/EglRenderer;->renderTimeNs:J

    .line 616
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    sub-long v8, v14, v24

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 617
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 619
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/webrtc/EglRenderer;->notifyCallbacks(Lorg/webrtc/VideoRenderer$I420Frame;[F)V

    .line 620
    invoke-static/range {v18 .. v18}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    goto/16 :goto_0

    .line 599
    .end local v14    # "currentTimeNs":J
    .end local v24    # "swapBuffersStartTimeNs":J
    :cond_7
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lorg/webrtc/VideoRenderer$I420Frame;->textureGoRgb:Z

    if-eqz v4, :cond_8

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    move-object/from16 v0, v18

    iget v5, v0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    .line 601
    invoke-virtual {v6}, Lorg/webrtc/EglBase;->surfaceWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v6}, Lorg/webrtc/EglBase;->surfaceHeight()I

    move-result v12

    move-object v6, v13

    move/from16 v7, v17

    move/from16 v8, v16

    .line 600
    invoke-interface/range {v4 .. v12}, Lorg/webrtc/RendererCommon$GlDrawer;->drawRgb(I[FIIIIII)V

    goto :goto_4

    .line 604
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    move-object/from16 v0, v18

    iget v5, v0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    .line 605
    invoke-virtual {v6}, Lorg/webrtc/EglBase;->surfaceWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v6}, Lorg/webrtc/EglBase;->surfaceHeight()I

    move-result v12

    move-object v6, v13

    move/from16 v7, v17

    move/from16 v8, v16

    .line 604
    invoke-interface/range {v4 .. v12}, Lorg/webrtc/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    goto/16 :goto_4

    .line 617
    .restart local v14    # "currentTimeNs":J
    .restart local v24    # "swapBuffersStartTimeNs":J
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method

.method private resetStatistics(J)V
    .locals 5
    .param p1, "currentTimeNs"    # J

    .prologue
    .line 290
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    iput-wide p1, p0, Lorg/webrtc/EglRenderer;->statisticsStartTimeNs:J

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/EglRenderer;->framesReceived:I

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/EglRenderer;->framesDropped:I

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/EglRenderer;->framesRendered:I

    .line 295
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/webrtc/EglRenderer;->renderTimeNs:J

    .line 296
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 297
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
.method public addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;F)V
    .locals 1
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;
    .param p2, "scale"    # F

    .prologue
    .line 376
    new-instance v0, Lorg/webrtc/EglRenderer$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/webrtc/EglRenderer$6;-><init>(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglRenderer$FrameListener;F)V

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method public addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 1
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;
    .param p2, "scale"    # F
    .param p3, "drawer"    # Lorg/webrtc/RendererCommon$GlDrawer;

    .prologue
    .line 394
    new-instance v0, Lorg/webrtc/EglRenderer$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/webrtc/EglRenderer$7;-><init>(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method public clearImage()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 519
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 521
    monitor-exit v1

    .line 529
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/EglRenderer$10;

    invoke-direct {v2, p0}, Lorg/webrtc/EglRenderer$10;-><init>(Lorg/webrtc/EglRenderer;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 529
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createEglSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lorg/webrtc/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lorg/webrtc/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    .prologue
    .line 360
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {p0, v0}, Lorg/webrtc/EglRenderer;->setFpsReduction(F)V

    .line 361
    return-void
.end method

.method public init(Lorg/webrtc/EglBase$Context;[ILorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 10
    .param p1, "sharedContext"    # Lorg/webrtc/EglBase$Context;
    .param p2, "configAttributes"    # [I
    .param p3, "drawer"    # Lorg/webrtc/RendererCommon$GlDrawer;

    .prologue
    .line 174
    iget-object v4, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 175
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 176
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Already initialized"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 178
    :cond_0
    :try_start_1
    const-string/jumbo v3, "Initializing EglRenderer"

    invoke-direct {p0, v3}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 179
    iput-object p3, p0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    .line 181
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "EglRenderer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, "renderThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 183
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 187
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v5, Lorg/webrtc/EglRenderer$3;

    invoke-direct {v5, p0, p1, p2}, Lorg/webrtc/EglRenderer$3;-><init>(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglBase$Context;[I)V

    invoke-static {v3, v5}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 202
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 204
    .local v0, "currentTimeNs":J
    invoke-direct {p0, v0, v1}, Lorg/webrtc/EglRenderer;->resetStatistics(J)V

    .line 205
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lorg/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x4

    .line 206
    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 205
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/webrtc/EglRenderer;->setFpsReduction(F)V

    .line 365
    return-void
.end method

.method public printStackTrace()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 301
    iget-object v4, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 302
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 304
    .local v1, "renderThread":Ljava/lang/Thread;
    :goto_0
    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 306
    .local v0, "renderStackTrace":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 307
    const-string/jumbo v3, "EglRenderer stack trace:"

    invoke-direct {p0, v3}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 308
    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v2, v0, v3

    .line 309
    .local v2, "traceElem":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    .end local v0    # "renderStackTrace":[Ljava/lang/StackTraceElement;
    .end local v1    # "renderThread":Ljava/lang/Thread;
    .end local v2    # "traceElem":Ljava/lang/StackTraceElement;
    :cond_0
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 303
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    goto :goto_0

    .line 313
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
    .line 230
    const-string/jumbo v2, "Releasing."

    invoke-direct {p0, v2}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 232
    .local v0, "eglCleanupBarrier":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 233
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 234
    const-string/jumbo v2, "Already released"

    invoke-direct {p0, v2}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 235
    monitor-exit v3

    .line 284
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lorg/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v4, Lorg/webrtc/EglRenderer$4;

    invoke-direct {v4, p0, v0}, Lorg/webrtc/EglRenderer$4;-><init>(Lorg/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 263
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 265
    .local v1, "renderLooper":Landroid/os/Looper;
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v4, Lorg/webrtc/EglRenderer$5;

    invoke-direct {v4, p0, v1}, Lorg/webrtc/EglRenderer$5;-><init>(Lorg/webrtc/EglRenderer;Landroid/os/Looper;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 274
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 277
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v3

    .line 278
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-static {v2}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 280
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    .line 282
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    const-string/jumbo v2, "Releasing done."

    invoke-direct {p0, v2}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    .end local v1    # "renderLooper":Landroid/os/Looper;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 282
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
    .line 475
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/webrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 476
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 479
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/EglRenderer$9;

    invoke-direct {v2, p0, p1}, Lorg/webrtc/EglRenderer$9;-><init>(Lorg/webrtc/EglRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 489
    monitor-exit v1

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeFrameListener(Lorg/webrtc/EglRenderer$FrameListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 410
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 411
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lorg/webrtc/EglRenderer$8;

    invoke-direct {v1, p0, v0, p1}, Lorg/webrtc/EglRenderer$8;-><init>(Lorg/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lorg/webrtc/EglRenderer$FrameListener;)V

    invoke-direct {p0, v1}, Lorg/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 423
    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 424
    return-void
.end method

.method public renderFrame(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .locals 10
    .param p1, "frame"    # Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 429
    iget-object v4, p0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 430
    :try_start_0
    iget v3, p0, Lorg/webrtc/EglRenderer;->framesReceived:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/webrtc/EglRenderer;->framesReceived:I

    .line 431
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object v4, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 434
    :try_start_1
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v3, :cond_1

    .line 435
    const-string/jumbo v3, "Dropping frame - Not initialized or already released."

    invoke-direct {p0, v3}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 436
    invoke-static {p1}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 437
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 431
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 440
    :cond_1
    :try_start_3
    iget-object v5, p0, Lorg/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 441
    :try_start_4
    iget-wide v6, p0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    .line 442
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 443
    .local v0, "currentTimeNs":J
    iget-wide v6, p0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    cmp-long v3, v0, v6

    if-gez v3, :cond_2

    .line 444
    const-string/jumbo v3, "Dropping frame - fps reduction is active."

    invoke-direct {p0, v3}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 445
    invoke-static {p1}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 446
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    monitor-exit v4

    goto :goto_0

    .line 461
    .end local v0    # "currentTimeNs":J
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 448
    .restart local v0    # "currentTimeNs":J
    :cond_2
    :try_start_6
    iget-wide v6, p0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    iget-wide v8, p0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    .line 450
    iget-wide v6, p0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    .line 452
    .end local v0    # "currentTimeNs":J
    :cond_3
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 453
    :try_start_7
    iget-object v5, p0, Lorg/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 454
    :try_start_8
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    .line 455
    .local v2, "dropOldFrame":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 456
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-static {v3}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 458
    :cond_4
    iput-object p1, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoRenderer$I420Frame;

    .line 459
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/webrtc/EglRenderer;->renderFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 461
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 462
    if-eqz v2, :cond_0

    .line 463
    iget-object v4, p0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 464
    :try_start_a
    iget v3, p0, Lorg/webrtc/EglRenderer;->framesDropped:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/webrtc/EglRenderer;->framesDropped:I

    .line 465
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v3

    .line 452
    .end local v2    # "dropOldFrame":Z
    :catchall_3
    move-exception v3

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 454
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 460
    :catchall_4
    move-exception v3

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method public setFpsReduction(F)V
    .locals 6
    .param p1, "fps"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFpsReduction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 345
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 346
    :try_start_0
    iget-wide v0, p0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    .line 347
    .local v0, "previousRenderPeriodNs":J
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 348
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    .line 352
    :goto_0
    iget-wide v4, p0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 354
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    .line 356
    :cond_0
    monitor-exit v3

    return-void

    .line 350
    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    long-to-float v2, v4

    div-float/2addr v2, p1

    float-to-long v4, v2

    iput-wide v4, p0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    goto :goto_0

    .line 356
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
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setLayoutAspectRatio: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_0
    iput p1, p0, Lorg/webrtc/EglRenderer;->layoutAspectRatio:F

    .line 334
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
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMirror: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_0
    iput-boolean p1, p0, Lorg/webrtc/EglRenderer;->mirror:Z

    .line 323
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
