.class final Lali/mmpc/pwp/PwpClient$DrawTask;
.super Ljgc;
.source "PwpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lali/mmpc/pwp/PwpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DrawTask"
.end annotation


# instance fields
.field lastFrameTimeMs:J

.field private final mDrawTask:Ljava/lang/Runnable;

.field private mDrawer:Ljgd;

.field private mEncoderSurface:Ljfz$c;

.field private final mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mSourceSurface:Landroid/view/Surface;

.field private mSourceTexture:Landroid/graphics/SurfaceTexture;

.field private mTexId:I

.field private final mTexMatrix:[F

.field private requestDraw:Z

.field final synthetic this$0:Lali/mmpc/pwp/PwpClient;


# direct methods
.method public constructor <init>(Lali/mmpc/pwp/PwpClient;Ljfz$b;I)V
    .locals 2
    .param p2, "sharedContext"    # Ljfz$b;
    .param p3, "flags"    # I

    .prologue
    .line 735
    iput-object p1, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    .line 736
    invoke-direct {p0, p2, p3}, Ljgc;-><init>(Ljfz$b;I)V

    .line 732
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mTexMatrix:[F

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->requestDraw:Z

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->lastFrameTimeMs:J

    .line 797
    new-instance v0, Lali/mmpc/pwp/PwpClient$DrawTask$1;

    invoke-direct {v0, p0}, Lali/mmpc/pwp/PwpClient$DrawTask$1;-><init>(Lali/mmpc/pwp/PwpClient$DrawTask;)V

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 810
    new-instance v0, Lali/mmpc/pwp/PwpClient$DrawTask$2;

    invoke-direct {v0, p0}, Lali/mmpc/pwp/PwpClient$DrawTask$2;-><init>(Lali/mmpc/pwp/PwpClient$DrawTask;)V

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mDrawTask:Ljava/lang/Runnable;

    .line 737
    return-void
.end method

.method static synthetic access$2000(Lali/mmpc/pwp/PwpClient$DrawTask;)Z
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient$DrawTask;

    .prologue
    .line 725
    iget-boolean v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->requestDraw:Z

    return v0
.end method

.method static synthetic access$2002(Lali/mmpc/pwp/PwpClient$DrawTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient$DrawTask;
    .param p1, "x1"    # Z

    .prologue
    .line 725
    iput-boolean p1, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->requestDraw:Z

    return p1
.end method

.method static synthetic access$2200(Lali/mmpc/pwp/PwpClient$DrawTask;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient$DrawTask;

    .prologue
    .line 725
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$2300(Lali/mmpc/pwp/PwpClient$DrawTask;)[F
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient$DrawTask;

    .prologue
    .line 725
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mTexMatrix:[F

    return-object v0
.end method

.method static synthetic access$2400(Lali/mmpc/pwp/PwpClient$DrawTask;)Ljfz$c;
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient$DrawTask;

    .prologue
    .line 725
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mEncoderSurface:Ljfz$c;

    return-object v0
.end method

.method static synthetic access$2500(Lali/mmpc/pwp/PwpClient$DrawTask;)I
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient$DrawTask;

    .prologue
    .line 725
    iget v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mTexId:I

    return v0
.end method

.method static synthetic access$2600(Lali/mmpc/pwp/PwpClient$DrawTask;)Ljgd;
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient$DrawTask;

    .prologue
    .line 725
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mDrawer:Ljgd;

    return-object v0
.end method

.method static synthetic access$2700(Lali/mmpc/pwp/PwpClient$DrawTask;)V
    .locals 0
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient$DrawTask;

    .prologue
    .line 725
    invoke-virtual {p0}, Lali/mmpc/pwp/PwpClient$DrawTask;->makeCurrent()V

    return-void
.end method


# virtual methods
.method protected final onError(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method protected final onStart()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const v8, 0x812f

    const/16 v6, 0x2600

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 741
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$400(Lali/mmpc/pwp/PwpClient;)Lali/mmpc/pwp/LogCallback;

    move-result-object v0

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v2, "mmpc_pwp"

    const-string/jumbo v3, "DrawTask onStart"

    invoke-interface {v0, v1, v2, v3}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    new-instance v0, Ljgd;

    invoke-direct {v0, v5}, Ljgd;-><init>(Z)V

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mDrawer:Ljgd;

    .line 743
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mDrawer:Ljgd;

    .line 1192
    iget v0, v0, Ljgd;->a:I

    .line 2081
    new-array v1, v5, [I

    .line 2082
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2083
    invoke-static {v5, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2084
    aget v2, v1, v4

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2085
    const/16 v2, 0x2802

    invoke-static {v0, v2, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2086
    const/16 v2, 0x2803

    invoke-static {v0, v2, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2087
    const/16 v2, 0x2801

    invoke-static {v0, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2088
    const/16 v2, 0x2800

    invoke-static {v0, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2089
    aget v0, v1, v4

    .line 743
    iput v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mTexId:I

    .line 744
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mTexId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceTexture:Landroid/graphics/SurfaceTexture;

    .line 745
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v1}, Lali/mmpc/pwp/PwpClient;->access$100(Lali/mmpc/pwp/PwpClient;)I

    move-result v1

    iget-object v2, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v2}, Lali/mmpc/pwp/PwpClient;->access$200(Lali/mmpc/pwp/PwpClient;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 746
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceSurface:Landroid/view/Surface;

    .line 747
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1, v7}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 748
    invoke-virtual {p0}, Lali/mmpc/pwp/PwpClient$DrawTask;->getEgl()Ljfz;

    move-result-object v0

    iget-object v1, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v1}, Lali/mmpc/pwp/PwpClient;->access$1400(Lali/mmpc/pwp/PwpClient;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljfz;->a(Ljava/lang/Object;)Ljfz$c;

    move-result-object v0

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mEncoderSurface:Ljfz$c;

    .line 750
    iget-object v9, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {}, Lali/mmpc/pwp/PwpClient;->access$1700()Landroid/media/projection/MediaProjection;

    move-result-object v0

    const-string/jumbo v1, "Capturing Display"

    iget-object v2, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    .line 752
    invoke-static {v2}, Lali/mmpc/pwp/PwpClient;->access$100(Lali/mmpc/pwp/PwpClient;)I

    move-result v2

    iget-object v3, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v3}, Lali/mmpc/pwp/PwpClient;->access$200(Lali/mmpc/pwp/PwpClient;)I

    move-result v3

    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient;->access$1600(Lali/mmpc/pwp/PwpClient;)I

    move-result v4

    const/16 v5, 0x9

    iget-object v6, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceSurface:Landroid/view/Surface;

    move-object v8, v7

    .line 750
    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-static {v9, v0}, Lali/mmpc/pwp/PwpClient;->access$1502(Lali/mmpc/pwp/PwpClient;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 755
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mDrawTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lali/mmpc/pwp/PwpClient$DrawTask;->queueEvent(Ljava/lang/Runnable;)Z

    .line 756
    return-void
.end method

.method protected final onStop()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 760
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$400(Lali/mmpc/pwp/PwpClient;)Lali/mmpc/pwp/LogCallback;

    move-result-object v0

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v2, "mmpc_pwp"

    const-string/jumbo v3, "DrawTask onStop"

    invoke-interface {v0, v1, v2, v3}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mDrawer:Ljgd;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mDrawer:Ljgd;

    .line 2098
    iget v1, v0, Ljgd;->b:I

    if-ltz v1, :cond_0

    .line 2099
    iget v1, v0, Ljgd;->b:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 2101
    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Ljgd;->b:I

    .line 764
    iput-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mDrawer:Ljgd;

    .line 766
    :cond_1
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 768
    iput-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceSurface:Landroid/view/Surface;

    .line 771
    :cond_2
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 772
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 773
    iput-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mSourceTexture:Landroid/graphics/SurfaceTexture;

    .line 776
    :cond_3
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mEncoderSurface:Ljfz$c;

    if-eqz v0, :cond_4

    .line 777
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mEncoderSurface:Ljfz$c;

    invoke-interface {v0}, Ljfz$c;->c()V

    .line 778
    iput-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask;->mEncoderSurface:Ljfz$c;

    .line 781
    :cond_4
    invoke-virtual {p0}, Lali/mmpc/pwp/PwpClient$DrawTask;->makeCurrent()V

    .line 784
    return-void
.end method

.method protected final processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 793
    const/4 v0, 0x0

    return-object v0
.end method
