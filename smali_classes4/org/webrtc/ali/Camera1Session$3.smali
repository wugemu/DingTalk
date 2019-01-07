.class Lorg/webrtc/ali/Camera1Session$3;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/Camera1Session;->listenForBytebufferFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/Camera1Session;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/Camera1Session;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 277
    iput-object p1, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "callbackCamera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 280
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/ali/Camera1Session;->access$200(Lorg/webrtc/ali/Camera1Session;)V

    .line 282
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/ali/Camera1Session;->access$1100(Lorg/webrtc/ali/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 283
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "Callback from a different camera. This should never happen."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/ali/Camera1Session;->access$300(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/Camera1Session$SessionState;

    move-result-object v0

    sget-object v1, Lorg/webrtc/ali/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/ali/Camera1Session$SessionState;

    if-eq v0, v1, :cond_1

    .line 288
    const-string/jumbo v0, "Camera1Session"

    const-string/jumbo v1, "Bytebuffer frame captured but camera is no longer running."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 294
    .local v6, "captureTimeNs":J
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/ali/Camera1Session;->access$500(Lorg/webrtc/ali/Camera1Session;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 296
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$600(Lorg/webrtc/ali/Camera1Session;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v8, v0

    .line 297
    .local v8, "startTimeMs":I
    invoke-static {}, Lorg/webrtc/ali/Camera1Session;->access$700()Lorg/webrtc/ali/Histogram;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/webrtc/ali/Histogram;->addSample(I)V

    .line 298
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Camera1Session;->access$502(Lorg/webrtc/ali/Camera1Session;Z)Z

    .line 301
    .end local v8    # "startTimeMs":I
    :cond_2
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/ali/Camera1Session;->access$100(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/CameraSession$Events;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    iget-object v2, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v2}, Lorg/webrtc/ali/Camera1Session;->access$1000(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v2

    iget v3, v2, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v2, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    .line 302
    invoke-static {v2}, Lorg/webrtc/ali/Camera1Session;->access$1000(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v2

    iget v4, v2, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->height:I

    iget-object v2, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v2}, Lorg/webrtc/ali/Camera1Session;->access$800(Lorg/webrtc/ali/Camera1Session;)I

    move-result v5

    move-object v2, p1

    .line 301
    invoke-interface/range {v0 .. v7}, Lorg/webrtc/ali/CameraSession$Events;->onByteBufferFrameCaptured(Lorg/webrtc/ali/CameraSession;[BIIIJ)V

    .line 303
    iget-object v0, p0, Lorg/webrtc/ali/Camera1Session$3;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/ali/Camera1Session;->access$1100(Lorg/webrtc/ali/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0
.end method
