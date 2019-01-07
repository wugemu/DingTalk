.class Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;
.super Ljava/lang/Object;
.source "Camera2Session.java"

# interfaces
.implements Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;)V
    .locals 0
    .param p1, "this$1"    # Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

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
    .line 201
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$000(Lorg/webrtc/ali/Camera2Session;)V

    .line 203
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$200(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/Camera2Session$SessionState;

    move-result-object v1

    sget-object v2, Lorg/webrtc/ali/Camera2Session$SessionState;->RUNNING:Lorg/webrtc/ali/Camera2Session$SessionState;

    if-eq v1, v2, :cond_0

    .line 204
    const-string/jumbo v1, "Camera2Session"

    const-string/jumbo v2, "Texture frame captured but camera is no longer running."

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$800(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->returnTextureFrame()V

    .line 230
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$1600(Lorg/webrtc/ali/Camera2Session;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/webrtc/ali/Camera2Session;->access$1602(Lorg/webrtc/ali/Camera2Session;Z)Z

    .line 211
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 212
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v4, v4, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v4}, Lorg/webrtc/ali/Camera2Session;->access$1700(Lorg/webrtc/ali/Camera2Session;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 213
    .local v0, "startTimeMs":I
    invoke-static {}, Lorg/webrtc/ali/Camera2Session;->access$1800()Lorg/webrtc/ali/Histogram;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/webrtc/ali/Histogram;->addSample(I)V

    .line 216
    .end local v0    # "startTimeMs":I
    :cond_1
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$1900(Lorg/webrtc/ali/Camera2Session;)I

    move-result v7

    .line 217
    .local v7, "rotation":I
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$2000(Lorg/webrtc/ali/Camera2Session;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    invoke-static {}, Lorg/webrtc/ali/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v1

    .line 220
    invoke-static {p2, v1}, Lorg/webrtc/ali/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p2

    .line 225
    :cond_2
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    .line 226
    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$2100(Lorg/webrtc/ali/Camera2Session;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {p2, v1}, Lorg/webrtc/ali/RendererCommon;->rotateTextureMatrix([FF)[F

    move-result-object p2

    .line 228
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v1, v1, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$500(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraSession$Events;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v2, v2, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/ali/Camera2Session;->access$900(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v3

    iget v3, v3, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v4, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v4, v4, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    .line 229
    invoke-static {v4}, Lorg/webrtc/ali/Camera2Session;->access$900(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v4

    iget v4, v4, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->height:I

    move v5, p1

    move-object v6, p2

    move-wide v8, p3

    .line 228
    invoke-interface/range {v1 .. v9}, Lorg/webrtc/ali/CameraSession$Events;->onTextureFrameCaptured(Lorg/webrtc/ali/CameraSession;III[FIJ)V

    goto :goto_0
.end method
