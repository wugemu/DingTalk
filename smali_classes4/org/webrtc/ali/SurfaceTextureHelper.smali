.class public Lorg/webrtc/ali/SurfaceTextureHelper;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureHelper"


# instance fields
.field private final eglBase:Lorg/webrtc/ali/EglBase;

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isQuitting:Z

.field private volatile isTextureInUse:Z

.field private listener:Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

.field private final oesTextureId:I

.field private pendingListener:Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

.field final setListenerRunnable:Ljava/lang/Runnable;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private yuvConverter:Lorg/webrtc/ali/YuvConverter;


# direct methods
.method private constructor <init>(Lorg/webrtc/ali/EglBase$Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "sharedContext"    # Lorg/webrtc/ali/EglBase$Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 87
    iput-boolean v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isTextureInUse:Z

    .line 88
    iput-boolean v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isQuitting:Z

    .line 92
    new-instance v1, Lorg/webrtc/ali/SurfaceTextureHelper$2;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/SurfaceTextureHelper$2;-><init>(Lorg/webrtc/ali/SurfaceTextureHelper;)V

    iput-object v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 108
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 109
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    iput-object p2, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 113
    sget-object v1, Lorg/webrtc/ali/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, v1}, Lorg/webrtc/ali/EglBase;->create(Lorg/webrtc/ali/EglBase$Context;[I)Lorg/webrtc/ali/EglBase;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->eglBase:Lorg/webrtc/ali/EglBase;

    .line 116
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->eglBase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v1}, Lorg/webrtc/ali/EglBase;->createDummyPbufferSurface()V

    .line 117
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->eglBase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v1}, Lorg/webrtc/ali/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const v1, 0x8d65

    invoke-static {v1}, Lorg/webrtc/ali/GlUtil;->generateTexture(I)I

    move-result v1

    iput v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->oesTextureId:I

    .line 126
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->oesTextureId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 127
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lorg/webrtc/ali/SurfaceTextureHelper$3;

    invoke-direct {v2, p0}, Lorg/webrtc/ali/SurfaceTextureHelper$3;-><init>(Lorg/webrtc/ali/SurfaceTextureHelper;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 134
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->eglBase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v1}, Lorg/webrtc/ali/EglBase;->release()V

    .line 121
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 122
    throw v0
.end method

.method synthetic constructor <init>(Lorg/webrtc/ali/EglBase$Context;Landroid/os/Handler;Lorg/webrtc/ali/SurfaceTextureHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/ali/EglBase$Context;
    .param p2, "x1"    # Landroid/os/Handler;
    .param p3, "x2"    # Lorg/webrtc/ali/SurfaceTextureHelper$1;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/SurfaceTextureHelper;-><init>(Lorg/webrtc/ali/EglBase$Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/ali/SurfaceTextureHelper;)Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    return-object v0
.end method

.method static synthetic access$102(Lorg/webrtc/ali/SurfaceTextureHelper;Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p1, "x1"    # Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    return-object p1
.end method

.method static synthetic access$202(Lorg/webrtc/ali/SurfaceTextureHelper;Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p1, "x1"    # Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->listener:Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    return-object p1
.end method

.method static synthetic access$300(Lorg/webrtc/ali/SurfaceTextureHelper;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->hasPendingTexture:Z

    return v0
.end method

.method static synthetic access$302(Lorg/webrtc/ali/SurfaceTextureHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->hasPendingTexture:Z

    return p1
.end method

.method static synthetic access$400(Lorg/webrtc/ali/SurfaceTextureHelper;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/webrtc/ali/SurfaceTextureHelper;->updateTexImage()V

    return-void
.end method

.method static synthetic access$500(Lorg/webrtc/ali/SurfaceTextureHelper;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/webrtc/ali/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method static synthetic access$600(Lorg/webrtc/ali/SurfaceTextureHelper;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isTextureInUse:Z

    return v0
.end method

.method static synthetic access$602(Lorg/webrtc/ali/SurfaceTextureHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isTextureInUse:Z

    return p1
.end method

.method static synthetic access$700(Lorg/webrtc/ali/SurfaceTextureHelper;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isQuitting:Z

    return v0
.end method

.method static synthetic access$702(Lorg/webrtc/ali/SurfaceTextureHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isQuitting:Z

    return p1
.end method

.method static synthetic access$800(Lorg/webrtc/ali/SurfaceTextureHelper;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/webrtc/ali/SurfaceTextureHelper;->release()V

    return-void
.end method

.method static synthetic access$900(Lorg/webrtc/ali/SurfaceTextureHelper;)Lorg/webrtc/ali/YuvConverter;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/ali/YuvConverter;

    return-object v0
.end method

.method static synthetic access$902(Lorg/webrtc/ali/SurfaceTextureHelper;Lorg/webrtc/ali/YuvConverter;)Lorg/webrtc/ali/YuvConverter;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p1, "x1"    # Lorg/webrtc/ali/YuvConverter;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/ali/YuvConverter;

    return-object p1
.end method

.method public static create(Ljava/lang/String;Lorg/webrtc/ali/EglBase$Context;)Lorg/webrtc/ali/SurfaceTextureHelper;
    .locals 3
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "sharedContext"    # Lorg/webrtc/ali/EglBase$Context;

    .prologue
    .line 56
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lorg/webrtc/ali/SurfaceTextureHelper$1;

    invoke-direct {v2, p1, v0, p0}, Lorg/webrtc/ali/SurfaceTextureHelper$1;-><init>(Lorg/webrtc/ali/EglBase$Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lorg/webrtc/ali/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/ali/SurfaceTextureHelper;

    return-object v2
.end method

.method private release()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget-boolean v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isQuitting:Z

    if-nez v0, :cond_2

    .line 270
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected release."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_2
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/ali/YuvConverter;

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/ali/YuvConverter;

    invoke-virtual {v0}, Lorg/webrtc/ali/YuvConverter;->release()V

    .line 275
    :cond_3
    new-array v0, v3, [I

    iget v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->oesTextureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 276
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 277
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->eglBase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->release()V

    .line 278
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 279
    return-void
.end method

.method private tryDeliverTextureFrame()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 248
    iget-object v3, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 249
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Wrong thread."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 251
    :cond_0
    iget-boolean v3, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isQuitting:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->hasPendingTexture:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->listener:Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    if-nez v3, :cond_2

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 254
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isTextureInUse:Z

    .line 255
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 257
    invoke-direct {p0}, Lorg/webrtc/ali/SurfaceTextureHelper;->updateTexImage()V

    .line 259
    const/16 v3, 0x10

    new-array v2, v3, [F

    .line 260
    .local v2, "transformMatrix":[F
    iget-object v3, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 261
    iget-object v3, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 262
    .local v0, "timestampNs":J
    iget-object v3, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->listener:Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    iget v4, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->oesTextureId:I

    invoke-interface {v3, v4, v2, v0, v1}, Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;->onTextureFrameAvailable(I[FJ)V

    goto :goto_0
.end method

.method private updateTexImage()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 242
    sget-object v1, Lorg/webrtc/ali/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 244
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
.method public dispose()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 209
    const-string/jumbo v0, "SurfaceTextureHelper"

    const-string/jumbo v1, "dispose()"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/ali/SurfaceTextureHelper$6;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/SurfaceTextureHelper$6;-><init>(Lorg/webrtc/ali/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lorg/webrtc/ali/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public isTextureInUse()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->isTextureInUse:Z

    return v0
.end method

.method public returnTextureFrame()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 186
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/ali/SurfaceTextureHelper$5;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/SurfaceTextureHelper$5;-><init>(Lorg/webrtc/ali/SurfaceTextureHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method public startListening(Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->listener:Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SurfaceTextureHelper listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    iput-object p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 145
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method public stopListening()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 153
    const-string/jumbo v0, "SurfaceTextureHelper"

    const-string/jumbo v1, "stopListening()"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/ali/SurfaceTextureHelper$4;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/SurfaceTextureHelper$4;-><init>(Lorg/webrtc/ali/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lorg/webrtc/ali/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public textureToYUV(Ljava/nio/ByteBuffer;IIII[F)V
    .locals 9
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "stride"    # I
    .param p5, "textureId"    # I
    .param p6, "transformMatrix"    # [F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 223
    iget v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->oesTextureId:I

    if-eq p5, v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "textureToByteBuffer called with unexpected textureId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-object v8, p0, Lorg/webrtc/ali/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/webrtc/ali/SurfaceTextureHelper$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/webrtc/ali/SurfaceTextureHelper$7;-><init>(Lorg/webrtc/ali/SurfaceTextureHelper;Ljava/nio/ByteBuffer;IIII[F)V

    invoke-static {v8, v0}, Lorg/webrtc/ali/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method
