.class public final Lcom/alibaba/android/scan/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Landroid/hardware/Camera;

.field public b:J

.field public c:Lemm$b;

.field private final e:Landroid/content/Context;

.field private final f:Lemn;

.field private g:Lemm;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/scan/camera/CameraManager;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->l:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->o:J

    .line 62
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->b:J

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->c:Lemm$b;

    .line 66
    iput-object p1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->e:Landroid/content/Context;

    .line 67
    new-instance v0, Lemn;

    invoke-direct {v0, p1}, Lemn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->f:Lemn;

    .line 68
    return-void
.end method

.method private declared-synchronized a(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->j:Z

    if-eqz v3, :cond_2

    .line 298
    iget-object v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->f:Lemn;

    .line 4216
    iget-object v1, v3, Lemn;->b:Landroid/graphics/Point;

    .line 299
    .local v1, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-le p1, v3, :cond_0

    .line 300
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 302
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le p2, v3, :cond_1

    .line 303
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 305
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 306
    .local v0, "leftOffset":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    div-int/lit8 v2, v3, 0x2

    .line 307
    .local v2, "topOffset":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v0, p1

    add-int v5, v2, p2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->h:Landroid/graphics/Rect;

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Calculated manual framing rect: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/scan/camera/CameraManager;->h:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->i:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v0    # "leftOffset":I
    .end local v1    # "screenResolution":Landroid/graphics/Point;
    .end local v2    # "topOffset":I
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->m:I

    .line 312
    iput p2, p0, Lcom/alibaba/android/scan/camera/CameraManager;->n:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 205
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->k:Z

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    monitor-exit p0

    return-void

    .line 204
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Landroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 78
    .local v2, "theCamera":Landroid/hardware/Camera;
    if-nez v2, :cond_1

    .line 80
    iget v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->l:I

    invoke-static {v3}, Liii;->a(I)Landroid/hardware/Camera;

    move-result-object v2

    .line 81
    if-nez v2, :cond_0

    .line 82
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v2    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 84
    .restart local v2    # "theCamera":Landroid/hardware/Camera;
    :cond_0
    :try_start_1
    iput-object v2, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 86
    :cond_1
    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 88
    iget-boolean v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->j:Z

    if-nez v3, :cond_5

    .line 89
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->j:Z

    .line 90
    iget-object v4, p0, Lcom/alibaba/android/scan/camera/CameraManager;->f:Lemn;

    .line 1062
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 1063
    iget-object v3, v4, Lemn;->a:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1064
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 1065
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 1066
    invoke-virtual {v3, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1067
    iput-object v6, v4, Lemn;->b:Landroid/graphics/Point;

    .line 1068
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Screen resolution: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lemn;->b:Landroid/graphics/Point;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1069
    iget-object v3, v4, Lemn;->b:Landroid/graphics/Point;

    invoke-static {v5, v3}, Lemo;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, v4, Lemn;->c:Landroid/graphics/Point;

    .line 1072
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1073
    const-string/jumbo v6, "HTC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "One"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const-string/jumbo v6, "GT-N7100"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "GT-I9300"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1074
    :cond_3
    new-instance v3, Landroid/graphics/Point;

    const/16 v6, 0x500

    const/16 v7, 0x2d0

    invoke-direct {v3, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v4, Lemn;->c:Landroid/graphics/Point;

    .line 1081
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Camera resolution: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lemn;->c:Landroid/graphics/Point;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1082
    iget v3, v4, Lemn;->d:I

    invoke-static {v5, v3}, Lemo;->a(Landroid/hardware/Camera$Parameters;I)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, v4, Lemn;->e:Landroid/graphics/Point;

    .line 91
    iget v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->m:I

    if-lez v3, :cond_5

    iget v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->n:I

    if-lez v3, :cond_5

    .line 92
    iget v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->m:I

    iget v4, p0, Lcom/alibaba/android/scan/camera/CameraManager;->n:I

    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/scan/camera/CameraManager;->a(II)V

    .line 93
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->m:I

    .line 94
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->n:I

    .line 98
    :cond_5
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 99
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    .line 101
    .local v1, "parametersFlattened":Ljava/lang/String;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->f:Lemn;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lemn;->a(Landroid/hardware/Camera;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 1075
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "parametersFlattened":Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string/jumbo v6, "u8800"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1076
    new-instance v3, Landroid/graphics/Point;

    const/16 v6, 0x2d0

    const/16 v7, 0x1e0

    invoke-direct {v3, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v4, Lemn;->c:Landroid/graphics/Point;

    goto :goto_0

    .line 1077
    :cond_8
    const-string/jumbo v6, "MI PAD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1078
    new-instance v3, Landroid/graphics/Point;

    const/16 v6, 0x800

    const/16 v7, 0x600

    invoke-direct {v3, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v4, Lemn;->c:Landroid/graphics/Point;

    goto :goto_0

    .line 99
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_9
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 104
    .restart local v1    # "parametersFlattened":Ljava/lang/String;
    :catch_0
    move-exception v3

    sget-object v3, Lcom/alibaba/android/scan/camera/CameraManager;->d:Ljava/lang/String;

    const-string/jumbo v4, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Resetting to saved camera params: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    if-eqz v1, :cond_6

    .line 108
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    :try_start_4
    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 112
    iget-object v3, p0, Lcom/alibaba/android/scan/camera/CameraManager;->f:Lemn;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lemn;->a(Landroid/hardware/Camera;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 115
    :catch_1
    move-exception v3

    :try_start_5
    sget-object v3, Lcom/alibaba/android/scan/camera/CameraManager;->d:Ljava/lang/String;

    const-string/jumbo v4, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized a(Z)V
    .locals 4
    .param p1, "newSetting"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 3220
    if-eqz v1, :cond_1

    .line 3221
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 3222
    if-eqz v1, :cond_1

    .line 3223
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 3224
    if-eqz v1, :cond_1

    const-string/jumbo v2, "on"

    .line 3225
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "torch"

    .line 3226
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 180
    :cond_1
    if-eq p1, v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    invoke-virtual {v0}, Lemm;->b()V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->f:Lemn;

    iget-object v1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 3233
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 3234
    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lemn;->a(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 3235
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    invoke-virtual {v0}, Lemm;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lcom/alibaba/android/scan/camera/CameraManager;->d:Ljava/lang/String;

    const-string/jumbo v1, "maybe light hardware broken "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->h:Landroid/graphics/Rect;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->i:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 144
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 145
    .local v2, "timeStart":J
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 146
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->k:Z

    if-nez v1, :cond_2

    .line 147
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SQY: startPreview.theCamera.startPreview Costs"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->k:Z

    .line 150
    new-instance v1, Lemm;

    iget-object v4, p0, Lcom/alibaba/android/scan/camera/CameraManager;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    invoke-direct {v1, v4, v5}, Lemm;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    iget-wide v4, p0, Lcom/alibaba/android/scan/camera/CameraManager;->b:J

    .line 1167
    cmp-long v6, v4, v8

    if-ltz v6, :cond_0

    .line 1168
    iput-wide v4, v1, Lemm;->a:J

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    const-wide/16 v4, 0x0

    .line 2161
    cmp-long v6, v8, v8

    if-ltz v6, :cond_1

    iget-object v6, v1, Lemm;->b:Landroid/os/Handler;

    if-eqz v6, :cond_1

    .line 2162
    iget-object v1, v1, Lemm;->b:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    iget-object v4, p0, Lcom/alibaba/android/scan/camera/CameraManager;->c:Lemm$b;

    .line 2173
    iput-object v4, v1, Lemm;->c:Lemm$b;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SQY: startPreview new AutoFocusManager Costs"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_2
    monitor-exit p0

    return-void

    .line 144
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    .end local v2    # "timeStart":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    invoke-virtual {v0}, Lemm;->b()V

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    const/4 v1, 0x0

    .line 3173
    iput-object v1, v0, Lemm;->c:Lemm$b;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->g:Lemm;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->k:Z

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/scan/camera/CameraManager;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_1
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
