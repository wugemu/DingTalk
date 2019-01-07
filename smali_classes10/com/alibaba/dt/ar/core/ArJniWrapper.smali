.class public Lcom/alibaba/dt/ar/core/ArJniWrapper;
.super Ljava/lang/Object;
.source "ArJniWrapper.java"


# static fields
.field public static isInit:Z


# instance fields
.field private enableDetectRequest:Z

.field private isScreenXInflated:Z

.field mFrameHeight:I

.field private mFrameResizeToScreenScale:F

.field private mFrameShrinkScale:F

.field mFrameWidth:I

.field mPixelHeight:I

.field mPixelWidth:I

.field private mScreenEdgeInflateScale:F

.field private nativeService:J

.field private networkBitmap:Landroid/graphics/Bitmap;

.field private stopDetectRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->isInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->enableDetectRequest:Z

    .line 28
    iput-boolean v1, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->stopDetectRequest:Z

    .line 29
    iput v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameResizeToScreenScale:F

    .line 30
    iput v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameShrinkScale:F

    .line 35
    iput v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mScreenEdgeInflateScale:F

    .line 36
    iput-boolean v1, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->isScreenXInflated:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->networkBitmap:Landroid/graphics/Bitmap;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->nativeService:J

    .line 44
    invoke-static {}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->InitLibrary()V

    .line 45
    return-void
.end method

.method public static declared-synchronized InitLibrary()V
    .locals 5

    .prologue
    .line 49
    const-class v3, Lcom/alibaba/dt/ar/core/ArJniWrapper;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/alibaba/dt/ar/core/ArJniWrapper;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 61
    .local v1, "library":Ljava/lang/String;
    :goto_0
    monitor-exit v3

    return-void

    .line 52
    .end local v1    # "library":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "imageArSdk1.0"

    .line 53
    .restart local v1    # "library":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 54
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "load imageArSdk1.0 ok."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alibaba/dt/ar/core/ArJniWrapper;->isInit:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "load imageArSdk1.0 err:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "load imageArSdk1.0 err:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private native Jni_AddTarget(JLjava/lang/String;J)I
.end method

.method private native Jni_AddTargetBitmap(JLjava/lang/String;Landroid/graphics/Bitmap;)I
.end method

.method private native Jni_CreateService(IFLjava/lang/String;Ljava/lang/String;)J
.end method

.method private native Jni_DeleteService(J)I
.end method

.method private native Jni_MatToBitmap2(JLandroid/graphics/Bitmap;Z)I
.end method

.method private native Jni_StartService(J)I
.end method

.method private native Jni_StopService(J)I
.end method

.method private native Jni_UpdateGyroData(JFFFJ)I
.end method

.method private native onNativeSetViewAndProject(J[F)I
.end method

.method public static writeMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 210
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 211
    .local v1, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v1    # "out":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public CreateService(IFLjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "fov"    # F
    .param p3, "par_content"    # Ljava/lang/String;
    .param p4, "cache_path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->Jni_CreateService(IFLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->nativeService:J

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createService : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->nativeService:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public DeleteService()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-wide v2, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->nativeService:J

    invoke-direct {p0, v2, v3}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->Jni_DeleteService(J)I

    move-result v0

    .line 166
    .local v0, "r":I
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->nativeService:J

    .line 167
    return v0
.end method

.method public GetFrameHeight()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameHeight:I

    return v0
.end method

.method public GetFrameResizeToScreenScale()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameResizeToScreenScale:F

    return v0
.end method

.method public GetFrameShrinkScale()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameShrinkScale:F

    return v0
.end method

.method public GetFrameWidth()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameWidth:I

    return v0
.end method

.method public GetPixelHeight()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelHeight:I

    return v0
.end method

.method public GetPixelWidth()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelWidth:I

    return v0
.end method

.method public GetResizeScale()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameShrinkScale:F

    iget v1, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameResizeToScreenScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public GetScreenInflateScale()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mScreenEdgeInflateScale:F

    return v0
.end method

.method public Jni_AddFrame(J)[Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;
    .locals 9
    .param p1, "engineAddress"    # J

    .prologue
    .line 191
    iget-wide v2, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->nativeService:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->Jni_AddFrame(JJJ)[Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;

    move-result-object v0

    return-object v0
.end method

.method public native Jni_AddFrame(JJJ)[Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;
.end method

.method public native Jni_RemoveTarget(JLjava/lang/String;)I
.end method

.method public SetNetworkBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->networkBitmap:Landroid/graphics/Bitmap;

    .line 204
    return-void
.end method

.method public SetViewAndProject(JFFFFFFFFFFFFF)I
    .locals 3
    .param p1, "nativeService"    # J
    .param p3, "eyex"    # F
    .param p4, "eyey"    # F
    .param p5, "eyez"    # F
    .param p6, "centerx"    # F
    .param p7, "centery"    # F
    .param p8, "centerz"    # F
    .param p9, "upx"    # F
    .param p10, "upy"    # F
    .param p11, "upz"    # F
    .param p12, "fovy"    # F
    .param p13, "aspect"    # F
    .param p14, "zNear"    # F
    .param p15, "zFar"    # F

    .prologue
    .line 342
    const/16 v1, 0xd

    new-array v0, v1, [F

    .line 343
    .local v0, "matirx":[F
    const/4 v1, 0x0

    aput p3, v0, v1

    .line 344
    const/4 v1, 0x1

    aput p4, v0, v1

    .line 345
    const/4 v1, 0x2

    aput p5, v0, v1

    .line 347
    const/4 v1, 0x3

    aput p6, v0, v1

    .line 348
    const/4 v1, 0x4

    aput p7, v0, v1

    .line 349
    const/4 v1, 0x5

    aput p8, v0, v1

    .line 351
    const/4 v1, 0x6

    aput p9, v0, v1

    .line 352
    const/4 v1, 0x7

    aput p10, v0, v1

    .line 353
    const/16 v1, 0x8

    aput p11, v0, v1

    .line 355
    const/16 v1, 0x9

    aput p12, v0, v1

    .line 356
    const/16 v1, 0xa

    aput p13, v0, v1

    .line 357
    const/16 v1, 0xb

    aput p14, v0, v1

    .line 358
    const/16 v1, 0xc

    aput p15, v0, v1

    .line 360
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeSetViewAndProject(J[F)I

    move-result v1

    return v1
.end method

.method public SetWidthHeight(IIII)V
    .locals 14
    .param p1, "frameWidth"    # I
    .param p2, "frameHeight"    # I
    .param p3, "pixelWidth"    # I
    .param p4, "pixelHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iput p1, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameWidth:I

    .line 67
    move/from16 v0, p2

    iput v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameHeight:I

    .line 68
    move/from16 v0, p3

    iput v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelWidth:I

    .line 69
    move/from16 v0, p4

    iput v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelHeight:I

    .line 70
    const/high16 v5, 0x3f800000    # 1.0f

    .line 71
    .local v5, "scale":F
    iget v8, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameWidth:I

    .line 72
    .local v8, "w":I
    iget v4, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameHeight:I

    .line 73
    .local v4, "h":I
    const/16 v9, 0x3e8

    if-gt v8, v9, :cond_0

    const/16 v9, 0x3e8

    if-le v4, v9, :cond_1

    .line 76
    :cond_0
    const/high16 v5, 0x40000000    # 2.0f

    .line 79
    :cond_1
    iput v5, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameShrinkScale:F

    .line 81
    iget v9, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-double v2, v9

    .line 82
    .local v2, "frameScale":D
    iget v9, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameWidth:I

    int-to-double v10, v9

    mul-double/2addr v10, v2

    double-to-int v7, v10

    .line 83
    .local v7, "showWidth":I
    iget v9, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameHeight:I

    int-to-double v10, v9

    mul-double/2addr v10, v2

    double-to-int v6, v10

    .line 84
    .local v6, "showHeight":I
    int-to-float v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v6

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mScreenEdgeInflateScale:F

    .line 85
    int-to-float v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v9, v10, v12

    if-lez v9, :cond_2

    .line 86
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->isScreenXInflated:Z

    .line 91
    :goto_0
    iget v9, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mPixelHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->mFrameResizeToScreenScale:F

    .line 93
    return-void

    .line 88
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->isScreenXInflated:Z

    goto :goto_0
.end method

.method public StartService()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->nativeService:J

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->Jni_StartService(J)I

    move-result v0

    return v0
.end method

.method public StopService()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->nativeService:J

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->Jni_StopService(J)I

    move-result v0

    return v0
.end method

.method public UpdateGyroData(FFFJ)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "timestamp"    # J

    .prologue
    .line 197
    iget-wide v1, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->nativeService:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->Jni_UpdateGyroData(JFFFJ)I

    move-result v0

    return v0
.end method

.method public enableDetectRequest(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set enable : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    iput-boolean p1, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->enableDetectRequest:Z

    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public getEnableDetectRequest()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->enableDetectRequest:Z

    return v0
.end method

.method public isScreenXInflated()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->isScreenXInflated:Z

    return v0
.end method

.method public onCameraAddFrame(J[B)J
    .locals 7
    .param p1, "nativeAddress"    # J
    .param p3, "data"    # [B

    .prologue
    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeCameraAddFrame(J[BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public onDetectRequest([BLjava/lang/String;I)Ljava/lang/String;
    .locals 26
    .param p1, "data"    # [B
    .param p2, "targetIDs"    # Ljava/lang/String;
    .param p3, "fixImageLength"    # I

    .prologue
    .line 236
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->networkBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 237
    const-string/jumbo v21, ""

    .line 296
    :goto_0
    return-object v21

    .line 238
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->enableDetectRequest:Z

    if-nez v2, :cond_1

    .line 239
    const-string/jumbo v21, ""

    goto :goto_0

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->stopDetectRequest:Z

    if-eqz v2, :cond_2

    .line 243
    const-string/jumbo v21, ""

    goto :goto_0

    .line 246
    :cond_2
    new-instance v20, Lgxi;

    invoke-direct/range {v20 .. v20}, Lgxi;-><init>()V

    .line 248
    .local v20, "request":Lgxi;
    new-instance v23, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    .local v23, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "targetIDs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 252
    .local v15, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->networkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v15}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 254
    if-gtz p3, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->networkBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 275
    :goto_1
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    .line 276
    .local v16, "byteArray":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "byteArray: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lgxi;->l:[B

    .line 278
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    iput-object v0, v1, Lgxi;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1133
    .local v24, "t":J
    invoke-virtual/range {v20 .. v20}, Lgxi;->a()V

    .line 1135
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1137
    const-string/jumbo v2, "Accept-Encoding"

    const-string/jumbo v3, "gzip"

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v9, Lgxi;->d:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lgxi;->e:Ljava/util/Map;

    const-string/jumbo v11, "UTF-8"

    const/16 v12, 0x1388

    const/16 v13, 0x1388

    move-object/from16 v8, v20

    invoke-virtual/range {v8 .. v14}, Lgxi;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILjava/util/Map;)Ljava/lang/String;

    move-result-object v21

    .line 285
    .local v21, "res":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "use time = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v24

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 288
    .end local v21    # "res":Ljava/lang/String;
    .end local v24    # "t":J
    :catch_0
    move-exception v18

    .line 289
    .local v18, "e1":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 296
    .end local v15    # "buffer":Ljava/nio/ByteBuffer;
    .end local v16    # "byteArray":[B
    .end local v18    # "e1":Ljava/lang/Exception;
    .end local v20    # "request":Lgxi;
    .end local v23    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    const-string/jumbo v21, ""

    goto/16 :goto_0

    .line 258
    .restart local v15    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "request":Lgxi;
    .restart local v23    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->networkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 259
    .local v5, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->networkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 260
    .local v6, "height":I
    move/from16 v0, p3

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, v5

    div-float v22, v2, v3

    .line 264
    .local v22, "scale":F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v22

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",height= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->networkBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 270
    .local v19, "newbm":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "newbm width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",height= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 272
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 293
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "buffer":Ljava/nio/ByteBuffer;
    .end local v19    # "newbm":Landroid/graphics/Bitmap;
    .end local v20    # "request":Lgxi;
    .end local v22    # "scale":F
    .end local v23    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v17

    .line 294
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public native onNativeCameraAddFrame(J[BJ)J
.end method

.method public native onNativeCloseEngine(J)I
.end method

.method public native onNativeDrawEngineRender(J)I
.end method

.method public native onNativeGetCurrentAllObj(J)[Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;
.end method

.method public native onNativeGetCurrentShowObj(JI)[Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;
.end method

.method public native onNativeGetImageTexture(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public native onNativeHasTarget(JLjava/lang/String;)I
.end method

.method public native onNativeInitEngine(II)J
.end method

.method public native onNativeOnTouch(JII)Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;
.end method

.method public native onNativeRender(JII)I
.end method

.method public native onNativeSetAllUnVisible(J)I
.end method

.method public native onNativeSetGlobalParam(JIIII)I
.end method

.method public native onNativeSetRescan(J)I
.end method

.method public native onNativeSetRotate(JIZZ)I
.end method

.method public native onNativeSetTargetConfig(JLjava/lang/String;Ljava/lang/String;F)I
.end method

.method public native onNativeUpdateImage(JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;FF)I
.end method

.method public native onNativeUpdateTrackResult(JLjava/lang/String;[F[F)I
.end method

.method public native onNativeUpdateVideoTexture(JLjava/lang/String;Ljava/lang/String;IFF)I
.end method

.method public setStopDetectRequest(Z)V
    .locals 0
    .param p1, "is"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/alibaba/dt/ar/core/ArJniWrapper;->stopDetectRequest:Z

    .line 232
    return-void
.end method
