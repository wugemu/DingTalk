.class final Lcom/taobao/artc/internal/ArtcEngineImpl$34;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->initialize2(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdjustBrightnessSupport(I)V
    .locals 3
    .param p1, "brightness"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 501
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$900(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 502
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAdjustBrightnessSupport ....., brightness: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onAdjustBrightnessSupport: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public final onCameraClosed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 455
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "onCameraClosed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    const-string/jumbo v0, "onCameraClosed"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public final onCameraDisconnected()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 432
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "onCameraDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    const-string/jumbo v0, "onCameraDisconnected"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public final onCameraError(Ljava/lang/String;I)V
    .locals 7
    .param p1, "errorDescription"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 416
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v2, "onCameraError"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "errorDescription"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCameraError, errorDescription: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", errorCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_OPEN_CAMERA:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 419
    .local v0, "errorEvent":Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$700(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)V

    .line 421
    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    if-ne p2, v6, :cond_1

    .line 423
    :cond_0
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_CAMERA_UNAVAILABLE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 426
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Ljka;->onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V

    .line 428
    :cond_2
    return-void
.end method

.method public final onCameraFreezed(Ljava/lang/String;)V
    .locals 5
    .param p1, "errorDescription"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 438
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "onCameraError"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "errorDescription"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    const-string/jumbo v0, "onCameraFreezed"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public final onCameraOpening(Ljava/lang/String;)V
    .locals 5
    .param p1, "cameraName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 444
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "onCameraOpening"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "cameraName"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    return-void
.end method

.method public final onCameraPreview(III[FIJ)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oesTextureId"    # I
    .param p4, "transformMatrix"    # [F
    .param p5, "rotation"    # I
    .param p6, "timestamp"    # J

    .prologue
    .line 481
    sget-boolean v1, Lcom/taobao/artc/internal/ArtcGlobal;->bypassVideoPreprocess:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$800(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 483
    new-instance v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;

    invoke-direct {v0}, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;-><init>()V

    .line 484
    .local v0, "vf":Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;
    sget-object v1, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_OES:Lcom/taobao/artc/api/AConstants$ColorSpace;

    iput-object v1, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->colorspace:Lcom/taobao/artc/api/AConstants$ColorSpace;

    .line 485
    iput p1, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->width:I

    .line 486
    iput p2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->height:I

    .line 487
    iput p5, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->rotationDegree:I

    .line 488
    iput-wide p6, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->timestamp_ns:J

    .line 489
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->buffer:Ljava/nio/ByteBuffer;

    .line 490
    iput-object p4, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->transformMatrix:[F

    .line 491
    iput p3, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->textureId:I

    .line 492
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-virtual {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->isFrontFacingCamera()Z

    move-result v1

    iput-boolean v1, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->front:Z

    .line 493
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$800(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->onOutputVideoFrame(Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;)I

    move-result v1

    .line 495
    .end local v0    # "vf":Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final onCameraPreview([BIIIJ)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotation"    # I
    .param p5, "timestamp_ns"    # J

    .prologue
    const/4 v1, -0x1

    .line 461
    sget-boolean v2, Lcom/taobao/artc/internal/ArtcGlobal;->bypassVideoPreprocess:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$800(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 463
    new-instance v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;

    invoke-direct {v0}, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;-><init>()V

    .line 464
    .local v0, "vf":Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;
    sget-object v2, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_NV21:Lcom/taobao/artc/api/AConstants$ColorSpace;

    iput-object v2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->colorspace:Lcom/taobao/artc/api/AConstants$ColorSpace;

    .line 465
    iput p2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->width:I

    .line 466
    iput p3, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->height:I

    .line 467
    iput p4, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->rotationDegree:I

    .line 468
    iput-wide p5, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->timestamp_ns:J

    .line 469
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->buffer:Ljava/nio/ByteBuffer;

    .line 470
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->transformMatrix:[F

    .line 471
    iput v1, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->textureId:I

    .line 472
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-virtual {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->isFrontFacingCamera()Z

    move-result v1

    iput-boolean v1, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->front:Z

    .line 473
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$800(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->onOutputVideoFrame(Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;)I

    move-result v1

    .line 475
    .end local v0    # "vf":Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;
    :cond_0
    return v1
.end method

.method public final onFirstFrameAvailable()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "onFirstFrameAvailable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    const-string/jumbo v0, "onFirstFrameAvailable"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 451
    return-void
.end method
