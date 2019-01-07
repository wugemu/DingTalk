.class Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;
.super Ljava/lang/Object;
.source "Camera2Session.java"

# interfaces
.implements Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/Camera2Session$CaptureSessionCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;


# direct methods
.method constructor <init>(Lorg/webrtc/Camera2Session$CaptureSessionCallback;)V
    .locals 0
    .param p1, "this$1"    # Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

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
    .line 198
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/Camera2Session;->access$000(Lorg/webrtc/Camera2Session;)V

    .line 200
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/Camera2Session;->access$200(Lorg/webrtc/Camera2Session;)Lorg/webrtc/Camera2Session$SessionState;

    move-result-object v1

    sget-object v2, Lorg/webrtc/Camera2Session$SessionState;->RUNNING:Lorg/webrtc/Camera2Session$SessionState;

    if-eq v1, v2, :cond_0

    .line 201
    const-string/jumbo v1, "Camera2Session"

    const-string/jumbo v2, "Texture frame captured but camera is no longer running."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/Camera2Session;->access$800(Lorg/webrtc/Camera2Session;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    .line 233
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-virtual {v1}, Lorg/webrtc/Camera2Session;->needDropFrame()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/Camera2Session;->access$800(Lorg/webrtc/Camera2Session;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/Camera2Session;->access$1600(Lorg/webrtc/Camera2Session;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/webrtc/Camera2Session;->access$1602(Lorg/webrtc/Camera2Session;Z)Z

    .line 214
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 215
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v4, v4, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v4}, Lorg/webrtc/Camera2Session;->access$1700(Lorg/webrtc/Camera2Session;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 216
    .local v0, "startTimeMs":I
    invoke-static {}, Lorg/webrtc/Camera2Session;->access$1800()Lorg/webrtc/Histogram;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 219
    .end local v0    # "startTimeMs":I
    :cond_2
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/Camera2Session;->access$1900(Lorg/webrtc/Camera2Session;)I

    move-result v7

    .line 220
    .local v7, "rotation":I
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/Camera2Session;->access$2000(Lorg/webrtc/Camera2Session;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/Camera2Session;->access$2100(Lorg/webrtc/Camera2Session;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 224
    invoke-static {}, Lorg/webrtc/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v1

    invoke-static {p2, v1}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p2

    .line 229
    :cond_3
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/Camera2Session;->access$2200(Lorg/webrtc/Camera2Session;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {p2, v1}, Lorg/webrtc/RendererCommon;->rotateTextureMatrix([FF)[F

    move-result-object p2

    .line 231
    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/Camera2Session;->access$500(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v2, v2, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$900(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v3

    iget v3, v3, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v4, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v4, v4, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 232
    invoke-static {v4}, Lorg/webrtc/Camera2Session;->access$900(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v4

    iget v4, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    move v5, p1

    move-object v6, p2

    move-wide v8, p3

    .line 231
    invoke-interface/range {v1 .. v9}, Lorg/webrtc/CameraSession$Events;->onTextureFrameCaptured(Lorg/webrtc/CameraSession;III[FIJ)V

    goto/16 :goto_0
.end method
