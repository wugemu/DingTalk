.class public final Liij;
.super Ljava/lang/Object;
.source "CameraConfigurationUtils.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x1

    sput v0, Liij;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;I)Landroid/graphics/Point;
    .locals 8
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "cameraDisplayOrientation"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 223
    .local v1, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v4, "sortedSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v6, Liij$1;

    invoke-direct {v6}, Liij$1;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 239
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 240
    .local v5, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    .line 241
    .local v3, "realWidth":I
    iget v2, v5, Landroid/hardware/Camera$Size;->height:I

    .line 242
    .local v2, "realHeight":I
    mul-int v0, v3, v2

    .line 1211
    .local v0, "pixels":I
    sget v6, Liij;->a:I

    if-lez v6, :cond_1

    sget v6, Liij;->a:I

    .line 243
    :goto_0
    if-gt v0, v6, :cond_0

    .line 244
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 258
    .end local v0    # "pixels":I
    :goto_1
    return-object v6

    .line 1211
    .restart local v0    # "pixels":I
    :cond_1
    const v6, 0x1fa400

    goto :goto_0

    .line 247
    .end local v0    # "pixels":I
    .end local v2    # "realHeight":I
    .end local v3    # "realWidth":I
    .end local v5    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 250
    .restart local v5    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    rem-int/lit16 v6, p1, 0xb4

    if-nez v6, :cond_3

    .line 251
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    .line 252
    .restart local v3    # "realWidth":I
    iget v2, v5, Landroid/hardware/Camera$Size;->height:I

    .line 258
    .restart local v2    # "realHeight":I
    :goto_2
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 254
    .end local v2    # "realHeight":I
    .end local v3    # "realWidth":I
    :cond_3
    iget v3, v5, Landroid/hardware/Camera$Size;->height:I

    .line 255
    .restart local v3    # "realWidth":I
    iget v2, v5, Landroid/hardware/Camera$Size;->width:I

    .restart local v2    # "realHeight":I
    goto :goto_2
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 32
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v19

    .line 318
    .local v19, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v19, :cond_1

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 320
    .local v6, "defaultSize":Landroid/hardware/Camera$Size;
    if-nez v6, :cond_0

    .line 321
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string/jumbo v28, "Parameters contained no preview size!"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 323
    :cond_0
    const-string/jumbo v27, "CameraConfiguration"

    const-string/jumbo v28, "No supported preview sizes; using default;"

    invoke-static/range {v27 .. v28}, Lcom/alipay/mobile/bqcscanservice/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v12, Landroid/graphics/Point;

    iget v0, v6, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    iget v0, v6, Landroid/hardware/Camera$Size;->height:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 412
    .end local v6    # "defaultSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v12

    .line 327
    :cond_1
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 328
    .local v26, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v27, Liij$2;

    invoke-direct/range {v27 .. v27}, Liij$2;-><init>()V

    invoke-static/range {v26 .. v27}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v18, "previewSizesString":Ljava/lang/StringBuilder;
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    .line 345
    .local v25, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x78

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v29, v0

    .line 346
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x20

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 351
    .end local v18    # "previewSizesString":Ljava/lang/StringBuilder;
    .end local v25    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v7

    .line 352
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v27, "CameraConfiguration"

    const-string/jumbo v28, "exception happens when get the support preview sizes of the camera"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v22, v28, v30

    .line 356
    .local v22, "screenAspectRatio":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v27, v22, v28

    if-gez v27, :cond_5

    const/16 v24, 0x1

    .line 357
    .local v24, "screenIsPortrait":Z
    :goto_3
    if-nez v24, :cond_2

    .line 358
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    div-double v22, v28, v22

    .line 360
    :cond_2
    const-string/jumbo v27, "CameraConfiguration"

    const-string/jumbo v28, "width:%d, height:%d, ratio:%.3f"

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    .line 361
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    aput-object v31, v29, v30

    .line 360
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v4, 0x0

    .line 363
    .local v4, "bestSize":Landroid/graphics/Point;
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 364
    .local v8, "diff":D
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 365
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_3
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 366
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    .line 367
    .restart local v25    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    .line 368
    .local v21, "realWidth":I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    .line 369
    .local v20, "realHeight":I
    mul-int v17, v21, v20

    .line 370
    .local v17, "pixels":I
    const v27, 0xe1000

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_3

    const v27, 0x1fa400

    move/from16 v0, v17

    move/from16 v1, v27

    if-gt v0, v1, :cond_3

    .line 373
    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    const/4 v13, 0x1

    .line 374
    .local v13, "isCandidatePortrait":Z
    :goto_5
    if-eqz v13, :cond_7

    move/from16 v16, v20

    .line 375
    .local v16, "maybeFlippedWidth":I
    :goto_6
    if-eqz v13, :cond_8

    move/from16 v15, v21

    .line 378
    .local v15, "maybeFlippedHeight":I
    :goto_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v15, v0, :cond_9

    .line 379
    new-instance v12, Landroid/graphics/Point;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 380
    .local v12, "exactPoint":Landroid/graphics/Point;
    const-string/jumbo v27, "CameraConfiguration"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "Found preview size exactly matching screen size: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    .end local v4    # "bestSize":Landroid/graphics/Point;
    .end local v8    # "diff":D
    .end local v12    # "exactPoint":Landroid/graphics/Point;
    .end local v13    # "isCandidatePortrait":Z
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v15    # "maybeFlippedHeight":I
    .end local v16    # "maybeFlippedWidth":I
    .end local v17    # "pixels":I
    .end local v20    # "realHeight":I
    .end local v21    # "realWidth":I
    .end local v22    # "screenAspectRatio":D
    .end local v24    # "screenIsPortrait":Z
    .end local v25    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    .restart local v18    # "previewSizesString":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_1
    const-string/jumbo v27, "CameraConfiguration"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "Supported preview sizes: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v27, "recordCameraSupportPreviewSizes"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-class v30, Ljava/lang/String;

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    .line 350
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 349
    invoke-static/range {v27 .. v29}, Liiv;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 356
    .end local v18    # "previewSizesString":Ljava/lang/StringBuilder;
    .restart local v22    # "screenAspectRatio":D
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 373
    .restart local v4    # "bestSize":Landroid/graphics/Point;
    .restart local v8    # "diff":D
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .restart local v17    # "pixels":I
    .restart local v20    # "realHeight":I
    .restart local v21    # "realWidth":I
    .restart local v24    # "screenIsPortrait":Z
    .restart local v25    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_5

    .restart local v13    # "isCandidatePortrait":Z
    :cond_7
    move/from16 v16, v21

    .line 374
    goto/16 :goto_6

    .restart local v16    # "maybeFlippedWidth":I
    :cond_8
    move/from16 v15, v20

    .line 375
    goto/16 :goto_7

    .line 385
    .restart local v15    # "maybeFlippedHeight":I
    :cond_9
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v28, v0

    int-to-double v0, v15

    move-wide/from16 v30, v0

    div-double v2, v28, v30

    .line 386
    .local v2, "aspectRatio":D
    sub-double v28, v2, v22

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 387
    .local v10, "distortion":D
    cmpg-double v27, v10, v8

    if-gez v27, :cond_a

    .line 388
    new-instance v4, Landroid/graphics/Point;

    .end local v4    # "bestSize":Landroid/graphics/Point;
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 389
    .restart local v4    # "bestSize":Landroid/graphics/Point;
    move-wide v8, v10

    .line 391
    :cond_a
    const-string/jumbo v27, "CameraConfiguration"

    const-string/jumbo v28, "preview.x: %d, preview.y: %d, ratio: %.3f, diff: %.3f"

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    .line 392
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    aput-object v31, v29, v30

    .line 391
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 394
    .end local v2    # "aspectRatio":D
    .end local v10    # "distortion":D
    .end local v13    # "isCandidatePortrait":Z
    .end local v15    # "maybeFlippedHeight":I
    .end local v16    # "maybeFlippedWidth":I
    .end local v17    # "pixels":I
    .end local v20    # "realHeight":I
    .end local v21    # "realWidth":I
    .end local v25    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_b
    if-nez v4, :cond_d

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 397
    .local v5, "defaultPreview":Landroid/hardware/Camera$Size;
    if-nez v5, :cond_c

    .line 398
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string/jumbo v28, "Parameters contained no preview size!"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 400
    :cond_c
    new-instance v6, Landroid/graphics/Point;

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v6, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 401
    .local v6, "defaultSize":Landroid/graphics/Point;
    const-string/jumbo v27, "CameraConfiguration"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "No suitable preview sizes, using default: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string/jumbo v27, "CameraConfiguration"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "default previewSize: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string/jumbo v27, "recordCameraPreviewSize"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-class v30, Ljava/lang/Integer;

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-class v30, Ljava/lang/Integer;

    aput-object v30, v28, v29

    const/16 v29, 0x2

    const-class v30, Ljava/lang/Boolean;

    aput-object v30, v28, v29

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    .line 405
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    aput-object v31, v29, v30

    .line 403
    invoke-static/range {v27 .. v29}, Liiv;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    move-object v12, v6

    .line 406
    goto/16 :goto_0

    .line 408
    .end local v5    # "defaultPreview":Landroid/hardware/Camera$Size;
    .end local v6    # "defaultSize":Landroid/graphics/Point;
    :cond_d
    const-string/jumbo v27, "CameraConfiguration"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "bestSize is not null: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v27, "recordCameraPreviewSize"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-class v30, Ljava/lang/Integer;

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-class v30, Ljava/lang/Integer;

    aput-object v30, v28, v29

    const/16 v29, 0x2

    const-class v30, Ljava/lang/Boolean;

    aput-object v30, v28, v29

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    .line 411
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    aput-object v31, v29, v30

    .line 409
    invoke-static/range {v27 .. v29}, Liiv;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    move-object v12, v4

    .line 412
    goto/16 :goto_0
.end method

.method private static varargs a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "desiredValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Requesting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value from among: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Supported "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " values: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    if-eqz p1, :cond_1

    .line 421
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 422
    .local v0, "desiredValue":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .end local v0    # "desiredValue":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 421
    .restart local v0    # "desiredValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "desiredValue":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "No supported values match"

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[I>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "arrays":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    :cond_0
    const-string/jumbo v2, "[]"

    .line 446
    :goto_0
    return-object v2

    .line 436
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 439
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<[I>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 440
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 445
    :cond_3
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;II)V
    .locals 13
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "minFPS"    # I
    .param p2, "maxFPS"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v5

    .line 123
    .local v5, "supportedPreviewFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    const-string/jumbo v8, "CameraConfiguration"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Supported FPS ranges: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Liij;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v4, 0x0

    .line 128
    .local v4, "suitableFPSRange":[I
    const/4 v2, 0x0

    .line 129
    .local v2, "maxRange":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 130
    .local v1, "fpsRange":[I
    aget v7, v1, v11

    .line 131
    .local v7, "thisMin":I
    aget v6, v1, v12

    .line 132
    .local v6, "thisMax":I
    const/16 v9, 0x4e20

    if-lt v7, v9, :cond_2

    const/16 v9, 0x7530

    if-gt v6, v9, :cond_2

    .line 133
    div-int/lit16 v9, v7, 0x3e8

    div-int/lit16 v10, v6, 0x3e8

    mul-int v3, v9, v10

    .line 134
    .local v3, "suitRange":I
    if-le v3, v2, :cond_2

    .line 135
    move-object v4, v1

    .line 136
    move v2, v3

    goto :goto_1

    .line 140
    .end local v1    # "fpsRange":[I
    .end local v3    # "suitRange":I
    .end local v6    # "thisMax":I
    .end local v7    # "thisMin":I
    :cond_3
    if-nez v4, :cond_4

    .line 141
    const-string/jumbo v8, "CameraConfiguration"

    const-string/jumbo v9, "No suitable FPS range?"

    invoke-static {v8, v9}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_4
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 145
    .local v0, "currentFpsRange":[I
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 146
    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 147
    const-string/jumbo v8, "CameraConfiguration"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "FPS range already set to "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_5
    const-string/jumbo v8, "CameraConfiguration"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Setting FPS range to "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    aget v8, v4, v11

    aget v9, v4, v12

    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Z)V
    .locals 8
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "autoFocus"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 48
    const-string/jumbo v2, "focus mode"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "auto"

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Liij;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "focusMode":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 60
    const-string/jumbo v2, "focus mode"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "macro"

    aput-object v4, v3, v5

    const-string/jumbo v4, "edof"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Liij;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 74
    :goto_1
    return-void

    .line 52
    .end local v0    # "focusMode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "focus mode"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "continuous-picture"

    aput-object v4, v3, v5

    const-string/jumbo v4, "continuous-video"

    aput-object v4, v3, v6

    const-string/jumbo v4, "auto"

    aput-object v4, v3, v7

    invoke-static {v2, v1, v3}, Liij;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "focusMode":Ljava/lang/String;
    goto :goto_0

    .line 69
    :cond_2
    const-string/jumbo v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Focus mode already set to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_3
    const-string/jumbo v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot set Focus mode: autoFocus is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(Landroid/hardware/Camera$Parameters;Z)V
    .locals 7
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 80
    const-string/jumbo v2, "flash mode"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "torch"

    aput-object v4, v3, v5

    const-string/jumbo v4, "on"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Liij;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 91
    const-string/jumbo v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Setting flash mode to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 97
    :cond_0
    :goto_1
    return-void

    .line 85
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "flash mode"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "off"

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Liij;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0

    .line 94
    :cond_2
    const-string/jumbo v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Flash mode already set to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
