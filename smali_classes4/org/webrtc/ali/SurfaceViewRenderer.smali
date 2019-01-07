.class public Lorg/webrtc/ali/SurfaceViewRenderer;
.super Landroid/view/SurfaceView;
.source "SurfaceViewRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lorg/webrtc/ali/VideoRenderer$Callbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewRenderer"


# instance fields
.field private final eglRenderer:Lorg/webrtc/ali/EglRenderer;

.field private enableFixedSize:Z

.field private frameRotation:I

.field private isFirstFrameRendered:Z

.field private isRenderingPaused:Z

.field private final layoutLock:Ljava/lang/Object;

.field private rendererEvents:Lorg/webrtc/ali/RendererCommon$RendererEvents;

.field private final resourceName:Ljava/lang/String;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private final videoLayoutMeasure:Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;

    invoke-direct {v0}, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->isRenderingPaused:Z

    .line 60
    invoke-direct {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 61
    new-instance v0, Lorg/webrtc/ali/EglRenderer;

    iget-object v1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/webrtc/ali/EglRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    .line 62
    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;

    invoke-direct {v0}, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->isRenderingPaused:Z

    .line 70
    invoke-direct {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 71
    new-instance v0, Lorg/webrtc/ali/EglRenderer;

    iget-object v1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/webrtc/ali/EglRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    .line 72
    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/SurfaceViewRenderer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/SurfaceViewRenderer;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method private getResourceName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 292
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 340
    const-string/jumbo v0, "SurfaceViewRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method private updateFrameDimensionsAndReportEvents(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V
    .locals 5
    .param p1, "frame"    # Lorg/webrtc/ali/VideoRenderer$I420Frame;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 307
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->isRenderingPaused:Z

    if-eqz v0, :cond_0

    .line 309
    monitor-exit v1

    .line 336
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-boolean v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->isFirstFrameRendered:Z

    if-nez v0, :cond_1

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->isFirstFrameRendered:Z

    .line 313
    const-string/jumbo v0, "Reporting first rendered frame."

    invoke-direct {p0, v0}, Lorg/webrtc/ali/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/ali/RendererCommon$RendererEvents;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/ali/RendererCommon$RendererEvents;

    invoke-interface {v0}, Lorg/webrtc/ali/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    .line 318
    :cond_1
    iget v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameWidth:I

    invoke-virtual {p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameHeight:I

    invoke-virtual {p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->frameRotation:I

    iget v2, p1, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    if-eq v0, v2, :cond_4

    .line 320
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Reporting frame resolution changed to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lorg/webrtc/ali/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lorg/webrtc/ali/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " with rotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/ali/RendererCommon$RendererEvents;

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/ali/RendererCommon$RendererEvents;

    iget v2, p1, Lorg/webrtc/ali/VideoRenderer$I420Frame;->width:I

    iget v3, p1, Lorg/webrtc/ali/VideoRenderer$I420Frame;->height:I

    iget v4, p1, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    invoke-interface {v0, v2, v3, v4}, Lorg/webrtc/ali/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 325
    :cond_3
    invoke-virtual {p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v0

    iput v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 326
    invoke-virtual {p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v0

    iput v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 327
    iget v0, p1, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    iput v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->frameRotation:I

    .line 328
    new-instance v0, Lorg/webrtc/ali/SurfaceViewRenderer$2;

    invoke-direct {v0, p0}, Lorg/webrtc/ali/SurfaceViewRenderer$2;-><init>(Lorg/webrtc/ali/SurfaceViewRenderer;)V

    invoke-virtual {p0, v0}, Lorg/webrtc/ali/SurfaceViewRenderer;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSurfaceSize()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 229
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 230
    iget-object v7, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v7

    .line 231
    :try_start_0
    iget-boolean v6, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->enableFixedSize:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameWidth:I

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameHeight:I

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getWidth()I

    move-result v6

    if-eqz v6, :cond_3

    .line 232
    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getHeight()I

    move-result v6

    if-eqz v6, :cond_3

    .line 233
    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v6, v8

    .line 234
    .local v4, "layoutAspectRatio":F
    iget v6, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameWidth:I

    int-to-float v6, v6

    iget v8, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameHeight:I

    int-to-float v8, v8

    div-float v2, v6, v8

    .line 237
    .local v2, "frameAspectRatio":F
    cmpl-float v6, v2, v4

    if-lez v6, :cond_2

    .line 238
    iget v6, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v1, v6

    .line 239
    .local v1, "drawnFrameWidth":I
    iget v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 245
    .local v0, "drawnFrameHeight":I
    :goto_0
    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getWidth()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 246
    .local v5, "width":I
    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getHeight()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 247
    .local v3, "height":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateSurfaceSize. Layout size: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getWidth()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getHeight()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", frame size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameWidth:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", requested surface size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", old surface size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->surfaceWidth:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->surfaceHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/webrtc/ali/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 250
    iget v6, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->surfaceWidth:I

    if-ne v5, v6, :cond_0

    iget v6, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->surfaceHeight:I

    if-eq v3, v6, :cond_1

    .line 251
    :cond_0
    iput v5, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->surfaceWidth:I

    .line 252
    iput v3, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->surfaceHeight:I

    .line 253
    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 259
    .end local v0    # "drawnFrameHeight":I
    .end local v1    # "drawnFrameWidth":I
    .end local v2    # "frameAspectRatio":F
    .end local v3    # "height":I
    .end local v4    # "layoutAspectRatio":F
    .end local v5    # "width":I
    :cond_1
    :goto_1
    monitor-exit v7

    return-void

    .line 241
    .restart local v2    # "frameAspectRatio":F
    .restart local v4    # "layoutAspectRatio":F
    :cond_2
    iget v1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 242
    .restart local v1    # "drawnFrameWidth":I
    iget v6, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-int v0, v6

    .restart local v0    # "drawnFrameHeight":I
    goto/16 :goto_0

    .line 256
    .end local v0    # "drawnFrameHeight":I
    .end local v1    # "drawnFrameWidth":I
    .end local v2    # "frameAspectRatio":F
    .end local v4    # "layoutAspectRatio":F
    :cond_3
    const/4 v6, 0x0

    iput v6, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->surfaceHeight:I

    iput v6, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->surfaceWidth:I

    .line 257
    invoke-virtual {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto :goto_1

    .line 259
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method


# virtual methods
.method public addFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;F)V
    .locals 1
    .param p1, "listener"    # Lorg/webrtc/ali/EglRenderer$FrameListener;
    .param p2, "scale"    # F

    .prologue
    .line 136
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/ali/EglRenderer;->addFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;F)V

    .line 137
    return-void
.end method

.method public addFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;FLorg/webrtc/ali/RendererCommon$GlDrawer;)V
    .locals 1
    .param p1, "listener"    # Lorg/webrtc/ali/EglRenderer$FrameListener;
    .param p2, "scale"    # F
    .param p3, "drawerParam"    # Lorg/webrtc/ali/RendererCommon$GlDrawer;

    .prologue
    .line 123
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/webrtc/ali/EglRenderer;->addFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;FLorg/webrtc/ali/RendererCommon$GlDrawer;)V

    .line 124
    return-void
.end method

.method public clearImage()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglRenderer;->clearImage()V

    .line 303
    return-void
.end method

.method public disableFpsReduction()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 188
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->isRenderingPaused:Z

    .line 190
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglRenderer;->disableFpsReduction()V

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init(Lorg/webrtc/ali/EglBase$Context;Lorg/webrtc/ali/RendererCommon$RendererEvents;)V
    .locals 2
    .param p1, "sharedContext"    # Lorg/webrtc/ali/EglBase$Context;
    .param p2, "rendererEvents"    # Lorg/webrtc/ali/RendererCommon$RendererEvents;

    .prologue
    .line 80
    sget-object v0, Lorg/webrtc/ali/EglBase;->CONFIG_PLAIN:[I

    new-instance v1, Lorg/webrtc/ali/GlRectDrawer;

    invoke-direct {v1}, Lorg/webrtc/ali/GlRectDrawer;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/webrtc/ali/SurfaceViewRenderer;->init(Lorg/webrtc/ali/EglBase$Context;Lorg/webrtc/ali/RendererCommon$RendererEvents;[ILorg/webrtc/ali/RendererCommon$GlDrawer;)V

    .line 81
    return-void
.end method

.method public init(Lorg/webrtc/ali/EglBase$Context;Lorg/webrtc/ali/RendererCommon$RendererEvents;[ILorg/webrtc/ali/RendererCommon$GlDrawer;)V
    .locals 2
    .param p1, "sharedContext"    # Lorg/webrtc/ali/EglBase$Context;
    .param p2, "rendererEvents"    # Lorg/webrtc/ali/RendererCommon$RendererEvents;
    .param p3, "configAttributes"    # [I
    .param p4, "drawer"    # Lorg/webrtc/ali/RendererCommon$GlDrawer;

    .prologue
    .line 92
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 93
    iput-object p2, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/ali/RendererCommon$RendererEvents;

    .line 94
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->frameRotation:I

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0, p1, p3, p4}, Lorg/webrtc/ali/EglRenderer;->init(Lorg/webrtc/ali/EglBase$Context;[ILorg/webrtc/ali/RendererCommon$GlDrawer;)V

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 223
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 224
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    sub-int v1, p4, p2

    int-to-float v1, v1

    sub-int v2, p5, p3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/EglRenderer;->setLayoutAspectRatio(F)V

    .line 225
    invoke-direct {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 226
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 211
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 213
    iget-object v2, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v2

    .line 214
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;

    iget v3, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameWidth:I

    iget v4, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 215
    invoke-virtual {v1, p1, p2, v3, v4}, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->measure(IIII)Landroid/graphics/Point;

    move-result-object v0

    .line 216
    .local v0, "size":Landroid/graphics/Point;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lorg/webrtc/ali/SurfaceViewRenderer;->setMeasuredDimension(II)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onMeasure(). New size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/ali/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 219
    return-void

    .line 216
    .end local v0    # "size":Landroid/graphics/Point;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pauseVideo()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 195
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->isRenderingPaused:Z

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglRenderer;->pauseVideo()V

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglRenderer;->release()V

    .line 110
    return-void
.end method

.method public removeFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/webrtc/ali/EglRenderer$FrameListener;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/ali/EglRenderer;->removeFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;)V

    .line 141
    return-void
.end method

.method public renderFrame(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V
    .locals 1
    .param p1, "frame"    # Lorg/webrtc/ali/VideoRenderer$I420Frame;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/webrtc/ali/SurfaceViewRenderer;->updateFrameDimensionsAndReportEvents(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    .line 205
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/ali/EglRenderer;->renderFrame(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    .line 206
    return-void
.end method

.method public setEnableHardwareScaler(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 148
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 149
    iput-boolean p1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->enableFixedSize:Z

    .line 150
    invoke-direct {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 151
    return-void
.end method

.method public setFpsReduction(F)V
    .locals 2
    .param p1, "fps"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 181
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->isRenderingPaused:Z

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/ali/EglRenderer;->setFpsReduction(F)V

    .line 185
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMirror(Z)V
    .locals 1
    .param p1, "mirror"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/ali/EglRenderer;->setMirror(Z)V

    .line 158
    return-void
.end method

.method public setScalingType(Lorg/webrtc/ali/RendererCommon$ScalingType;)V
    .locals 1
    .param p1, "scalingType"    # Lorg/webrtc/ali/RendererCommon$ScalingType;

    .prologue
    .line 164
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 165
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1}, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->setScalingType(Lorg/webrtc/ali/RendererCommon$ScalingType;)V

    .line 166
    return-void
.end method

.method public setScalingType(Lorg/webrtc/ali/RendererCommon$ScalingType;Lorg/webrtc/ali/RendererCommon$ScalingType;)V
    .locals 1
    .param p1, "scalingTypeMatchOrientation"    # Lorg/webrtc/ali/RendererCommon$ScalingType;
    .param p2, "scalingTypeMismatchOrientation"    # Lorg/webrtc/ali/RendererCommon$ScalingType;

    .prologue
    .line 170
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 171
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->setScalingType(Lorg/webrtc/ali/RendererCommon$ScalingType;Lorg/webrtc/ali/RendererCommon$ScalingType;)V

    .line 172
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 286
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "surfaceChanged: format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 265
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 266
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/EglRenderer;->createEglSurface(Landroid/view/Surface;)V

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->surfaceHeight:I

    iput v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->surfaceWidth:I

    .line 268
    invoke-direct {p0}, Lorg/webrtc/ali/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 269
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 273
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 274
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 275
    .local v0, "completionLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lorg/webrtc/ali/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/ali/EglRenderer;

    new-instance v2, Lorg/webrtc/ali/SurfaceViewRenderer$1;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/ali/SurfaceViewRenderer$1;-><init>(Lorg/webrtc/ali/SurfaceViewRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lorg/webrtc/ali/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 281
    invoke-static {v0}, Lorg/webrtc/ali/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 282
    return-void
.end method
