.class public Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;
.super Ljava/lang/Object;
.source "CameraVideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/CameraVideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraStatistics"
.end annotation


# static fields
.field private static final CAMERA_FREEZE_REPORT_TIMOUT_MS:I = 0xfa0

.field private static final CAMERA_OBSERVER_PERIOD_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "CameraStatistics"


# instance fields
.field private final cameraObserver:Ljava/lang/Runnable;

.field private final eventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

.field private frameCount:I

.field private freezePeriodCount:I

.field private final surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;


# direct methods
.method public constructor <init>(Lorg/webrtc/ali/SurfaceTextureHelper;Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;)V
    .locals 4
    .param p1, "surfaceTextureHelper"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p2, "eventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;

    invoke-direct {v0, p0}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;-><init>(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)V

    iput-object v0, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->cameraObserver:Ljava/lang/Runnable;

    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SurfaceTextureHelper is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iput-object p1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    .line 137
    iput-object p2, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->eventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    .line 138
    iput v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->frameCount:I

    .line 139
    iput v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->freezePeriodCount:I

    .line 140
    invoke-virtual {p1}, Lorg/webrtc/ali/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->cameraObserver:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .prologue
    .line 95
    iget v0, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->frameCount:I

    return v0
.end method

.method static synthetic access$002(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;I)I
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->frameCount:I

    return p1
.end method

.method static synthetic access$100(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .prologue
    .line 95
    iget v0, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->freezePeriodCount:I

    return v0
.end method

.method static synthetic access$102(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;I)I
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->freezePeriodCount:I

    return p1
.end method

.method static synthetic access$104(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .prologue
    .line 95
    iget v0, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->freezePeriodCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->freezePeriodCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->eventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/ali/SurfaceTextureHelper;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    return-object v0
.end method

.method private checkThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-virtual {v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public addFrame()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->checkThread()V

    .line 151
    iget v0, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->frameCount:I

    .line 152
    return-void
.end method

.method public release()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->cameraObserver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method
