.class Lorg/webrtc/ali/Camera1Session$2;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/Camera1Session;->listenForTextureFrames()V
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
    .line 244
    iput-object p1, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextureFrameAvailable(I[FJ)V
    .locals 11
    .param p1, "oesTextureId"    # I
    .param p2, "transformMatrix"    # [F
    .param p3, "timestampNs"    # J

    .prologue
    const/4 v6, 0x1

    .line 248
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$200(Lorg/webrtc/ali/Camera1Session;)V

    .line 250
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$300(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/Camera1Session$SessionState;

    move-result-object v1

    sget-object v2, Lorg/webrtc/ali/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/ali/Camera1Session$SessionState;

    if-eq v1, v2, :cond_0

    .line 251
    const-string/jumbo v1, "Camera1Session"

    const-string/jumbo v2, "Texture frame captured but camera is no longer running."

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$400(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->returnTextureFrame()V

    .line 272
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$500(Lorg/webrtc/ali/Camera1Session;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 258
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v4}, Lorg/webrtc/ali/Camera1Session;->access$600(Lorg/webrtc/ali/Camera1Session;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 259
    .local v0, "startTimeMs":I
    invoke-static {}, Lorg/webrtc/ali/Camera1Session;->access$700()Lorg/webrtc/ali/Histogram;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/webrtc/ali/Histogram;->addSample(I)V

    .line 260
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1, v6}, Lorg/webrtc/ali/Camera1Session;->access$502(Lorg/webrtc/ali/Camera1Session;Z)Z

    .line 263
    .end local v0    # "startTimeMs":I
    :cond_1
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$800(Lorg/webrtc/ali/Camera1Session;)I

    move-result v7

    .line 264
    .local v7, "rotation":I
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$900(Lorg/webrtc/ali/Camera1Session;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v6, :cond_2

    .line 268
    invoke-static {}, Lorg/webrtc/ali/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v1

    .line 267
    invoke-static {p2, v1}, Lorg/webrtc/ali/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p2

    .line 270
    :cond_2
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$100(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/CameraSession$Events;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    iget-object v3, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/ali/Camera1Session;->access$1000(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v3

    iget v3, v3, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v4, p0, Lorg/webrtc/ali/Camera1Session$2;->this$0:Lorg/webrtc/ali/Camera1Session;

    .line 271
    invoke-static {v4}, Lorg/webrtc/ali/Camera1Session;->access$1000(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v4

    iget v4, v4, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->height:I

    move v5, p1

    move-object v6, p2

    move-wide v8, p3

    .line 270
    invoke-interface/range {v1 .. v9}, Lorg/webrtc/ali/CameraSession$Events;->onTextureFrameCaptured(Lorg/webrtc/ali/CameraSession;III[FIJ)V

    goto :goto_0
.end method
