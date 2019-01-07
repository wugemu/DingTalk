.class Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptureSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/Camera2Session;


# direct methods
.method private constructor <init>(Lorg/webrtc/ali/Camera2Session;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/ali/Camera2Session;Lorg/webrtc/ali/Camera2Session$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/ali/Camera2Session;
    .param p2, "x1"    # Lorg/webrtc/ali/Camera2Session$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;-><init>(Lorg/webrtc/ali/Camera2Session;)V

    return-void
.end method

.method private chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5
    .param p1, "captureRequestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 270
    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    .line 271
    invoke-static {v2}, Lorg/webrtc/ali/Camera2Session;->access$2200(Lorg/webrtc/ali/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 272
    .local v0, "availableFocusModes":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 273
    .local v1, "mode":I
    if-ne v1, v4, :cond_0

    .line 274
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 275
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 274
    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 276
    const-string/jumbo v2, "Camera2Session"

    const-string/jumbo v3, "Using continuous video auto-focus."

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v1    # "mode":I
    :goto_1
    return-void

    .line 272
    .restart local v1    # "mode":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "mode":I
    :cond_1
    const-string/jumbo v2, "Camera2Session"

    const-string/jumbo v3, "Auto-focus is not available."

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7
    .param p1, "captureRequestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 239
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/ali/Camera2Session;->access$2200(Lorg/webrtc/ali/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 241
    .local v0, "availableOpticalStabilization":[I
    if-eqz v0, :cond_1

    .line 242
    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget v2, v0, v3

    .line 243
    .local v2, "mode":I
    if-ne v2, v6, :cond_0

    .line 244
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 245
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 244
    invoke-virtual {p1, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 246
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 246
    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 248
    const-string/jumbo v3, "Camera2Session"

    const-string/jumbo v4, "Using optical stabilization."

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v2    # "mode":I
    :goto_1
    return-void

    .line 242
    .restart local v2    # "mode":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    .end local v2    # "mode":I
    :cond_1
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/ali/Camera2Session;->access$2200(Lorg/webrtc/ali/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 256
    .local v1, "availableVideoStabilization":[I
    array-length v5, v1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_3

    aget v2, v1, v3

    .line 257
    .restart local v2    # "mode":I
    if-ne v2, v6, :cond_2

    .line 258
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 259
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 258
    invoke-virtual {p1, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 260
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 261
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 260
    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 262
    const-string/jumbo v3, "Camera2Session"

    const-string/jumbo v4, "Using video stabilization."

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 256
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 266
    .end local v2    # "mode":I
    :cond_3
    const-string/jumbo v3, "Camera2Session"

    const-string/jumbo v4, "Stabilization not available."

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 154
    iget-object v0, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/ali/Camera2Session;->access$000(Lorg/webrtc/ali/Camera2Session;)V

    .line 155
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 156
    iget-object v0, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    const-string/jumbo v1, "Failed to configure capture session."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Camera2Session;->access$600(Lorg/webrtc/ali/Camera2Session;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 161
    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v2}, Lorg/webrtc/ali/Camera2Session;->access$000(Lorg/webrtc/ali/Camera2Session;)V

    .line 162
    const-string/jumbo v2, "Camera2Session"

    const-string/jumbo v3, "Camera capture session configured."

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v2, p1}, Lorg/webrtc/ali/Camera2Session;->access$102(Lorg/webrtc/ali/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 172
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    .line 173
    invoke-static {v2}, Lorg/webrtc/ali/Camera2Session;->access$700(Lorg/webrtc/ali/Camera2Session;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 175
    .local v0, "captureRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Landroid/util/Range;

    iget-object v4, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    .line 176
    invoke-static {v4}, Lorg/webrtc/ali/Camera2Session;->access$900(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v4

    iget-object v4, v4, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v4, v4, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget-object v5, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v5}, Lorg/webrtc/ali/Camera2Session;->access$1400(Lorg/webrtc/ali/Camera2Session;)I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    .line 177
    invoke-static {v5}, Lorg/webrtc/ali/Camera2Session;->access$900(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v5

    iget-object v5, v5, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v5, v5, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    iget-object v6, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v6}, Lorg/webrtc/ali/Camera2Session;->access$1400(Lorg/webrtc/ali/Camera2Session;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 175
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 178
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 178
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 180
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 181
    invoke-direct {p0, v0}, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 182
    invoke-direct {p0, v0}, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 184
    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v2}, Lorg/webrtc/ali/Camera2Session;->access$1000(Lorg/webrtc/ali/Camera2Session;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 185
    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v2}, Lorg/webrtc/ali/Camera2Session;->access$1100(Lorg/webrtc/ali/Camera2Session;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 186
    const-string/jumbo v2, "Camera2Session"

    const-string/jumbo v3, "Add MediaRecorder surface to CaptureRequest.Builder"

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v2}, Lorg/webrtc/ali/Camera2Session;->access$1100(Lorg/webrtc/ali/Camera2Session;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-instance v3, Lorg/webrtc/ali/Camera2Session$CameraCaptureCallback;

    iget-object v4, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/webrtc/ali/Camera2Session$CameraCaptureCallback;-><init>(Lorg/webrtc/ali/Camera2Session;Lorg/webrtc/ali/Camera2Session$1;)V

    iget-object v4, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v4}, Lorg/webrtc/ali/Camera2Session;->access$1300(Lorg/webrtc/ali/Camera2Session;)Landroid/os/Handler;

    move-result-object v4

    .line 189
    invoke-virtual {p1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v2}, Lorg/webrtc/ali/Camera2Session;->access$800(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v2

    new-instance v3, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;

    invoke-direct {v3, p0}, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback$1;-><init>(Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;)V

    invoke-virtual {v2, v3}, Lorg/webrtc/ali/SurfaceTextureHelper;->startListening(Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 232
    const-string/jumbo v2, "Camera2Session"

    const-string/jumbo v3, "Camera device successfully started."

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v2}, Lorg/webrtc/ali/Camera2Session;->access$400(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraSession$CreateSessionCallback;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-interface {v2, v3}, Lorg/webrtc/ali/CameraSession$CreateSessionCallback;->onDone(Lorg/webrtc/ali/CameraSession;)V

    .line 234
    .end local v0    # "captureRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to start capture request. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Camera2Session;->access$600(Lorg/webrtc/ali/Camera2Session;Ljava/lang/String;)V

    goto :goto_0
.end method
