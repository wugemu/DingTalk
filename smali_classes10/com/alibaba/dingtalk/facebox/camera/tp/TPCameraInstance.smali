.class public Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;
.super Landroid/opengl/GLSurfaceView;
.source "TPCameraInstance.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:Lgsh;

.field public b:Landroid/os/Handler;

.field public c:Lgsg;

.field d:F

.field protected e:I

.field protected f:I

.field private g:Lgse;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 251
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->d:F

    .line 259
    iput v3, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->e:I

    .line 260
    iput v3, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->f:I

    .line 1047
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->setEGLContextClientVersion(I)V

    .line 1048
    new-instance v0, Lgsh;

    const-string/jumbo v1, "CameraHandlerThread"

    invoke-direct {v0, v1, p0}, Lgsh;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a:Lgsh;

    .line 1049
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a:Lgsh;

    .line 1054
    iget-object v0, v0, Lgsh;->a:Landroid/os/Handler;

    .line 1049
    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    .line 1050
    new-instance v1, Lgse;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lgse;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    .line 1051
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1052
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->setRenderMode(I)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)Lgse;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    return-object v0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    .line 2533
    iget-boolean v1, v0, Lgsd;->k:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lgsd;->l:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 84
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "flashMode"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    .line 3420
    iget-object v0, v0, Lgsd;->c:Landroid/hardware/Camera;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgsd;->a(Ljava/lang/String;)Z

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)Lgsg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->c:Lgsg;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    invoke-virtual {v0}, Lgsd;->g()V

    .line 122
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Size cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->e:I

    .line 229
    iput p2, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->f:I

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->requestLayout()V

    .line 232
    return-void
.end method

.method public getCameraRenderer()Lgse;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    return-object v0
.end method

.method public getCameraRotation()I
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    .line 1425
    iget v0, v0, Lgsd;->g:I

    .line 74
    return v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    .line 2401
    iget v0, v0, Lgsd;->f:I

    .line 79
    return v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    .line 3087
    invoke-virtual {v0}, Lgsd;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3088
    iget-object v0, v0, Lgsd;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 3090
    :cond_0
    iget-object v0, v0, Lgsd;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPreviewView()Landroid/view/View;
    .locals 0

    .prologue
    .line 89
    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x1

    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 144
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 146
    :pswitch_1
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4176
    iget-object v6, v5, Lgsd;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 4177
    :try_start_0
    iget-object v1, v5, Lgsd;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 4178
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    .line 5075
    iget-object v1, v1, Lgse;->a:Landroid/graphics/SurfaceTexture;

    .line 147
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4181
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    .line 4182
    if-gtz v7, :cond_2

    .line 4183
    const-string/jumbo v1, "facebox"

    const-string/jumbo v4, "CameraController"

    const-string/jumbo v7, "[Camera] setupCamera no camera"

    invoke-static {v1, v4, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4184
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lgsd;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4185
    :try_start_2
    monitor-exit v6

    goto :goto_1

    .line 4230
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4189
    :cond_2
    :try_start_3
    new-instance v8, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v8}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 4190
    if-ne v7, v13, :cond_5

    .line 4191
    const/4 v1, 0x0

    invoke-static {v1, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 4192
    iget v1, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v1, v5, Lgsd;->d:I

    .line 4194
    iget v1, v5, Lgsd;->d:I

    if-eqz v1, :cond_3

    .line 4195
    const/4 v1, 0x1

    iput-boolean v1, v5, Lgsd;->k:Z

    .line 4197
    :cond_3
    iget v1, v5, Lgsd;->d:I

    if-eq v1, v13, :cond_b

    .line 4198
    const/4 v1, 0x1

    iput-boolean v1, v5, Lgsd;->l:Z

    move v1, v3

    .line 4209
    :cond_4
    :goto_2
    if-ne v1, v4, :cond_6

    .line 4210
    const-string/jumbo v1, "facebox"

    const-string/jumbo v4, "CameraController"

    const-string/jumbo v7, "[Camera] setupCamera fail, no camera"

    invoke-static {v1, v4, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lgsd;->a(Landroid/content/Context;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4212
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_5
    move v1, v3

    .line 4201
    :goto_3
    if-ge v1, v7, :cond_a

    .line 4202
    :try_start_5
    invoke-static {v1, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 4203
    iget v9, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget v10, v5, Lgsd;->d:I

    if-eq v9, v10, :cond_4

    .line 4201
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4214
    :cond_6
    const-string/jumbo v4, "facebox"

    const-string/jumbo v9, "CameraController"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "[Camera] openCamera, count="

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 4215
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v11

    const/4 v7, 0x2

    const-string/jumbo v11, " facing="

    aput-object v11, v10, v7

    const/4 v7, 0x3

    iget v11, v5, Lgsd;->d:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x4

    const-string/jumbo v11, " id="

    aput-object v11, v10, v7

    const/4 v7, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 4214
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v9, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4216
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v5, Lgsd;->c:Landroid/hardware/Camera;

    .line 4218
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 4241
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 4243
    packed-switch v1, :pswitch_data_1

    move v1, v3

    .line 4259
    :goto_4
    iget v4, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v13, :cond_7

    .line 4260
    iget v4, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, v4

    rem-int/lit16 v1, v1, 0x168

    .line 4261
    rsub-int v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    .line 4263
    rsub-int v4, v1, 0x168

    iput v4, v5, Lgsd;->g:I

    .line 4269
    :goto_5
    iput v1, v5, Lgsd;->f:I

    .line 4219
    iget-object v1, v5, Lgsd;->c:Landroid/hardware/Camera;

    iget v4, v5, Lgsd;->f:I

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4230
    :goto_6
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :pswitch_2
    move v1, v3

    .line 4246
    goto :goto_4

    .line 4248
    :pswitch_3
    const/16 v1, 0x5a

    .line 4249
    goto :goto_4

    .line 4251
    :pswitch_4
    const/16 v1, 0xb4

    .line 4252
    goto :goto_4

    .line 4254
    :pswitch_5
    const/16 v1, 0x10e

    goto :goto_4

    .line 4265
    :cond_7
    :try_start_7
    iget v4, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v1, v4, v1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    .line 4267
    iput v1, v5, Lgsd;->g:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 4220
    :catch_0
    move-exception v1

    .line 4221
    :try_start_8
    const-string/jumbo v4, "facebox"

    const-string/jumbo v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[Camera] setupCamera err. "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v7, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4222
    iget v1, v5, Lgsd;->d:I

    if-nez v1, :cond_9

    .line 4223
    const/4 v1, 0x1

    iput-boolean v1, v5, Lgsd;->k:Z

    .line 4227
    :cond_8
    :goto_7
    invoke-virtual {v5}, Lgsd;->c()V

    .line 4228
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lgsd;->a(Landroid/content/Context;I)V

    goto :goto_6

    .line 4224
    :cond_9
    iget v1, v5, Lgsd;->d:I

    if-ne v1, v13, :cond_8

    .line 4225
    const/4 v1, 0x1

    iput-boolean v1, v5, Lgsd;->l:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 153
    :pswitch_6
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    .line 6075
    iget-object v1, v1, Lgse;->a:Landroid/graphics/SurfaceTexture;

    .line 153
    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    .line 7075
    iget-object v1, v1, Lgse;->a:Landroid/graphics/SurfaceTexture;

    .line 155
    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 156
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    .line 8075
    iget-object v4, v4, Lgse;->a:Landroid/graphics/SurfaceTexture;

    .line 156
    invoke-virtual {v1, v2, v4}, Lgsd;->a(Landroid/content/Context;Landroid/graphics/SurfaceTexture;)V

    .line 157
    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$2;-><init>(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->queueEvent(Ljava/lang/Runnable;)V

    .line 166
    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$3;-><init>(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)V

    invoke-static {v1}, Lgsi;->a(Ljava/lang/Runnable;)V

    .line 179
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 186
    :pswitch_7
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v1

    invoke-virtual {v1}, Lgsd;->d()Z

    .line 187
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->c:Lgsg;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->c:Lgsg;

    invoke-static {}, Lgsd;->a()Lgsd;

    invoke-interface {v1}, Lgsg;->b()V

    goto/16 :goto_0

    .line 192
    :pswitch_8
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v1

    invoke-virtual {v1}, Lgsd;->g()V

    .line 193
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    move v1, v4

    goto/16 :goto_2

    :cond_b
    move v1, v3

    goto/16 :goto_2

    .line 144
    .line 4243
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->requestRender()V

    .line 65
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    .line 238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 239
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 240
    .local v0, "height":I
    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->e:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->f:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->e:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->f:I

    div-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->e:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->f:I

    div-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 244
    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->e:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->f:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->setMeasuredDimension(II)V

    goto :goto_0

    .line 246
    :cond_2
    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->f:I

    mul-int/2addr v3, v1

    iget v4, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->e:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    :cond_0
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    invoke-virtual {v0}, Lgsd;->g()V

    .line 130
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->queueEvent(Ljava/lang/Runnable;)V

    .line 138
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 139
    return-void
.end method

.method public setCameraCallback(Lgsg;)V
    .locals 0
    .param p1, "cameraCallback"    # Lgsg;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->c:Lgsg;

    .line 70
    return-void
.end method

.method public setFaceBeautyEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    invoke-virtual {v0, p1}, Lgse;->a(Z)V

    .line 264
    return-void
.end method

.method public setFilter(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->g:Lgse;

    .line 1264
    iput p1, v0, Lgse;->b:I

    .line 60
    :cond_0
    return-void
.end method

.method public setFitRatio(F)V
    .locals 0
    .param p1, "fitRatio"    # F

    .prologue
    .line 254
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->d:F

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->requestLayout()V

    .line 256
    return-void
.end method
