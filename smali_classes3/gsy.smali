.class public final Lgsy;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field private static f:Lgsy;


# instance fields
.field public a:Landroid/hardware/Camera;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lgsy;

    invoke-direct {v0}, Lgsy;-><init>()V

    sput-object v0, Lgsy;->f:Lgsy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x500

    const/16 v1, 0x2d0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v2, p0, Lgsy;->b:I

    .line 45
    iput v1, p0, Lgsy;->c:I

    .line 47
    iput v2, p0, Lgsy;->g:I

    .line 48
    iput v1, p0, Lgsy;->h:I

    .line 53
    iput v0, p0, Lgsy;->i:I

    .line 54
    iput v0, p0, Lgsy;->j:I

    .line 57
    return-void
.end method

.method public static a(Landroid/hardware/Camera;)I
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "maxNumDetectedFaces":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 471
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    .line 473
    :cond_0
    return v0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Size;
    .locals 6
    .param p0, "camPara"    # Landroid/hardware/Camera$Parameters;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 247
    .local v0, "allSupportedSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    :cond_0
    const/4 v3, 0x0

    .line 266
    :goto_0
    return-object v3

    .line 250
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, "widthLargerSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 252
    .local v1, "tmpSize":Landroid/hardware/Camera$Size;
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    if-le v4, v5, :cond_2

    .line 253
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    .end local v1    # "tmpSize":Landroid/hardware/Camera$Size;
    :cond_3
    new-instance v3, Lgsy$1;

    invoke-direct {v3, p1, p2}, Lgsy$1;-><init>(II)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 266
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    goto :goto_0
.end method

.method public static a()Lgsy;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lgsy;->f:Lgsy;

    return-object v0
.end method

.method private g()Landroid/hardware/Camera$Parameters;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 410
    const-class v1, Lgsy;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v0, p0, Lgsy;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    monitor-exit v1

    .line 414
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Z)I
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "showBackCamera"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 65
    if-eqz p2, :cond_0

    const/4 v4, 0x0

    .line 66
    .local v4, "facing":I
    :goto_0
    const-class v9, Lgsy;

    monitor-enter v9

    .line 68
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 69
    .local v1, "cameraCount":I
    if-nez v1, :cond_1

    .line 70
    const-string/jumbo v8, "FaceBoxCamera"

    const-string/jumbo v10, "CameraUtils"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "openCamera fail, cameraCount 0"

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    const/4 v8, 0x1

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v1    # "cameraCount":I
    :goto_1
    return v8

    .line 65
    .end local v4    # "facing":I
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 73
    .restart local v1    # "cameraCount":I
    .restart local v4    # "facing":I
    :cond_1
    const/4 v5, -0x1

    .line 74
    .local v5, "id":I
    :try_start_2
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 76
    .local v2, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_2
    if-ge v6, v1, :cond_2

    .line 77
    invoke-static {v6, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 78
    iget v8, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v8, v4, :cond_3

    .line 79
    move v5, v6

    .line 84
    :cond_2
    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    .line 85
    const-string/jumbo v8, "FaceBoxCamera"

    const-string/jumbo v10, "CameraUtils"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "openCamera fail, index -1"

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    const/4 v8, 0x2

    :try_start_3
    monitor-exit v9

    goto :goto_1

    .line 115
    .end local v1    # "cameraCount":I
    .end local v2    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v5    # "id":I
    .end local v6    # "index":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 76
    .restart local v1    # "cameraCount":I
    .restart local v2    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .restart local v5    # "id":I
    .restart local v6    # "index":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 89
    :cond_4
    :try_start_4
    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v8

    iput-object v8, p0, Lgsy;->a:Landroid/hardware/Camera;

    .line 91
    iput v5, p0, Lgsy;->i:I

    .line 92
    iget v8, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v8, p0, Lgsy;->j:I

    .line 93
    const/4 v8, 0x0

    iput-object v8, p0, Lgsy;->k:Ljava/lang/Integer;

    .line 1270
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v10

    .line 1271
    const/4 v8, 0x0

    .line 1272
    packed-switch v10, :pswitch_data_0

    .line 1288
    :goto_3
    iget v10, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 1289
    iget v10, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v8, v10

    rem-int/lit16 v8, v8, 0x168

    .line 1290
    rsub-int v8, v8, 0x168

    rem-int/lit16 v8, v8, 0x168

    .line 1292
    rsub-int v10, v8, 0x168

    iput v10, p0, Lgsy;->e:I

    .line 1298
    :goto_4
    iput v8, p0, Lgsy;->d:I

    .line 97
    iget-object v8, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 98
    .local v7, "params":Landroid/hardware/Camera$Parameters;
    iget-object v8, p0, Lgsy;->a:Landroid/hardware/Camera;

    .line 99
    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    iget v10, p0, Lgsy;->g:I

    iget v11, p0, Lgsy;->h:I

    .line 98
    invoke-static {v8, v10, v11}, Lgsy;->a(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 100
    .local v0, "bestPreviewSize":Landroid/hardware/Camera$Size;
    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    iput v8, p0, Lgsy;->b:I

    .line 101
    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    iput v8, p0, Lgsy;->c:I

    .line 102
    iget v8, p0, Lgsy;->b:I

    iget v10, p0, Lgsy;->c:I

    invoke-virtual {v7, v8, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 103
    iget-object v8, p0, Lgsy;->a:Landroid/hardware/Camera;

    iget v10, p0, Lgsy;->d:I

    invoke-virtual {v8, v10}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 104
    iget-object v8, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v8, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    const/4 v8, 0x0

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1274
    .end local v0    # "bestPreviewSize":Landroid/hardware/Camera$Size;
    .end local v7    # "params":Landroid/hardware/Camera$Parameters;
    :pswitch_0
    const/4 v8, 0x0

    .line 1275
    goto :goto_3

    .line 1277
    :pswitch_1
    const/16 v8, 0x5a

    .line 1278
    goto :goto_3

    .line 1280
    :pswitch_2
    const/16 v8, 0xb4

    .line 1281
    goto :goto_3

    .line 1283
    :pswitch_3
    const/16 v8, 0x10e

    goto :goto_3

    .line 1294
    :cond_5
    :try_start_6
    iget v10, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v8, v10, v8

    add-int/lit16 v8, v8, 0x168

    rem-int/lit16 v8, v8, 0x168

    .line 1296
    iput v8, p0, Lgsy;->e:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 106
    .end local v1    # "cameraCount":I
    .end local v2    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v5    # "id":I
    .end local v6    # "index":I
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    const-string/jumbo v8, "FaceBoxCamera"

    const-string/jumbo v10, "CameraUtils"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "openCamera error:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 110
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 109
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lgsy;->c()V

    .line 113
    const/4 v8, 0x3

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 1272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 119
    iput p1, p0, Lgsy;->g:I

    .line 120
    iput p2, p0, Lgsy;->h:I

    .line 121
    return-void
.end method

.method public final a(Landroid/graphics/SurfaceTexture;)V
    .locals 7
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 187
    const-class v2, Lgsy;

    monitor-enter v2

    .line 188
    :try_start_0
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 190
    :try_start_1
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 191
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    const-string/jumbo v1, "FaceBoxCamera"

    const-string/jumbo v3, "CameraUtils"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "startPreview error:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 195
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 194
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final a(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 7
    .param p1, "callback"    # Landroid/hardware/Camera$AutoFocusCallback;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 327
    const-class v2, Lgsy;

    monitor-enter v2

    .line 328
    :try_start_0
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 330
    :try_start_1
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    const-string/jumbo v1, "FaceBoxCamera"

    const-string/jumbo v3, "CameraUtils"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "autoFocus error:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 334
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 333
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final a(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 377
    const-class v2, Lgsy;

    monitor-enter v2

    .line 378
    :try_start_0
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 380
    :try_start_1
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    .line 381
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 382
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 386
    const-string/jumbo v1, "FaceBoxCamera"

    const-string/jumbo v3, "CameraUtils"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "startFaceDetection error:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 387
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 386
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final a(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 7
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewCallback;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 173
    const-class v2, Lgsy;

    monitor-enter v2

    .line 174
    :try_start_0
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 176
    :try_start_1
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    const-string/jumbo v1, "FaceBoxCamera"

    const-string/jumbo v3, "CameraUtils"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "setPreviewCallbackWithBuffer error:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 180
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 179
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final a([B)V
    .locals 7
    .param p1, "buffer"    # [B

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 141
    const-class v2, Lgsy;

    monitor-enter v2

    .line 142
    :try_start_0
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 144
    :try_start_1
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    const-string/jumbo v1, "FaceBoxCamera"

    const-string/jumbo v3, "CameraUtils"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "addCallbackBuffer buffer error:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 148
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 147
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final b()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 155
    iget-object v2, p0, Lgsy;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lgsy;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 169
    :goto_0
    return v2

    .line 158
    :cond_0
    invoke-direct {p0}, Lgsy;->g()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 159
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_1

    .line 161
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lgsy;->k:Ljava/lang/Integer;

    .line 162
    iget-object v2, p0, Lgsy;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    const-string/jumbo v2, "FaceBoxCamera"

    const-string/jumbo v3, "CameraUtils"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getPreviewFormat error:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 166
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 165
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const/16 v2, 0x11

    goto :goto_0
.end method

.method public final c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 203
    const-class v2, Lgsy;

    monitor-enter v2

    .line 204
    :try_start_0
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 206
    :try_start_1
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 207
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    :try_start_2
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    .line 223
    monitor-exit v2

    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    const-string/jumbo v1, "FaceBoxCamera"

    const-string/jumbo v3, "CameraUtils"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "closeCamera release error:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 218
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 217
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 208
    :catch_1
    move-exception v0

    .line 209
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    const-string/jumbo v1, "FaceBoxCamera"

    const-string/jumbo v3, "CameraUtils"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "closeCamera error:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 211
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 210
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    :try_start_5
    iget-object v1, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 215
    :catch_2
    move-exception v0

    .line 216
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    const-string/jumbo v1, "FaceBoxCamera"

    const-string/jumbo v3, "CameraUtils"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "closeCamera release error:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 218
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 217
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 213
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    .line 214
    :try_start_7
    iget-object v3, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 219
    :goto_1
    :try_start_8
    throw v1

    .line 215
    :catch_3
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    const-string/jumbo v3, "FaceBoxCamera"

    const-string/jumbo v4, "CameraUtils"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "closeCamera release error:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 218
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 217
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public final d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 228
    const-class v1, Lgsy;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lgsy;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 305
    iget v1, p0, Lgsy;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 419
    const-class v2, Lgsy;

    monitor-enter v2

    .line 420
    :try_start_0
    iget-object v3, p0, Lgsy;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 422
    :try_start_1
    iget-object v3, p0, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    .line 429
    :goto_0
    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    const-string/jumbo v3, "FaceBoxCamera"

    const-string/jumbo v4, "CameraUtils"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMaxNumFocusAreas error:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 426
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 425
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    monitor-exit v2

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
