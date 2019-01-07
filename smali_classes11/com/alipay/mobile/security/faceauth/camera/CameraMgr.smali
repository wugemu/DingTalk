.class public Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;
.super Ljava/lang/Object;
.source "CameraMgr.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/camera/AndroidCamera;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static d:Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:Landroid/hardware/Camera$Parameters;

.field private c:Z

.field private e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:I

.field private k:Landroid/hardware/Camera$Size;

.field private l:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->c:Z

    .line 35
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->g:I

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->h:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->f:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-class v1, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->d:Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->d:Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    .line 54
    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->d:Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->initContext(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->d:Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCameraNumber()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->j:I

    return v0
.end method

.method public getCameraViewRotation()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->g:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->k:Landroid/hardware/Camera$Size;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->k:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0
.end method

.method public getPreviewWidght()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->k:Landroid/hardware/Camera$Size;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->k:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_0
.end method

.method public initContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->f:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public openCamera(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
    .locals 4
    .param p1, "deviceSetting"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x3f6

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 120
    :cond_0
    const/4 v0, 0x1

    .line 122
    .local v0, "cameraID":I
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->j:I

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isCameraAuto()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    iget v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->j:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 1098
    :cond_1
    :goto_0
    const-string/jumbo v1, "openCamera"

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 1100
    :try_start_0
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    .line 1101
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1111
    :cond_2
    :goto_1
    return-void

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getCameraID()I

    move-result v0

    goto :goto_0

    .line 1104
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    if-eqz v1, :cond_2

    .line 1105
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    invoke-interface {v1, v3}, Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;->onError(I)V

    goto :goto_1

    .line 1108
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    if-eqz v1, :cond_2

    .line 1109
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    invoke-interface {v1, v3}, Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;->onError(I)V

    goto :goto_1
.end method

.method public setListener(Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    .line 282
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    const/16 v1, 0x3f6

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;->onError(I)V

    goto :goto_0
.end method

.method public startPreview(Landroid/view/SurfaceHolder;F)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "previewRate"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x3f6

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 139
    const-string/jumbo v2, "startPreview..."

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 140
    iget-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->c:Z

    if-eqz v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    .line 147
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    const/16 v4, 0x100

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 1223
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    .line 1224
    invoke-static {}, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->getInstance()Lcom/alipay/mobile/security/bio/utils/CamParaUtil;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    .line 1225
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x258

    .line 1224
    invoke-virtual {v2, v4, p2, v5}, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->getPropPictureSize(Ljava/util/List;FI)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1226
    if-eqz v2, :cond_2

    .line 1227
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1234
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_3

    .line 1235
    invoke-static {}, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->getInstance()Lcom/alipay/mobile/security/bio/utils/CamParaUtil;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    .line 1236
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x258

    .line 1235
    invoke-virtual {v2, v4, p2, v5}, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->getPropPreviewSize(Ljava/util/List;FI)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1238
    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->k:Landroid/hardware/Camera$Size;

    .line 1240
    if-eqz v2, :cond_3

    .line 1241
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    .line 1242
    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    .line 1244
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    if-eqz v2, :cond_5

    .line 163
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 2202
    if-nez v2, :cond_4

    .line 2203
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "deviceSetting can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    invoke-interface {v2, v7}, Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;->onError(I)V

    goto :goto_0

    .line 2208
    :cond_4
    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isDisplayAuto()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2210
    iget v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->i:I

    .line 2292
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 2293
    invoke-static {v2, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 2295
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->f:Landroid/content/Context;

    const-string/jumbo v5, "window"

    .line 2296
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 2298
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 2301
    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 2316
    :goto_1
    iget v3, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v6, :cond_7

    .line 2317
    iget v3, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    .line 2318
    rsub-int v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    .line 163
    :goto_2
    iput v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->g:I

    .line 165
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->g:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_6

    .line 174
    const-string/jumbo v2, "continuous-video"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 175
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "continuous-video"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 183
    :cond_6
    :goto_4
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 184
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 185
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 195
    iput-boolean v6, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->c:Z

    goto/16 :goto_0

    .end local v1    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    move v2, v3

    .line 2304
    goto :goto_1

    .line 2306
    :pswitch_1
    const/16 v2, 0x5a

    .line 2307
    goto :goto_1

    .line 2309
    :pswitch_2
    const/16 v2, 0xb4

    .line 2310
    goto :goto_1

    .line 2312
    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_1

    .line 2320
    :cond_7
    iget v3, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v2, v3, v2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    goto :goto_2

    .line 2213
    :cond_8
    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getDisplayAngle()I

    move-result v2

    goto :goto_2

    .line 166
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    const-string/jumbo v2, "auto"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    goto :goto_4

    .line 186
    :catch_2
    move-exception v0

    .line 187
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    invoke-interface {v2, v7}, Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;->onError(I)V

    goto/16 :goto_0

    .line 2301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public stopCamera()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 255
    iput-object v4, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->e:Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->c:Z

    if-eqz v1, :cond_0

    .line 258
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 262
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 264
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->a:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->c:Z

    .line 274
    iput-object v4, p0, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->f:Landroid/content/Context;

    .line 276
    :cond_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
