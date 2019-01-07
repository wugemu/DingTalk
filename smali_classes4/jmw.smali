.class public final Ljmw;
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

    .line 48
    const-string/jumbo v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljmw;->a:Ljava/util/regex/Pattern;

    .line 55
    sput v1, Ljmw;->b:I

    .line 56
    sput v1, Ljmw;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;I)Landroid/graphics/Point;
    .locals 8
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "cameraDisplayOrientation"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 247
    .local v2, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 248
    .local v5, "sortedSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v7, Ljmw$1;

    invoke-direct {v7}, Ljmw$1;-><init>()V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 263
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 264
    .local v6, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    .line 265
    .local v4, "realWidth":I
    iget v3, v6, Landroid/hardware/Camera$Size;->height:I

    .line 266
    .local v3, "realHeight":I
    mul-int v1, v4, v3

    .line 1235
    .local v1, "pixels":I
    sget v7, Ljmw;->c:I

    if-lez v7, :cond_1

    sget v7, Ljmw;->c:I

    .line 267
    :goto_0
    if-gt v1, v7, :cond_0

    .line 268
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 282
    .end local v1    # "pixels":I
    :goto_1
    return-object v7

    .line 1235
    .restart local v1    # "pixels":I
    :cond_1
    const v7, 0x5dc00

    goto :goto_0

    .line 271
    .end local v1    # "pixels":I
    .end local v3    # "realHeight":I
    .end local v4    # "realWidth":I
    .end local v6    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_2
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 274
    .restart local v6    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    rem-int/lit16 v7, p1, 0xb4

    if-nez v7, :cond_3

    .line 275
    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    .line 276
    .restart local v4    # "realWidth":I
    iget v3, v6, Landroid/hardware/Camera$Size;->height:I

    .line 282
    .restart local v3    # "realHeight":I
    :goto_2
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 278
    .end local v3    # "realHeight":I
    .end local v4    # "realWidth":I
    :cond_3
    iget v4, v6, Landroid/hardware/Camera$Size;->height:I

    .line 279
    .restart local v4    # "realWidth":I
    iget v3, v6, Landroid/hardware/Camera$Size;->width:I

    .restart local v3    # "realHeight":I
    goto :goto_2
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 32
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v19

    .line 343
    .local v19, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v19, :cond_1

    .line 344
    const-string/jumbo v27, "CameraConfiguration"

    const-string/jumbo v28, "Device returned no supported preview sizes; using default"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 346
    .local v6, "defaultSize":Landroid/hardware/Camera$Size;
    if-nez v6, :cond_0

    .line 347
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string/jumbo v28, "Parameters contained no preview size!"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 349
    :cond_0
    new-instance v7, Landroid/graphics/Point;

    iget v0, v6, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    iget v0, v6, Landroid/hardware/Camera$Size;->height:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 459
    .end local v6    # "defaultSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v7

    .line 353
    :cond_1
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 354
    .local v26, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v27, Ljmw$2;

    invoke-direct/range {v27 .. v27}, Ljmw$2;-><init>()V

    invoke-static/range {v26 .. v27}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 369
    const-string/jumbo v27, "CameraConfiguration"

    const/16 v28, 0x4

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 370
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .local v18, "previewSizesString":Ljava/lang/StringBuilder;
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    .line 372
    .local v25, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x78

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x20

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 375
    .end local v25    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_2
    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "Supported preview sizes: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljmy;->b(Ljava/lang/String;)V

    .line 378
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v18    # "previewSizesString":Ljava/lang/StringBuilder;
    :cond_3
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

    .line 381
    .local v22, "screenAspectRatio":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v27, v22, v28

    if-gez v27, :cond_7

    const/16 v24, 0x1

    .line 382
    .local v24, "screenIsPortrait":Z
    :goto_2
    if-nez v24, :cond_4

    .line 383
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    div-double v22, v28, v22

    .line 390
    :cond_4
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

    invoke-static/range {v27 .. v27}, Ljmy;->b(Ljava/lang/String;)V

    .line 393
    const/4 v4, 0x0

    .line 394
    .local v4, "bestSize":Landroid/graphics/Point;
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 396
    .local v8, "diff":D
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 397
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_5
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_d

    .line 398
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    .line 399
    .restart local v25    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    .line 400
    .local v21, "realWidth":I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    .line 401
    .local v20, "realHeight":I
    mul-int v17, v21, v20

    .line 402
    .local v17, "pixels":I
    const v27, 0x25800

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    const v27, 0xfa000

    move/from16 v0, v17

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    .line 403
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 381
    .end local v4    # "bestSize":Landroid/graphics/Point;
    .end local v8    # "diff":D
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v17    # "pixels":I
    .end local v20    # "realHeight":I
    .end local v21    # "realWidth":I
    .end local v24    # "screenIsPortrait":Z
    .end local v25    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_7
    const/16 v24, 0x0

    goto :goto_2

    .line 409
    .restart local v4    # "bestSize":Landroid/graphics/Point;
    .restart local v8    # "diff":D
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .restart local v17    # "pixels":I
    .restart local v20    # "realHeight":I
    .restart local v21    # "realWidth":I
    .restart local v24    # "screenIsPortrait":Z
    .restart local v25    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_8
    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    const/4 v13, 0x1

    .line 410
    .local v13, "isCandidatePortrait":Z
    :goto_4
    if-eqz v13, :cond_a

    move/from16 v16, v20

    .line 411
    .local v16, "maybeFlippedWidth":I
    :goto_5
    if-eqz v13, :cond_b

    move/from16 v15, v21

    .line 415
    .local v15, "maybeFlippedHeight":I
    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v15, v0, :cond_c

    .line 416
    new-instance v7, Landroid/graphics/Point;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 417
    .local v7, "exactPoint":Landroid/graphics/Point;
    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "SQY:Found preview size exactly matching screen size: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljmy;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    .end local v7    # "exactPoint":Landroid/graphics/Point;
    .end local v13    # "isCandidatePortrait":Z
    .end local v15    # "maybeFlippedHeight":I
    .end local v16    # "maybeFlippedWidth":I
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .restart local v13    # "isCandidatePortrait":Z
    :cond_a
    move/from16 v16, v21

    .line 410
    goto :goto_5

    .restart local v16    # "maybeFlippedWidth":I
    :cond_b
    move/from16 v15, v20

    .line 411
    goto :goto_6

    .line 422
    .restart local v15    # "maybeFlippedHeight":I
    :cond_c
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v28, v0

    int-to-double v0, v15

    move-wide/from16 v30, v0

    div-double v2, v28, v30

    .line 423
    .local v2, "aspectRatio":D
    sub-double v28, v2, v22

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 428
    .local v10, "distortion":D
    cmpg-double v27, v10, v8

    if-gez v27, :cond_5

    .line 429
    new-instance v4, Landroid/graphics/Point;

    .end local v4    # "bestSize":Landroid/graphics/Point;
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 430
    .restart local v4    # "bestSize":Landroid/graphics/Point;
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

    invoke-static/range {v27 .. v27}, Ljmy;->b(Ljava/lang/String;)V

    .line 431
    move-wide v8, v10

    goto/16 :goto_3

    .line 440
    .end local v2    # "aspectRatio":D
    .end local v10    # "distortion":D
    .end local v13    # "isCandidatePortrait":Z
    .end local v15    # "maybeFlippedHeight":I
    .end local v16    # "maybeFlippedWidth":I
    .end local v17    # "pixels":I
    .end local v20    # "realHeight":I
    .end local v21    # "realWidth":I
    .end local v25    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_d
    if-nez v4, :cond_f

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 443
    .local v5, "defaultPreview":Landroid/hardware/Camera$Size;
    if-nez v5, :cond_e

    .line 444
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string/jumbo v28, "Parameters contained no preview size!"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 446
    :cond_e
    new-instance v6, Landroid/graphics/Point;

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v6, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 447
    .local v6, "defaultSize":Landroid/graphics/Point;
    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "SQY:No suitable preview sizes, using default: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljmy;->b(Ljava/lang/String;)V

    .line 448
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

    invoke-static/range {v27 .. v27}, Ljmy;->b(Ljava/lang/String;)V

    move-object v7, v6

    .line 449
    goto/16 :goto_0

    .line 456
    .end local v5    # "defaultPreview":Landroid/hardware/Camera$Size;
    .end local v6    # "defaultSize":Landroid/graphics/Point;
    :cond_f
    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "SQY: bestSize is not null: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljmy;->b(Ljava/lang/String;)V

    move-object v7, v4

    .line 459
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
    .line 527
    .local p0, "areas":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/hardware/Camera$Area;>;"
    if-nez p0, :cond_0

    .line 528
    const/4 v3, 0x0

    .line 534
    :goto_0
    return-object v3

    .line 530
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 532
    .local v0, "area":Landroid/hardware/Camera$Area;
    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 534
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static varargs a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
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
    .line 495
    .local p1, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Requesting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value from among: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljmy;->b(Ljava/lang/String;)V

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Supported "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " values: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljmy;->b(Ljava/lang/String;)V

    .line 497
    if-eqz p1, :cond_1

    .line 498
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, p2

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 499
    .local v1, "desiredValue":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Can set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljmy;->b(Ljava/lang/String;)V

    .line 506
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "desiredValue":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 498
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "desiredValue":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "desiredValue":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const-string/jumbo v4, "No supported values match"

    invoke-static {v4}, Ljmy;->b(Ljava/lang/String;)V

    .line 506
    const/4 v1, 0x0

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
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Old focus areas: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljmw;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/16 v1, 0x190

    invoke-static {v1}, Ljmw;->a(I)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Setting focus area to : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljmw;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 190
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

    .line 104
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 107
    const-string/jumbo v2, "flash mode"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "torch"

    aput-object v4, v3, v5

    const-string/jumbo v4, "on"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Ljmw;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Flash mode already set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    :goto_1
    return-void

    .line 112
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "flash mode"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "off"

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Ljmw;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0

    .line 120
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Setting flash mode to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 72
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 74
    .local v0, "focusMode":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 75
    if-nez p3, :cond_0

    if-eqz p2, :cond_4

    .line 76
    :cond_0
    const-string/jumbo v2, "focus mode"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "auto"

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Ljmw;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    if-nez v0, :cond_2

    .line 89
    const-string/jumbo v2, "focus mode"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "macro"

    aput-object v4, v3, v5

    const-string/jumbo v4, "edof"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Ljmw;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_2
    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Focus mode already set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_3
    :goto_1
    return-void

    .line 80
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

    invoke-static {v2, v1, v3}, Ljmw;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Old metering areas: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    const/16 v1, 0x190

    invoke-static {v1}, Ljmw;->a(I)Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Setting metering area to : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljmw;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 201
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

    if-eqz v2, :cond_1

    :cond_0
    cmpl-float v6, v4, v5

    if-lez v6, :cond_1

    .line 132
    if-eqz p1, :cond_2

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

    if-ne v6, v1, :cond_3

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Exposure compensation already set to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 146
    .end local v0    # "actualCompensation":F
    .end local v1    # "compensationSteps":I
    .end local v5    # "targetCompensation":F
    :cond_1
    :goto_1
    return-void

    .line 132
    :cond_2
    const/high16 v5, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 140
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

    .line 141
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_1
.end method

.method public static c(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 219
    :cond_0
    return-void
.end method

.method public static d(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 222
    const-string/jumbo v1, "barcode"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string/jumbo v1, "scene mode"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "barcode"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljmw;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

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
    .line 326
    const-string/jumbo v1, "negative"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string/jumbo v1, "color effect"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "negative"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljmw;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "colorMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method
