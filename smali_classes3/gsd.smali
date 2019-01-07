.class public Lgsd;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$ErrorCallback;
.implements Landroid/os/Handler$Callback;


# static fields
.field static volatile a:Lgsd;


# instance fields
.field b:Landroid/os/Handler;

.field public c:Landroid/hardware/Camera;

.field public d:I

.field public final e:Ljava/lang/Object;

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Landroid/hardware/Camera$FaceDetectionListener;

.field public k:Z

.field public l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/hardware/Camera$Size;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lgsd;->c:Landroid/hardware/Camera;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lgsd;->d:I

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgsd;->e:Ljava/lang/Object;

    .line 56
    iput-boolean v1, p0, Lgsd;->m:Z

    .line 57
    iput-boolean v1, p0, Lgsd;->n:Z

    .line 58
    iput-boolean v1, p0, Lgsd;->o:Z

    .line 62
    const-string/jumbo v0, "off"

    iput-object v0, p0, Lgsd;->h:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "off"

    iput-object v0, p0, Lgsd;->i:Ljava/lang/String;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lgsd;->b:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method public static a()Lgsd;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lgsd;->a:Lgsd;

    if-nez v0, :cond_1

    .line 73
    const-class v1, Lgsd;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lgsd;->a:Lgsd;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lgsd;

    invoke-direct {v0}, Lgsd;-><init>()V

    sput-object v0, Lgsd;->a:Lgsd;

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    sget-object v0, Lgsd;->a:Lgsd;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static varargs a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "candidate_list"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 430
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 431
    .local v0, "item":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    .end local v0    # "item":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 430
    .restart local v0    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # I

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "CameraController.BROADCAST_ACTION_OPEN_CAMERA_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "CameraController.TYPE_OPEN_CAMERA_ERROR_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 237
    return-void
.end method

.method private i()Landroid/hardware/Camera$Parameters;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 387
    iget-object v2, p0, Lgsd;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 388
    :try_start_0
    iget-object v1, p0, Lgsd;->c:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 390
    :try_start_1
    iget-object v1, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    .line 397
    :goto_0
    return-object v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "facebox"

    const-string/jumbo v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Camera] getParameters err "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v2

    .line 397
    const/4 v1, 0x0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/graphics/SurfaceTexture;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 273
    iget-object v6, p0, Lgsd;->c:Landroid/hardware/Camera;

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lgsd;->i()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 278
    .local v5, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v5, :cond_0

    .line 281
    iget-object v6, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v6, p2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 283
    iget-object v7, p0, Lgsd;->e:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :try_start_1
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 285
    .local v4, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 286
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgsd;->o:Z

    .line 287
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgsd;->n:Z

    .line 298
    :goto_1
    iget-object v6, p0, Lgsd;->c:Landroid/hardware/Camera;

    .line 299
    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const/16 v8, 0x500

    const/16 v9, 0x2d0

    .line 298
    invoke-static {v6, v8, v9}, Lgsy;->a(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 300
    .local v0, "bestPreviewSize":Landroid/hardware/Camera$Size;
    const-string/jumbo v6, "facebox"

    const-string/jumbo v8, "CameraController"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "previewWidth="

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "previewHeight="

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lgsb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 302
    .local v2, "cameraWidth":I
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 303
    .local v1, "cameraHeight":I
    invoke-virtual {v5, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 305
    iget-object v6, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :try_start_2
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    iput-object v6, p0, Lgsd;->q:Landroid/hardware/Camera$Size;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    :goto_2
    :try_start_3
    iget-object v6, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v6, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 312
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    .end local v0    # "bestPreviewSize":Landroid/hardware/Camera$Size;
    .end local v1    # "cameraHeight":I
    .end local v2    # "cameraWidth":I
    .end local v4    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "params":Landroid/hardware/Camera$Parameters;
    :goto_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgsd;->m:Z

    goto :goto_0

    .line 288
    .restart local v4    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "params":Landroid/hardware/Camera$Parameters;
    :cond_3
    :try_start_4
    const-string/jumbo v6, "continuous-picture"

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 289
    const/4 v6, 0x1

    iput-boolean v6, p0, Lgsd;->o:Z

    .line 290
    const-string/jumbo v6, "continuous-picture"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 312
    .end local v4    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 313
    .end local v5    # "params":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v3

    .line 314
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "facebox"

    const-string/jumbo v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[Camera] configParameters err "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lgsd;->c()V

    .line 316
    const/4 v6, 0x2

    invoke-static {p1, v6}, Lgsd;->a(Landroid/content/Context;I)V

    goto :goto_3

    .line 291
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "params":Landroid/hardware/Camera$Parameters;
    :cond_4
    :try_start_6
    const-string/jumbo v6, "auto"

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 292
    const/4 v6, 0x1

    iput-boolean v6, p0, Lgsd;->n:Z

    .line 293
    const-string/jumbo v6, "auto"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 295
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgsd;->o:Z

    .line 296
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgsd;->n:Z

    goto/16 :goto_1

    .line 308
    .restart local v0    # "bestPreviewSize":Landroid/hardware/Camera$Size;
    .restart local v1    # "cameraHeight":I
    .restart local v2    # "cameraWidth":I
    :catch_1
    move-exception v3

    .line 309
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "facebox"

    const-string/jumbo v8, "CameraController"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[Camera] getPreviewSize err "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 8
    .param p1, "mode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    iget-object v5, p0, Lgsd;->c:Landroid/hardware/Camera;

    if-nez v5, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v3

    .line 111
    :cond_1
    :try_start_0
    iget-object v5, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 112
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "supported_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    const-string/jumbo v5, "off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "off"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lgsd;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    :goto_1
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 126
    iget-object v5, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v5, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 127
    invoke-virtual {p0}, Lgsd;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    iput-object p1, p0, Lgsd;->h:Ljava/lang/String;

    :goto_2
    move v3, v4

    .line 132
    goto :goto_0

    .line 119
    :cond_2
    const-string/jumbo v5, "torch"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    :cond_3
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "torch"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "on"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lgsd;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 122
    :cond_4
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "auto"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lgsd;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 130
    :cond_5
    iput-object p1, p0, Lgsd;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 135
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    .end local v2    # "supported_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "facebox"

    const-string/jumbo v5, "CameraController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[Camera] setFlashlight err "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v2, p0, Lgsd;->c:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return-object v1

    .line 99
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 100
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 103
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 323
    iget-object v1, p0, Lgsd;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lgsd;->c:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 326
    :try_start_1
    iget-object v0, p0, Lgsd;->c:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 327
    iget-object v0, p0, Lgsd;->c:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 328
    iget-object v0, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 329
    iget-object v0, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lgsd;->c:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 332
    :catch_0
    move-exception v0

    const-string/jumbo v0, "facebox"

    const-string/jumbo v2, "CameraController"

    const-string/jumbo v3, "[Camera] closeCamera err"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 339
    iget-object v3, p0, Lgsd;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    :try_start_0
    iget-object v2, p0, Lgsd;->c:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    .line 342
    :try_start_1
    invoke-virtual {p0}, Lgsd;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 343
    iget-object v2, p0, Lgsd;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lgsd;->h:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lgsd;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    :cond_0
    const-string/jumbo v2, "off"

    invoke-virtual {p0, v2}, Lgsd;->a(Ljava/lang/String;)Z

    .line 345
    const-string/jumbo v2, "off"

    iput-object v2, p0, Lgsd;->h:Ljava/lang/String;

    .line 354
    :cond_1
    :goto_0
    iget-object v2, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 355
    iget-boolean v2, p0, Lgsd;->o:Z

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1505
    :cond_2
    :try_start_2
    iget-object v2, p0, Lgsd;->c:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lgsd;->p:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lgsd;->j:Landroid/hardware/Camera$FaceDetectionListener;

    if-eqz v2, :cond_3

    .line 1506
    iget-object v2, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-static {v2}, Lgsy;->a(Landroid/hardware/Camera;)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lgsd;->j:Landroid/hardware/Camera$FaceDetectionListener;

    if-eqz v2, :cond_3

    .line 1507
    const/4 v2, 0x1

    iput-boolean v2, p0, Lgsd;->p:Z

    .line 1508
    iget-object v2, p0, Lgsd;->c:Landroid/hardware/Camera;

    iget-object v4, p0, Lgsd;->j:Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1509
    iget-object v2, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    :goto_2
    return v1

    .line 348
    :cond_4
    :try_start_4
    iget-object v2, p0, Lgsd;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lgsd;->i:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lgsd;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 349
    :cond_5
    const-string/jumbo v2, "off"

    invoke-virtual {p0, v2}, Lgsd;->a(Ljava/lang/String;)Z

    .line 350
    const-string/jumbo v2, "off"

    iput-object v2, p0, Lgsd;->i:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v1, "facebox"

    const-string/jumbo v2, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Camera] startPreview err "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 365
    const/4 v1, 0x0

    goto :goto_2

    .line 1512
    :catch_1
    move-exception v2

    .line 1513
    :try_start_6
    const-string/jumbo v4, "facebox"

    const-string/jumbo v5, "CameraController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[Camera] startFaceDetector err "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 364
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method

.method public final e()Landroid/hardware/Camera$Size;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 369
    iget-object v1, p0, Lgsd;->q:Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lgsd;->q:Landroid/hardware/Camera$Size;

    .line 382
    :goto_0
    return-object v1

    .line 372
    :cond_0
    iget-object v2, p0, Lgsd;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 374
    :try_start_0
    iget-object v1, p0, Lgsd;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iput-object v1, p0, Lgsd;->q:Landroid/hardware/Camera$Size;

    .line 376
    iget-object v1, p0, Lgsd;->q:Landroid/hardware/Camera$Size;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "facebox"

    const-string/jumbo v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Camera] getPreviewSize err "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 447
    iget v1, p0, Lgsd;->d:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 479
    iget-object v1, p0, Lgsd;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 2492
    :try_start_0
    iget-object v0, p0, Lgsd;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lgsd;->p:Z

    if-eqz v0, :cond_0

    .line 2493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgsd;->p:Z

    .line 2494
    iget-object v0, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lgsd;->c()V

    .line 486
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 2496
    :catch_0
    move-exception v0

    .line 2497
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2498
    const-string/jumbo v0, "facebox"

    const-string/jumbo v2, "CameraController"

    const-string/jumbo v3, "[Camera] stopFaceDetection err"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 483
    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v0, "facebox"

    const-string/jumbo v2, "CameraController"

    const-string/jumbo v3, "[Camera] release err"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 519
    :try_start_0
    const-string/jumbo v0, "facebox"

    const-string/jumbo v1, "CameraController"

    const-string/jumbo v2, "[Camera] onDestroy"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lgsd;->j:Landroid/hardware/Camera$FaceDetectionListener;

    .line 521
    const/4 v0, 0x0

    sput-object v0, Lgsd;->a:Lgsd;

    .line 522
    iget-object v0, p0, Lgsd;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lgsd;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lgsd;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgsd;->c()V

    .line 530
    return-void

    .line 527
    :catch_0
    move-exception v0

    const-string/jumbo v0, "facebox"

    const-string/jumbo v1, "CameraController"

    const-string/jumbo v2, "[Camera] onDestroy err"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 452
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 474
    :cond_0
    :goto_0
    return v4

    .line 454
    :pswitch_0
    iget-object v1, p0, Lgsd;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lgsd;->b:Landroid/os/Handler;

    const/16 v2, 0x12d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    :try_start_0
    iget-boolean v1, p0, Lgsd;->o:Z

    if-eqz v1, :cond_1

    .line 460
    invoke-direct {p0}, Lgsd;->i()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 461
    .local v0, "cp":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_1

    .line 462
    const-string/jumbo v1, "continuous-picture"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 466
    .end local v0    # "cp":Landroid/hardware/Camera$Parameters;
    :cond_1
    iget-object v1, p0, Lgsd;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v1

    const-string/jumbo v1, "facebox"

    const-string/jumbo v2, "CameraController"

    const-string/jumbo v3, "[Camera] setFocusMode err"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
    .end packed-switch
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 407
    iget-object v0, p0, Lgsd;->b:Landroid/os/Handler;

    const/16 v1, 0x12d

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgsd;->m:Z

    .line 410
    return-void
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 416
    return-void
.end method
