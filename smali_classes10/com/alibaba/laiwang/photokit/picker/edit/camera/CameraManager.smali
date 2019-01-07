.class public final Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public a:Landroid/hardware/Camera;

.field public b:Lhbq;

.field public c:J

.field public d:Lhbq$b;

.field private final f:Landroid/content/Context;

.field private final g:Lhbr;

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
    .line 25
    const-class v0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->l:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->o:J

    .line 45
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->c:J

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->d:Lhbq$b;

    .line 50
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->f:Landroid/content/Context;

    .line 51
    new-instance v0, Lhbr;

    invoke-direct {v0, p1}, Lhbr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->g:Lhbr;

    .line 52
    return-void
.end method

.method private declared-synchronized a(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->j:Z

    if-eqz v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->g:Lhbr;

    .line 2179
    iget-object v1, v3, Lhbr;->b:Landroid/graphics/Point;

    .line 276
    .local v1, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-le p1, v3, :cond_0

    .line 277
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 279
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le p2, v3, :cond_1

    .line 280
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 282
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 283
    .local v0, "leftOffset":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    div-int/lit8 v2, v3, 0x2

    .line 284
    .local v2, "topOffset":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v0, p1

    add-int v5, v2, p2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->h:Landroid/graphics/Rect;

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Calculated manual framing rect: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->h:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->i:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v0    # "leftOffset":I
    .end local v1    # "screenResolution":Landroid/graphics/Point;
    .end local v2    # "topOffset":I
    :goto_0
    monitor-exit p0

    return-void

    .line 288
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->m:I

    .line 289
    iput p2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->n:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 182
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->k:Z

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 181
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 62
    .local v2, "theCamera":Landroid/hardware/Camera;
    if-nez v2, :cond_1

    .line 64
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->l:I

    invoke-static {v3}, Lhbt;->a(I)Landroid/hardware/Camera;

    move-result-object v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v2    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 68
    .restart local v2    # "theCamera":Landroid/hardware/Camera;
    :cond_0
    :try_start_1
    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 70
    :cond_1
    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 72
    iget-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->j:Z

    if-nez v3, :cond_5

    .line 73
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->j:Z

    .line 74
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->g:Lhbr;

    .line 1041
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 1042
    iget-object v3, v4, Lhbr;->a:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1043
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 1044
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 1045
    invoke-virtual {v3, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1046
    iput-object v6, v4, Lhbr;->b:Landroid/graphics/Point;

    .line 1047
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Screen resolution: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lhbr;->b:Landroid/graphics/Point;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1048
    iget-object v3, v4, Lhbr;->b:Landroid/graphics/Point;

    invoke-static {v5, v3}, Lhbs;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, v4, Lhbr;->c:Landroid/graphics/Point;

    .line 1051
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1052
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

    .line 1053
    :cond_3
    new-instance v3, Landroid/graphics/Point;

    const/16 v6, 0x500

    const/16 v7, 0x2d0

    invoke-direct {v3, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v4, Lhbr;->c:Landroid/graphics/Point;

    .line 1060
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Camera resolution: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lhbr;->c:Landroid/graphics/Point;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1061
    iget v3, v4, Lhbr;->d:I

    invoke-static {v5, v3}, Lhbs;->a(Landroid/hardware/Camera$Parameters;I)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, v4, Lhbr;->e:Landroid/graphics/Point;

    .line 75
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->m:I

    if-lez v3, :cond_5

    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->n:I

    if-lez v3, :cond_5

    .line 76
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->m:I

    iget v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->n:I

    invoke-direct {p0, v3, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(II)V

    .line 77
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->m:I

    .line 78
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->n:I

    .line 82
    :cond_5
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 83
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    .line 85
    .local v1, "parametersFlattened":Ljava/lang/String;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->g:Lhbr;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lhbr;->a(Landroid/hardware/Camera;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 1054
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "parametersFlattened":Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string/jumbo v6, "u8800"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1055
    new-instance v3, Landroid/graphics/Point;

    const/16 v6, 0x2d0

    const/16 v7, 0x1e0

    invoke-direct {v3, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v4, Lhbr;->c:Landroid/graphics/Point;

    goto :goto_0

    .line 1056
    :cond_8
    const-string/jumbo v6, "MI PAD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1057
    new-instance v3, Landroid/graphics/Point;

    const/16 v6, 0x800

    const/16 v7, 0x600

    invoke-direct {v3, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v4, Lhbr;->c:Landroid/graphics/Point;

    goto :goto_0

    .line 83
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_9
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 88
    .restart local v1    # "parametersFlattened":Ljava/lang/String;
    :catch_0
    move-exception v3

    sget-object v3, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->e:Ljava/lang/String;

    const-string/jumbo v4, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Resetting to saved camera params: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    if-eqz v1, :cond_6

    .line 92
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :try_start_4
    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 96
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->g:Lhbr;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lhbr;->a(Landroid/hardware/Camera;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 99
    :catch_1
    move-exception v3

    :try_start_5
    sget-object v3, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->e:Ljava/lang/String;

    const-string/jumbo v4, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;
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
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->h:Landroid/graphics/Rect;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->i:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 128
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 129
    .local v2, "timeStart":J
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 130
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->k:Z

    if-nez v1, :cond_2

    .line 131
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SQY: startPreview.theCamera.startPreview Costs"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->k:Z

    .line 134
    new-instance v1, Lhbq;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->f:Landroid/content/Context;

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    invoke-direct {v1, v4, v5}, Lhbq;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b:Lhbq;

    .line 135
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b:Lhbq;

    iget-wide v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->c:J

    .line 1154
    cmp-long v6, v4, v8

    if-ltz v6, :cond_0

    .line 1155
    iput-wide v4, v1, Lhbq;->a:J

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b:Lhbq;

    const-wide/16 v4, 0x0

    .line 2148
    cmp-long v6, v8, v8

    if-ltz v6, :cond_1

    iget-object v6, v1, Lhbq;->b:Landroid/os/Handler;

    if-eqz v6, :cond_1

    .line 2149
    iget-object v1, v1, Lhbq;->b:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b:Lhbq;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->d:Lhbq$b;

    .line 2160
    iput-object v4, v1, Lhbq;->c:Lhbq$b;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SQY: startPreview new AutoFocusManager Costs"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_2
    monitor-exit p0

    return-void

    .line 128
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    .end local v2    # "timeStart":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b:Lhbq;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b:Lhbq;

    invoke-virtual {v0}, Lhbq;->a()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b:Lhbq;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->k:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_1
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
