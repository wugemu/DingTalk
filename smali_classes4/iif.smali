.class public final Liif;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/graphics/Point;

.field public c:Landroid/graphics/Point;

.field public d:Landroid/graphics/Point;

.field public e:I

.field public f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenResolution"    # Landroid/graphics/Point;
    .param p3, "previewResolution"    # Landroid/graphics/Point;
    .param p4, "pictureResolution"    # Landroid/graphics/Point;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x5a

    iput v0, p0, Liif;->e:I

    .line 57
    iput-object p1, p0, Liif;->a:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Liif;->b:Landroid/graphics/Point;

    .line 59
    iput-object p3, p0, Liif;->c:Landroid/graphics/Point;

    .line 60
    iput-object p4, p0, Liif;->d:Landroid/graphics/Point;

    .line 61
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 298
    const-string/jumbo v0, "CameraConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The focus mode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Liif;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Liif;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V
    .locals 11
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p3, "cameraId"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 1244
    :cond_0
    const/4 v5, 0x0

    .line 1248
    invoke-static {p2, v5}, Liij;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 109
    const/4 v2, 0x1

    .line 110
    .local v2, "autoFocus":Z
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5, v6}, Liik;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    const/4 v2, 0x0

    .line 113
    :cond_1
    invoke-static {p2, v2}, Liij;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 116
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Liif;->g:Ljava/lang/String;

    .line 1257
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1258
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "The devName is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1285
    invoke-static {p3, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1286
    const-string/jumbo v7, "CameraConfiguration"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getCameraPreviewOrientation(orientation : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1289
    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v5, v5, 0x168

    .line 1290
    rsub-int v5, v5, 0x168

    rem-int/lit16 v5, v5, 0x168

    .line 1260
    :goto_0
    iput v5, p0, Liif;->e:I

    .line 1261
    iget v5, p0, Liif;->e:I

    .line 1262
    iget v7, p0, Liif;->e:I

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_2

    iget v7, p0, Liif;->e:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_9

    .line 1263
    :cond_2
    const-string/jumbo v7, "recordPreviewOrientationNewCal"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/Integer;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    .line 1265
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v6

    .line 1263
    invoke-static {v7, v8, v9}, Liiv;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 120
    :cond_3
    :goto_1
    iget v5, p0, Liif;->e:I

    invoke-virtual {p1, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 2201
    :goto_2
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v5

    .line 2202
    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2203
    const/16 v5, 0x11

    .line 128
    :goto_3
    iput v5, p0, Liif;->f:I

    .line 129
    iget v5, p0, Liif;->f:I

    if-ltz v5, :cond_4

    .line 130
    iget v5, p0, Liif;->f:I

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 132
    :cond_4
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "SQY: before set Camera parameters , now ScreenSize is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Liif;->b:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", previewSize to set  is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Liif;->c:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Liif;->c:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Liif;->c:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 134
    iget-object v5, p0, Liif;->d:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Liif;->d:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3189
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v5

    .line 3190
    const/16 v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3191
    const/16 v5, 0x100

    .line 135
    :goto_4
    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 136
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 137
    const v5, 0x3e19999a    # 0.15f

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v4, v6

    .line 138
    .local v4, "zoom":I
    invoke-virtual {p2, v4}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 141
    .end local v4    # "zoom":I
    :cond_5
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Final camera parameters: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 143
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 144
    .local v0, "afterParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 145
    .local v1, "afterSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_7

    iget-object v5, p0, Liif;->c:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Liif;->c:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    if-eq v5, v6, :cond_7

    .line 146
    :cond_6
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Camera said it supported preview size "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Liif;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Liif;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", but after setting it, preview size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/bqcscanservice/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v5, p0, Liif;->c:Landroid/graphics/Point;

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 149
    iget-object v5, p0, Liif;->c:Landroid/graphics/Point;

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 151
    :cond_7
    return-void

    .line 1292
    .end local v0    # "afterParameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "afterSize":Landroid/hardware/Camera$Size;
    :cond_8
    :try_start_1
    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v5, v5, 0x168

    goto/16 :goto_0

    .line 1268
    :cond_9
    const-string/jumbo v7, "recordPreviewOrientationOld"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/Integer;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    .line 1270
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v6

    .line 1268
    invoke-static {v7, v8, v9}, Liiv;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1273
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1274
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "The device is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v6, "M9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v6, "Meizu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1276
    const/16 v5, 0xb4

    iput v5, p0, Liif;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    const/16 v5, 0x5a

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 123
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "method error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/bqcscanservice/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1278
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v5, 0x5a

    :try_start_2
    iput v5, p0, Liif;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 124
    :catch_1
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/NoSuchMethodError;
    const/16 v5, 0x5a

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 126
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "method error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/bqcscanservice/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2204
    .end local v3    # "e":Ljava/lang/NoSuchMethodError;
    :cond_b
    const v6, 0x32315659

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2205
    const v5, 0x32315659

    goto/16 :goto_3

    .line 2207
    :cond_c
    const/4 v5, -0x1

    goto/16 :goto_3

    .line 3192
    :cond_d
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3193
    const/4 v5, 0x4

    goto/16 :goto_4

    .line 3194
    :cond_e
    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3195
    const/16 v5, 0x11

    goto/16 :goto_4

    .line 3197
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_4
.end method
