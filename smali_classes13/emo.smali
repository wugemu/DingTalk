.class public final Lemo;
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

    .line 47
    const-string/jumbo v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lemo;->a:Ljava/util/regex/Pattern;

    .line 54
    sput v1, Lemo;->b:I

    .line 55
    sput v1, Lemo;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;I)Landroid/graphics/Point;
    .locals 8
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "cameraDisplayOrientation"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 247
    .local v1, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 248
    .local v4, "sortedSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v6, Lemo$1;

    invoke-direct {v6}, Lemo$1;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 263
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 264
    .local v5, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    .line 265
    .local v3, "realWidth":I
    iget v2, v5, Landroid/hardware/Camera$Size;->height:I

    .line 266
    .local v2, "realHeight":I
    mul-int v0, v3, v2

    .line 1235
    .local v0, "pixels":I
    sget v6, Lemo;->c:I

    if-lez v6, :cond_1

    sget v6, Lemo;->c:I

    .line 267
    :goto_0
    if-gt v0, v6, :cond_0

    .line 268
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 282
    .end local v0    # "pixels":I
    :goto_1
    return-object v6

    .line 1235
    .restart local v0    # "pixels":I
    :cond_1
    const v6, 0x5dc00

    goto :goto_0

    .line 271
    .end local v0    # "pixels":I
    .end local v2    # "realHeight":I
    .end local v3    # "realWidth":I
    .end local v5    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 274
    .restart local v5    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    rem-int/lit16 v6, p1, 0xb4

    if-nez v6, :cond_3

    .line 275
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    .line 276
    .restart local v3    # "realWidth":I
    iget v2, v5, Landroid/hardware/Camera$Size;->height:I

    .line 282
    .restart local v2    # "realHeight":I
    :goto_2
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 278
    .end local v2    # "realHeight":I
    .end local v3    # "realWidth":I
    :cond_3
    iget v3, v5, Landroid/hardware/Camera$Size;->height:I

    .line 279
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
    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v18

    .line 342
    .local v18, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v18, :cond_1

    .line 343
    const-string/jumbo v26, "CameraConfiguration"

    const-string/jumbo v27, "Device returned no supported preview sizes; using default"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 345
    .local v6, "defaultSize":Landroid/hardware/Camera$Size;
    if-nez v6, :cond_0

    .line 346
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string/jumbo v27, "Parameters contained no preview size!"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 348
    :cond_0
    new-instance v7, Landroid/graphics/Point;

    iget v0, v6, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    iget v0, v6, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 458
    .end local v6    # "defaultSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v7

    .line 352
    :cond_1
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 353
    .local v25, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v26, Lemo$2;

    invoke-direct/range {v26 .. v26}, Lemo$2;-><init>()V

    invoke-static/range {v25 .. v26}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 369
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
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

    .line 371
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

    .line 372
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x20

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 374
    .end local v24    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_2
    const-string/jumbo v26, "CameraConfiguration"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "Supported preview sizes: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
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

    .line 380
    .local v22, "screenAspectRatio":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v22, v26

    if-gez v26, :cond_6

    const/16 v21, 0x1

    .line 381
    .local v21, "screenIsPortrait":Z
    :goto_2
    if-nez v21, :cond_3

    .line 382
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v22, v26, v22

    .line 389
    :cond_3
    const-string/jumbo v26, "CameraConfiguration"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "SQY:"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    const/4 v4, 0x0

    .line 393
    .local v4, "bestSize":Landroid/graphics/Point;
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 395
    .local v8, "diff":D
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 396
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_4
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 397
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    .line 398
    .restart local v24    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    .line 399
    .local v20, "realWidth":I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    .line 400
    .local v19, "realHeight":I
    mul-int v16, v20, v19

    .line 401
    .local v16, "pixels":I
    const v26, 0x25800

    move/from16 v0, v16

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    const v26, 0xfa000

    move/from16 v0, v16

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    .line 402
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 380
    .end local v4    # "bestSize":Landroid/graphics/Point;
    .end local v8    # "diff":D
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v16    # "pixels":I
    .end local v19    # "realHeight":I
    .end local v20    # "realWidth":I
    .end local v21    # "screenIsPortrait":Z
    .end local v24    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    .line 408
    .restart local v4    # "bestSize":Landroid/graphics/Point;
    .restart local v8    # "diff":D
    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .restart local v16    # "pixels":I
    .restart local v19    # "realHeight":I
    .restart local v20    # "realWidth":I
    .restart local v21    # "screenIsPortrait":Z
    .restart local v24    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_7
    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    const/4 v12, 0x1

    .line 409
    .local v12, "isCandidatePortrait":Z
    :goto_4
    if-eqz v12, :cond_9

    move/from16 v15, v19

    .line 410
    .local v15, "maybeFlippedWidth":I
    :goto_5
    if-eqz v12, :cond_a

    move/from16 v14, v20

    .line 414
    .local v14, "maybeFlippedHeight":I
    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v14, v0, :cond_b

    .line 415
    new-instance v7, Landroid/graphics/Point;

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 416
    .local v7, "exactPoint":Landroid/graphics/Point;
    const-string/jumbo v26, "CameraConfiguration"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "SQY:Found preview size exactly matching screen size: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 408
    .end local v7    # "exactPoint":Landroid/graphics/Point;
    .end local v12    # "isCandidatePortrait":Z
    .end local v14    # "maybeFlippedHeight":I
    .end local v15    # "maybeFlippedWidth":I
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .restart local v12    # "isCandidatePortrait":Z
    :cond_9
    move/from16 v15, v20

    .line 409
    goto :goto_5

    .restart local v15    # "maybeFlippedWidth":I
    :cond_a
    move/from16 v14, v19

    .line 410
    goto :goto_6

    .line 421
    .restart local v14    # "maybeFlippedHeight":I
    :cond_b
    int-to-double v0, v15

    move-wide/from16 v26, v0

    int-to-double v0, v14

    move-wide/from16 v28, v0

    div-double v2, v26, v28

    .line 422
    .local v2, "aspectRatio":D
    sub-double v26, v2, v22

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 427
    .local v10, "distortion":D
    cmpg-double v26, v10, v8

    if-gez v26, :cond_4

    .line 428
    new-instance v4, Landroid/graphics/Point;

    .end local v4    # "bestSize":Landroid/graphics/Point;
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 429
    .restart local v4    # "bestSize":Landroid/graphics/Point;
    const-string/jumbo v26, "CameraConfiguration"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "SQY: new update bestSize: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " --- diff = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " --- newDiff= "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    move-wide v8, v10

    goto/16 :goto_3

    .line 439
    .end local v2    # "aspectRatio":D
    .end local v10    # "distortion":D
    .end local v12    # "isCandidatePortrait":Z
    .end local v14    # "maybeFlippedHeight":I
    .end local v15    # "maybeFlippedWidth":I
    .end local v16    # "pixels":I
    .end local v19    # "realHeight":I
    .end local v20    # "realWidth":I
    .end local v24    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_c
    if-nez v4, :cond_e

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 442
    .local v5, "defaultPreview":Landroid/hardware/Camera$Size;
    if-nez v5, :cond_d

    .line 443
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string/jumbo v27, "Parameters contained no preview size!"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 445
    :cond_d
    new-instance v6, Landroid/graphics/Point;

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v6, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 446
    .local v6, "defaultSize":Landroid/graphics/Point;
    const-string/jumbo v26, "CameraConfiguration"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "SQY:No suitable preview sizes, using default: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    const-string/jumbo v26, "CameraConfiguration"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "SQY: default previewSize: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .line 448
    goto/16 :goto_0

    .line 455
    .end local v5    # "defaultPreview":Landroid/hardware/Camera$Size;
    .end local v6    # "defaultSize":Landroid/graphics/Point;
    :cond_e
    const-string/jumbo v26, "CameraConfiguration"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "SQY: bestSize is not null: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v4

    .line 458
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
    .line 524
    .local p0, "areas":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/hardware/Camera$Area;>;"
    if-nez p0, :cond_0

    .line 525
    const/4 v2, 0x0

    .line 531
    :goto_0
    return-object v2

    .line 527
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
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

    .line 529
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

    .line 531
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
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
    .local p1, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 492
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Requesting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " value from among: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Supported "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    if-eqz p1, :cond_1

    .line 495
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p2, v1

    .line 496
    .local v0, "desiredValue":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can set "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    .end local v0    # "desiredValue":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 495
    .restart local v0    # "desiredValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v0    # "desiredValue":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v3, "No supported values match"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
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

    .line 204
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
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 183
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Old focus areas: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lemo;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    const/16 v1, 0x190

    invoke-static {v1}, Lemo;->a(I)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Setting focus area to : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lemo;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 190
    .end local v0    # "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "Device does not support focus areas"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Z)V
    .locals 7
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 106
    const-string/jumbo v2, "flash mode"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "torch"

    aput-object v4, v3, v5

    const-string/jumbo v4, "on"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Lemo;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    const-string/jumbo v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Flash mode already set to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_0
    :goto_1
    return-void

    .line 111
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "flash mode"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "off"

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lemo;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0

    .line 120
    :cond_2
    const-string/jumbo v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Setting flash mode to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
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

    .line 71
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 73
    .local v0, "focusMode":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 74
    if-nez p3, :cond_0

    if-eqz p2, :cond_4

    .line 75
    :cond_0
    const-string/jumbo v2, "focus mode"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "auto"

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lemo;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    if-nez v0, :cond_2

    .line 88
    const-string/jumbo v2, "focus mode"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "macro"

    aput-object v4, v3, v5

    const-string/jumbo v4, "edof"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Lemo;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_2
    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    const-string/jumbo v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Focus mode already set to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_3
    :goto_1
    return-void

    .line 79
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

    invoke-static {v2, v1, v3}, Lemo;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_5
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 194
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Old metering areas: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const/16 v1, 0x190

    invoke-static {v1}, Lemo;->a(I)Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Setting metering area to : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lemo;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 201
    .end local v0    # "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "Device does not support metering areas"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/hardware/Camera$Parameters;Z)V
    .locals 10
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "lightOn"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 127
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 128
    .local v3, "minExposure":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 129
    .local v2, "maxExposure":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v4

    .line 130
    .local v4, "step":F
    if-nez v3, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    cmpl-float v6, v4, v5

    if-lez v6, :cond_3

    .line 132
    if-eqz p1, :cond_1

    .line 133
    .local v5, "targetCompensation":F
    :goto_0
    div-float v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 134
    .local v1, "compensationSteps":I
    int-to-float v6, v1

    mul-float v0, v4, v6

    .line 136
    .local v0, "actualCompensation":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 137
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 138
    const-string/jumbo v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Exposure compensation already set to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .end local v0    # "actualCompensation":F
    .end local v1    # "compensationSteps":I
    .end local v5    # "targetCompensation":F
    :goto_1
    return-void

    .line 132
    :cond_1
    const/high16 v5, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 140
    .restart local v0    # "actualCompensation":F
    .restart local v1    # "compensationSteps":I
    .restart local v5    # "targetCompensation":F
    :cond_2
    const-string/jumbo v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Setting exposure compensation to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_1

    .line 144
    .end local v0    # "actualCompensation":F
    .end local v1    # "compensationSteps":I
    .end local v5    # "targetCompensation":F
    :cond_3
    const-string/jumbo v6, "CameraConfiguration"

    const-string/jumbo v7, "Camera does not support exposure compensation"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static c(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string/jumbo v0, "CameraConfiguration"

    const-string/jumbo v1, "Video stabilization already enabled"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string/jumbo v0, "CameraConfiguration"

    const-string/jumbo v1, "Enabling video stabilization..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto :goto_0

    .line 217
    :cond_1
    const-string/jumbo v0, "CameraConfiguration"

    const-string/jumbo v1, "This device does not support video stabilization"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static d(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v5, 0x0

    .line 222
    const-string/jumbo v1, "barcode"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "Barcode scene mode already set"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string/jumbo v1, "scene mode"

    .line 227
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "barcode"

    aput-object v4, v3, v5

    .line 226
    invoke-static {v1, v2, v3}, Lemo;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "sceneMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v5, 0x0

    .line 326
    const-string/jumbo v1, "negative"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "Negative effect already set"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string/jumbo v1, "color effect"

    .line 331
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "negative"

    aput-object v4, v3, v5

    .line 330
    invoke-static {v1, v2, v3}, Lemo;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "colorMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method
