.class Lorg/webrtc/Camera1Session$3;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/Camera1Session;->listenForBytebufferFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/Camera1Session;


# direct methods
.method constructor <init>(Lorg/webrtc/Camera1Session;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 479
    iput-object p1, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "callbackCamera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 482
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$300(Lorg/webrtc/Camera1Session;)V

    .line 484
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$1200(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 485
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "Callback from a different camera. This should never happen."

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$000(Lorg/webrtc/Camera1Session;)Lorg/webrtc/Camera1Session$SessionState;

    move-result-object v0

    sget-object v1, Lorg/webrtc/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/Camera1Session$SessionState;

    if-eq v0, v1, :cond_1

    .line 490
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "Bytebuffer frame captured but camera is no longer running."

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-virtual {v0}, Lorg/webrtc/Camera1Session;->needDropFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$1200(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 500
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 502
    .local v6, "captureTimeNs":J
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$500(Lorg/webrtc/Camera1Session;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 503
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 504
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v1, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/Camera1Session;->access$600(Lorg/webrtc/Camera1Session;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v8, v0

    .line 505
    .local v8, "startTimeMs":I
    invoke-static {}, Lorg/webrtc/Camera1Session;->access$700()Lorg/webrtc/Histogram;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 506
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/webrtc/Camera1Session;->access$502(Lorg/webrtc/Camera1Session;Z)Z

    .line 507
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "1st YUV coming from java camera"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    .end local v8    # "startTimeMs":I
    :cond_3
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$200(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    iget-object v2, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v2}, Lorg/webrtc/Camera1Session;->access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v2

    iget v3, v2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v2, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    .line 511
    invoke-static {v2}, Lorg/webrtc/Camera1Session;->access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v2

    iget v4, v2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    iget-object v2, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v2}, Lorg/webrtc/Camera1Session;->access$800(Lorg/webrtc/Camera1Session;)I

    move-result v5

    move-object v2, p1

    .line 510
    invoke-interface/range {v0 .. v7}, Lorg/webrtc/CameraSession$Events;->onByteBufferFrameCaptured(Lorg/webrtc/CameraSession;[BIIIJ)V

    .line 512
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$1200(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0
.end method
