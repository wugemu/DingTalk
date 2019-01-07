.class public final Lhbs;
.super Ljava/lang/Object;
.source "CameraConfigurationUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 33
    const-string/jumbo v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhbs;->a:Ljava/util/regex/Pattern;

    .line 40
    sput v1, Lhbs;->b:I

    .line 41
    sput v1, Lhbs;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;I)Landroid/graphics/Point;
    .locals 8
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "cameraDisplayOrientation"    # I

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 232
    .local v1, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    .local v4, "sortedSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v6, Lhbs$1;

    invoke-direct {v6}, Lhbs$1;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 249
    .local v5, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    .line 250
    .local v3, "realWidth":I
    iget v2, v5, Landroid/hardware/Camera$Size;->height:I

    .line 251
    .local v2, "realHeight":I
    mul-int v0, v3, v2

    .line 1220
    .local v0, "pixels":I
    sget v6, Lhbs;->c:I

    if-lez v6, :cond_1

    sget v6, Lhbs;->c:I

    .line 252
    :goto_0
    if-gt v0, v6, :cond_0

    .line 253
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 267
    .end local v0    # "pixels":I
    :goto_1
    return-object v6

    .line 1220
    .restart local v0    # "pixels":I
    :cond_1
    const v6, 0x5dc00

    goto :goto_0

    .line 256
    .end local v0    # "pixels":I
    .end local v2    # "realHeight":I
    .end local v3    # "realWidth":I
    .end local v5    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 259
    .restart local v5    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    rem-int/lit16 v6, p1, 0xb4

    if-nez v6, :cond_3

    .line 260
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    .line 261
    .restart local v3    # "realWidth":I
    iget v2, v5, Landroid/hardware/Camera$Size;->height:I

    .line 267
    .restart local v2    # "realHeight":I
    :goto_2
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 263
    .end local v2    # "realHeight":I
    .end local v3    # "realWidth":I
    :cond_3
    iget v3, v5, Landroid/hardware/Camera$Size;->height:I

    .line 264
    .restart local v3    # "realWidth":I
    iget v2, v5, Landroid/hardware/Camera$Size;->width:I

    .restart local v2    # "realHeight":I
    goto :goto_2
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 30
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v18

    .line 328
    .local v18, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v18, :cond_1

    .line 329
    const-string/jumbo v26, "CameraConfiguration"

    const-string/jumbo v27, "Device returned no supported preview sizes; using default"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 331
    .local v6, "defaultSize":Landroid/hardware/Camera$Size;
    if-nez v6, :cond_0

    .line 332
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string/jumbo v27, "Parameters contained no preview size!"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 334
    :cond_0
    new-instance v7, Landroid/graphics/Point;

    iget v0, v6, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    iget v0, v6, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 444
    .end local v6    # "defaultSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v7

    .line 338
    :cond_1
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    .local v25, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v26, Lhbs$2;

    invoke-direct/range {v26 .. v26}, Lhbs$2;-><init>()V

    invoke-static/range {v25 .. v26}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 354
    const-string/jumbo v26, "CameraConfiguration"

    const/16 v27, 0x4

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 355
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v17, "previewSizesString":Ljava/lang/StringBuilder;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    .line 357
    .local v24, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x78

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v28, v0

    .line 358
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x20

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 360
    .end local v24    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_2
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "Supported preview sizes: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .end local v17    # "previewSizesString":Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v22, v26, v28

    .line 366
    .local v22, "screenAspectRatio":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v22, v26

    if-gez v26, :cond_7

    const/16 v21, 0x1

    .line 367
    .local v21, "screenIsPortrait":Z
    :goto_2
    if-nez v21, :cond_4

    .line 368
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v22, v26, v22

    .line 375
    :cond_4
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "SQY:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    const/4 v4, 0x0

    .line 379
    .local v4, "bestSize":Landroid/graphics/Point;
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 381
    .local v8, "diff":D
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 382
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    .line 383
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    .line 384
    .restart local v24    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    .line 385
    .local v20, "realWidth":I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    .line 386
    .local v19, "realHeight":I
    mul-int v16, v20, v19

    .line 387
    .local v16, "pixels":I
    const v26, 0x25800

    move/from16 v0, v16

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    const v26, 0xfa000

    move/from16 v0, v16

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    .line 388
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 366
    .end local v4    # "bestSize":Landroid/graphics/Point;
    .end local v8    # "diff":D
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v16    # "pixels":I
    .end local v19    # "realHeight":I
    .end local v20    # "realWidth":I
    .end local v21    # "screenIsPortrait":Z
    .end local v24    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_7
    const/16 v21, 0x0

    goto :goto_2

    .line 394
    .restart local v4    # "bestSize":Landroid/graphics/Point;
    .restart local v8    # "diff":D
    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .restart local v16    # "pixels":I
    .restart local v19    # "realHeight":I
    .restart local v20    # "realWidth":I
    .restart local v21    # "screenIsPortrait":Z
    .restart local v24    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_8
    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    const/4 v12, 0x1

    .line 395
    .local v12, "isCandidatePortrait":Z
    :goto_4
    if-eqz v12, :cond_a

    move/from16 v15, v19

    .line 396
    .local v15, "maybeFlippedWidth":I
    :goto_5
    if-eqz v12, :cond_b

    move/from16 v14, v20

    .line 400
    .local v14, "maybeFlippedHeight":I
    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v15, v0, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v14, v0, :cond_c

    .line 401
    new-instance v7, Landroid/graphics/Point;

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 402
    .local v7, "exactPoint":Landroid/graphics/Point;
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "SQY:Found preview size exactly matching screen size: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 394
    .end local v7    # "exactPoint":Landroid/graphics/Point;
    .end local v12    # "isCandidatePortrait":Z
    .end local v14    # "maybeFlippedHeight":I
    .end local v15    # "maybeFlippedWidth":I
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .restart local v12    # "isCandidatePortrait":Z
    :cond_a
    move/from16 v15, v20

    .line 395
    goto :goto_5

    .restart local v15    # "maybeFlippedWidth":I
    :cond_b
    move/from16 v14, v19

    .line 396
    goto :goto_6

    .line 407
    .restart local v14    # "maybeFlippedHeight":I
    :cond_c
    int-to-double v0, v15

    move-wide/from16 v26, v0

    int-to-double v0, v14

    move-wide/from16 v28, v0

    div-double v2, v26, v28

    .line 408
    .local v2, "aspectRatio":D
    sub-double v26, v2, v22

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 413
    .local v10, "distortion":D
    cmpg-double v26, v10, v8

    if-gez v26, :cond_5

    .line 414
    new-instance v4, Landroid/graphics/Point;

    .end local v4    # "bestSize":Landroid/graphics/Point;
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 415
    .restart local v4    # "bestSize":Landroid/graphics/Point;
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "SQY: new update bestSize: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " --- diff = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " --- newDiff= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 416
    move-wide v8, v10

    goto/16 :goto_3

    .line 425
    .end local v2    # "aspectRatio":D
    .end local v10    # "distortion":D
    .end local v12    # "isCandidatePortrait":Z
    .end local v14    # "maybeFlippedHeight":I
    .end local v15    # "maybeFlippedWidth":I
    .end local v16    # "pixels":I
    .end local v19    # "realHeight":I
    .end local v20    # "realWidth":I
    .end local v24    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_d
    if-nez v4, :cond_f

    .line 426
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 428
    .local v5, "defaultPreview":Landroid/hardware/Camera$Size;
    if-nez v5, :cond_e

    .line 429
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string/jumbo v27, "Parameters contained no preview size!"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 431
    :cond_e
    new-instance v6, Landroid/graphics/Point;

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v6, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 432
    .local v6, "defaultSize":Landroid/graphics/Point;
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "SQY:No suitable preview sizes, using default: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "SQY: default previewSize: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v7, v6

    .line 434
    goto/16 :goto_0

    .line 441
    .end local v5    # "defaultPreview":Landroid/hardware/Camera$Size;
    .end local v6    # "defaultSize":Landroid/graphics/Point;
    :cond_f
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "SQY: bestSize is not null: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v7, v4

    .line 444
    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "areas":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/hardware/Camera$Area;>;"
    if-nez p0, :cond_0

    .line 513
    const/4 v2, 0x0

    .line 519
    :goto_0
    return-object v2

    .line 515
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 517
    .local v0, "area":Landroid/hardware/Camera$Area;
    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 519
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
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
    .line 480
    .local p1, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Requesting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value from among: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Supported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    if-eqz p1, :cond_1

    .line 483
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 484
    .local v0, "desiredValue":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .end local v0    # "desiredValue":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 483
    .restart local v0    # "desiredValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    .end local v0    # "desiredValue":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(I)Ljava/util/List;
    .locals 4
    .param p0, "areaPer1000"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x190

    const/16 v2, -0x190

    .line 189
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Old focus areas: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lhbs;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const/16 v1, 0x190

    invoke-static {v1}, Lhbs;->a(I)Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Setting focus area to : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lhbs;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 175
    .end local v0    # "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_0
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Z)V
    .locals 7
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 92
    const-string/jumbo v2, "flash mode"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "torch"

    aput-object v4, v3, v5

    const-string/jumbo v4, "on"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Lhbs;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Flash mode already set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    :goto_1
    return-void

    .line 97
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "flash mode"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "off"

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lhbs;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0

    .line 105
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Setting flash mode to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/hardware/Camera$Parameters;ZZZ)V
    .locals 8
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "autoFocus"    # Z
    .param p2, "disableContinuous"    # Z
    .param p3, "safeMode"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 59
    .local v0, "focusMode":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 60
    if-nez p3, :cond_0

    if-eqz p2, :cond_4

    .line 61
    :cond_0
    const-string/jumbo v2, "focus mode"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "auto"

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lhbs;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    if-nez v0, :cond_2

    .line 74
    const-string/jumbo v2, "focus mode"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "macro"

    aput-object v4, v3, v5

    const-string/jumbo v4, "edof"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Lhbs;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_2
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Focus mode already set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_3
    :goto_1
    return-void

    .line 65
    :cond_4
    const-string/jumbo v2, "focus mode"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "continuous-picture"

    aput-object v4, v3, v5

    const-string/jumbo v4, "continuous-video"

    aput-object v4, v3, v6

    const-string/jumbo v4, "auto"

    aput-object v4, v3, v7

    invoke-static {v2, v1, v3}, Lhbs;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Old metering areas: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    const/16 v1, 0x190

    invoke-static {v1}, Lhbs;->a(I)Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Setting metering area to : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lhbs;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 186
    .end local v0    # "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_0
    return-void
.end method

.method public static b(Landroid/hardware/Camera$Parameters;Z)V
    .locals 8
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "lightOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 113
    .local v3, "minExposure":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 114
    .local v2, "maxExposure":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v4

    .line 115
    .local v4, "step":F
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    cmpl-float v6, v4, v5

    if-lez v6, :cond_1

    .line 117
    if-eqz p1, :cond_2

    .line 118
    .local v5, "targetCompensation":F
    :goto_0
    div-float v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 119
    .local v1, "compensationSteps":I
    int-to-float v6, v1

    mul-float v0, v4, v6

    .line 121
    .local v0, "actualCompensation":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 122
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v6

    if-ne v6, v1, :cond_3

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Exposure compensation already set to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    .end local v0    # "actualCompensation":F
    .end local v1    # "compensationSteps":I
    .end local v5    # "targetCompensation":F
    :cond_1
    :goto_1
    return-void

    .line 117
    :cond_2
    const/high16 v5, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 125
    .restart local v0    # "actualCompensation":F
    .restart local v1    # "compensationSteps":I
    .restart local v5    # "targetCompensation":F
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Setting exposure compensation to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_1
.end method

.method public static c(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method public static d(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 207
    const-string/jumbo v1, "barcode"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string/jumbo v1, "scene mode"

    .line 212
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "barcode"

    aput-object v5, v3, v4

    .line 211
    invoke-static {v1, v2, v3}, Lhbs;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "sceneMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 311
    const-string/jumbo v1, "negative"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const-string/jumbo v1, "color effect"

    .line 316
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "negative"

    aput-object v5, v3, v4

    .line 315
    invoke-static {v1, v2, v3}, Lhbs;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "colorMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method
