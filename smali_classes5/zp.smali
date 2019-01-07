.class public final Lzp;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzp$b;,
        Lzp$a;,
        Lzp$c;
    }
.end annotation


# instance fields
.field public a:Landroid/media/MediaRecorder;

.field public b:Landroid/hardware/Camera;

.field public c:I

.field public d:Landroid/view/SurfaceHolder$Callback;

.field public e:Landroid/content/Context;

.field public f:Landroid/view/SurfaceView;

.field public g:Lzp$a;

.field public h:Landroid/net/Uri;

.field public i:Ljava/util/Timer;

.field j:I

.field public k:Ljava/util/TimerTask;

.field public l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Lzp;->c:I

    .line 73
    iput v0, p0, Lzp;->j:I

    .line 76
    const/4 v0, 0x6

    iput v0, p0, Lzp;->l:I

    .line 559
    return-void
.end method

.method private static a(FFFF)F
    .locals 3
    .param p0, "f"    # F
    .param p1, "sourceLength"    # F
    .param p2, "targetLength"    # F
    .param p3, "borderLen"    # F

    .prologue
    .line 554
    div-float v0, p0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    const/high16 v1, 0x44fa0000    # 2000.0f

    mul-float p0, v0, v1

    .line 555
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    const/high16 v1, 0x44610000    # 900.0f

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    const/4 v5, 0x0

    .line 447
    :goto_0
    return v5

    .line 412
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 413
    .local v1, "cameraNum":I
    const/4 v0, 0x0

    .line 414
    .local v0, "cameraId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 415
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 416
    .local v4, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v3, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 417
    iget v7, p0, Lzp;->c:I

    iget v8, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v8, :cond_2

    .line 418
    move v0, v3

    .line 423
    .end local v4    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 424
    .restart local v4    # "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 425
    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 426
    .local v6, "rotation":I
    const/4 v2, 0x0

    .line 427
    .local v2, "degrees":I
    packed-switch v6, :pswitch_data_0

    .line 442
    :goto_2
    iget v7, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 445
    iget v7, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v7, v2

    add-int/lit16 v7, v7, 0x168

    rem-int/lit16 v5, v7, 0x168

    .line 447
    .local v5, "result":I
    goto :goto_0

    .line 414
    .end local v2    # "degrees":I
    .end local v5    # "result":I
    .end local v6    # "rotation":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 429
    .restart local v2    # "degrees":I
    .restart local v6    # "rotation":I
    :pswitch_0
    const/4 v2, 0x0

    .line 430
    goto :goto_2

    .line 432
    :pswitch_1
    const/16 v2, 0x5a

    .line 433
    goto :goto_2

    .line 435
    :pswitch_2
    const/16 v2, 0xb4

    .line 436
    goto :goto_2

    .line 438
    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_2

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(FF)Landroid/graphics/Rect;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/high16 v3, 0x44fa0000    # 2000.0f

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v5, 0x42c80000    # 100.0f

    .line 544
    iget-object v1, p0, Lzp;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1, v3, v2}, Lzp;->a(FFFF)F

    move-result p1

    .line 545
    iget-object v1, p0, Lzp;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2, v1, v3, v2}, Lzp;->a(FFFF)F

    move-result p2

    .line 547
    move v0, p1

    .line 548
    .local v0, "f":F
    move p1, p2

    .line 549
    neg-float p2, v0

    .line 550
    new-instance v1, Landroid/graphics/Rect;

    sub-float v2, p1, v5

    float-to-int v2, v2

    sub-float v3, p2, v5

    float-to-int v3, v3

    add-float v4, p1, v5

    float-to-int v4, v4

    add-float/2addr v5, p2

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Lzp;->k:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 1277
    const/4 v1, 0x0

    iput v1, p0, Lzp;->j:I

    .line 1278
    iget-object v1, p0, Lzp;->g:Lzp$a;

    if-eqz v1, :cond_0

    .line 1279
    iget-object v1, p0, Lzp;->g:Lzp$a;

    iget v2, p0, Lzp;->j:I

    invoke-interface {v1, v2}, Lzp$a;->a(I)V

    .line 212
    :cond_0
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 215
    :cond_1
    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 216
    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 217
    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    .line 220
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    .line 221
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    .line 222
    invoke-virtual {p0}, Lzp;->b()V

    .line 223
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    .line 224
    iget-object v1, p0, Lzp;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lzp;->a(Landroid/view/SurfaceHolder;)V

    .line 225
    invoke-virtual {p0}, Lzp;->c()V

    .line 226
    iget-object v1, p0, Lzp;->g:Lzp$a;

    if-eqz v1, :cond_3

    .line 227
    iget-object v1, p0, Lzp;->g:Lzp$a;

    const/4 v2, 0x1

    iget-object v3, p0, Lzp;->h:Landroid/net/Uri;

    invoke-interface {v1, v2, v3}, Lzp$a;->a(ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_3
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CameraHelper"

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 147
    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_0
    :try_start_0
    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 152
    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 153
    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    const-string/jumbo v1, "CameraHelper"

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 288
    iget-object v0, p0, Lzp;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzp;->a:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 292
    iget-object v0, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 293
    iget-object v0, p0, Lzp;->a:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 294
    iget-object v0, p0, Lzp;->a:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 295
    iget v0, p0, Lzp;->l:I

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 1328
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1329
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1330
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1331
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1332
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 1333
    iget v1, v0, Landroid/media/CamcorderProfile;->quality:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_2

    iget v1, v0, Landroid/media/CamcorderProfile;->quality:I

    const/16 v2, 0x3ef

    if-le v1, v2, :cond_3

    .line 1338
    :cond_2
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1339
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1340
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1341
    iget-object v1, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 296
    :cond_3
    iget v0, p0, Lzp;->c:I

    if-nez v0, :cond_6

    .line 297
    iget-object v0, p0, Lzp;->a:Landroid/media/MediaRecorder;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 301
    :goto_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 303
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 306
    :cond_4
    new-instance v8, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v8, "file1":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 308
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 310
    :cond_5
    iget-object v0, p0, Lzp;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 311
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 312
    .local v10, "uri":Landroid/net/Uri;
    iput-object v10, p0, Lzp;->h:Landroid/net/Uri;

    .line 313
    iget-object v0, p0, Lzp;->a:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lzp;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 316
    :try_start_0
    iget-object v0, p0, Lzp;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 317
    iget-object v0, p0, Lzp;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 318
    new-instance v0, Lzp$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzp$c;-><init>(Lzp;B)V

    iput-object v0, p0, Lzp;->k:Ljava/util/TimerTask;

    .line 319
    iget-object v0, p0, Lzp;->i:Ljava/util/Timer;

    iget-object v1, p0, Lzp;->k:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 320
    :catch_0
    move-exception v6

    .line 321
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "CameraHelper"

    invoke-static {v0, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 299
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "file1":Ljava/io/File;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_6
    iget-object v0, p0, Lzp;->a:Landroid/media/MediaRecorder;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto/16 :goto_1

    .line 322
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "file1":Ljava/io/File;
    .restart local v10    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 323
    .local v9, "tr":Ljava/lang/Throwable;
    const-string/jumbo v0, "CameraHelper"

    invoke-static {v0, v9}, Lafg;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/16 v8, 0x7d0

    .line 350
    iget-object v7, p0, Lzp;->b:Landroid/hardware/Camera;

    if-nez v7, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    :try_start_0
    iget-object v7, p0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 375
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 376
    .local v3, "photoSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v3, :cond_0

    .line 377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 378
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 379
    .local v4, "size":Landroid/hardware/Camera$Size;
    if-eqz v4, :cond_2

    .line 380
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    .line 381
    .local v6, "width1":I
    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    .line 382
    .local v0, "height1":I
    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_2

    if-gt v6, v8, :cond_2

    .line 383
    const/16 v7, 0x258

    if-lt v0, v7, :cond_2

    if-gt v0, v8, :cond_2

    .line 384
    iput v6, p0, Lzp;->n:I

    .line 385
    iput v0, p0, Lzp;->m:I

    goto :goto_0

    .line 356
    .end local v0    # "height1":I
    .end local v1    # "i":I
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "photoSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    .end local v6    # "width1":I
    :catch_0
    move-exception v5

    .line 357
    .local v5, "tr":Ljava/lang/Exception;
    const-string/jumbo v7, "CameraHelper"

    invoke-static {v7, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 377
    .end local v5    # "tr":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v3    # "photoSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 477
    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 481
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget v1, p0, Lzp;->n:I

    if-lez v1, :cond_1

    iget v1, p0, Lzp;->m:I

    if-lez v1, :cond_1

    .line 482
    iget v1, p0, Lzp;->n:I

    iget v2, p0, Lzp;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 484
    :cond_1
    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
