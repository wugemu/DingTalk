.class public final Lgsl;
.super Ljava/lang/Object;
.source "CameraAdapter.java"


# instance fields
.field public final a:Lgsy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lgsy;->a()Lgsy;

    move-result-object v0

    iput-object v0, p0, Lgsl;->a:Lgsy;

    .line 19
    return-void
.end method

.method private static a(II)I
    .locals 3
    .param p0, "touchCoordinateInCameraReper"    # I
    .param p1, "focusAreaSize"    # I

    .prologue
    .line 65
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x96

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 66
    if-lez p0, :cond_0

    .line 67
    const/16 v0, 0x352

    .line 74
    .local v0, "result":I
    :goto_0
    return v0

    .line 69
    .end local v0    # "result":I
    :cond_0
    const/16 v0, -0x352

    .restart local v0    # "result":I
    goto :goto_0

    .line 72
    .end local v0    # "result":I
    :cond_1
    add-int/lit16 v0, p0, -0x96

    .restart local v0    # "result":I
    goto :goto_0
.end method


# virtual methods
.method public final a(IIFF)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v5, 0x12c

    const/high16 v4, 0x44fa0000    # 2000.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 47
    iget-object v1, p0, Lgsl;->a:Lgsy;

    invoke-virtual {v1}, Lgsy;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lgsl;->a:Lgsy;

    invoke-virtual {v1}, Lgsy;->f()I

    move-result v1

    if-lez v1, :cond_1

    .line 1057
    int-to-float v1, p1

    div-float v1, p3, v1

    mul-float/2addr v1, v4

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v1, v5}, Lgsl;->a(II)I

    move-result v1

    .line 1058
    int-to-float v2, p2

    div-float v2, p4, v2

    mul-float/2addr v2, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-static {v2, v5}, Lgsl;->a(II)I

    move-result v2

    .line 1060
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit16 v3, v1, 0x12c

    add-int/lit16 v4, v2, 0x12c

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lgsl;->a:Lgsy;

    .line 1355
    const-class v2, Lgsy;

    monitor-enter v2

    .line 1356
    :try_start_0
    iget-object v3, v1, Lgsy;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1358
    :try_start_1
    iget-object v3, v1, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 1359
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v4

    if-lez v4, :cond_0

    .line 1360
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    new-instance v5, Landroid/hardware/Camera$Area;

    const/16 v6, 0x3e8

    invoke-direct {v5, v0, v6}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    const-string/jumbo v5, "auto"

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1364
    iget-object v1, v1, Lgsy;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1373
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    iget-object v1, p0, Lgsl;->a:Lgsy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgsy;->a(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 54
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 1367
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 1368
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1369
    const-string/jumbo v3, "FaceBoxCamera"

    const-string/jumbo v4, "CameraUtils"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "focus error:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1370
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 1369
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1373
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
