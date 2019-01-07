.class public final Ldu$b;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:C
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public b:[F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(C[F)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "params"    # [F

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-char p1, p0, Ldu$b;->a:C

    .line 321
    iput-object p2, p0, Ldu$b;->b:[F

    .line 322
    return-void
.end method

.method constructor <init>(Ldu$b;)V
    .locals 3
    .param p1, "n"    # Ldu$b;

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iget-char v0, p1, Ldu$b;->a:C

    iput-char v0, p0, Ldu$b;->a:C

    .line 326
    iget-object v0, p1, Ldu$b;->b:[F

    const/4 v1, 0x0

    iget-object v2, p1, Ldu$b;->b:[F

    array-length v2, v2

    invoke-static {v0, v1, v2}, Ldu;->a([FII)[F

    move-result-object v0

    iput-object v0, p0, Ldu$b;->b:[F

    .line 327
    return-void
.end method

.method private static a(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 55
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .prologue
    .line 716
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v36, v0

    .line 718
    .local v36, "numSegments":I
    move-wide/from16 v32, p15

    .line 719
    .local v32, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 720
    .local v18, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    .line 721
    .local v50, "sinTheta":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 722
    .local v14, "cosEta1":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    .line 723
    .local v46, "sinEta1":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v46

    mul-double v4, p7, v50

    mul-double/2addr v4, v14

    sub-double v24, v2, v4

    .line 724
    .local v24, "ep1x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v46

    mul-double v4, p7, v18

    mul-double/2addr v4, v14

    add-double v26, v2, v4

    .line 726
    .local v26, "ep1y":D
    move/from16 v0, v36

    int-to-double v2, v0

    div-double v12, p17, v2

    .line 727
    .local v12, "anglePerSegment":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v36

    if-ge v9, v0, :cond_0

    .line 728
    add-double v34, v32, v12

    .line 729
    .local v34, "eta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    .line 730
    .local v48, "sinEta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 731
    .local v16, "cosEta2":D
    mul-double v2, p5, v18

    mul-double v2, v2, v16

    add-double v2, v2, p1

    mul-double v4, p7, v50

    mul-double v4, v4, v48

    sub-double v20, v2, v4

    .line 732
    .local v20, "e2x":D
    mul-double v2, p5, v50

    mul-double v2, v2, v16

    add-double v2, v2, p3

    mul-double v4, p7, v18

    mul-double v4, v4, v48

    add-double v22, v2, v4

    .line 733
    .local v22, "e2y":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v48

    mul-double v4, p7, v50

    mul-double v4, v4, v16

    sub-double v28, v2, v4

    .line 734
    .local v28, "ep2x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v48

    mul-double v4, p7, v18

    mul-double v4, v4, v16

    add-double v30, v2, v4

    .line 735
    .local v30, "ep2y":D
    sub-double v2, v34, v32

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v52

    .line 736
    .local v52, "tanDiff2":D
    sub-double v2, v34, v32

    .line 737
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v6, v6, v52

    mul-double v6, v6, v52

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double v10, v2, v4

    .line 738
    .local v10, "alpha":D
    mul-double v2, v10, v24

    add-double v38, p9, v2

    .line 739
    .local v38, "q1x":D
    mul-double v2, v10, v26

    add-double v40, p11, v2

    .line 740
    .local v40, "q1y":D
    mul-double v2, v10, v28

    sub-double v42, v20, v2

    .line 741
    .local v42, "q2x":D
    mul-double v2, v10, v30

    sub-double v44, v22, v2

    .line 744
    .local v44, "q2y":D
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 746
    move-wide/from16 v0, v38

    double-to-float v3, v0

    move-wide/from16 v0, v40

    double-to-float v4, v0

    move-wide/from16 v0, v42

    double-to-float v5, v0

    move-wide/from16 v0, v44

    double-to-float v6, v0

    move-wide/from16 v0, v20

    double-to-float v7, v0

    move-wide/from16 v0, v22

    double-to-float v8, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 752
    move-wide/from16 v32, v34

    .line 753
    move-wide/from16 p9, v20

    .line 754
    move-wide/from16 p11, v22

    .line 755
    move-wide/from16 v24, v28

    .line 756
    move-wide/from16 v26, v30

    .line 727
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 758
    .end local v10    # "alpha":D
    .end local v16    # "cosEta2":D
    .end local v20    # "e2x":D
    .end local v22    # "e2y":D
    .end local v28    # "ep2x":D
    .end local v30    # "ep2y":D
    .end local v34    # "eta2":D
    .end local v38    # "q1x":D
    .end local v40    # "q1y":D
    .end local v42    # "q2x":D
    .end local v44    # "q2y":D
    .end local v48    # "sinEta2":D
    .end local v52    # "tanDiff2":D
    :cond_0
    return-void
.end method

.method private static a(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 56
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .prologue
    .line 623
    :goto_0
    move/from16 v0, p7

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 625
    .local v16, "thetaD":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 626
    .local v22, "cosTheta":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    .line 629
    .local v40, "sinTheta":D
    move/from16 v0, p1

    float-to-double v8, v0

    mul-double v8, v8, v22

    move/from16 v0, p2

    float-to-double v10, v0

    mul-double v10, v10, v40

    add-double/2addr v8, v10

    move/from16 v0, p5

    float-to-double v10, v0

    div-double v44, v8, v10

    .line 630
    .local v44, "x0p":D
    move/from16 v0, p1

    neg-float v3, v0

    float-to-double v8, v3

    mul-double v8, v8, v40

    move/from16 v0, p2

    float-to-double v10, v0

    mul-double v10, v10, v22

    add-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    div-double v50, v8, v10

    .line 631
    .local v50, "y0p":D
    move/from16 v0, p3

    float-to-double v8, v0

    mul-double v8, v8, v22

    move/from16 v0, p4

    float-to-double v10, v0

    mul-double v10, v10, v40

    add-double/2addr v8, v10

    move/from16 v0, p5

    float-to-double v10, v0

    div-double v46, v8, v10

    .line 632
    .local v46, "x1p":D
    move/from16 v0, p3

    neg-float v3, v0

    float-to-double v8, v3

    mul-double v8, v8, v40

    move/from16 v0, p4

    float-to-double v10, v0

    mul-double v10, v10, v22

    add-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    div-double v52, v8, v10

    .line 635
    .local v52, "y1p":D
    sub-double v28, v44, v46

    .line 636
    .local v28, "dx":D
    sub-double v30, v50, v52

    .line 637
    .local v30, "dy":D
    add-double v8, v44, v46

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v48, v8, v10

    .line 638
    .local v48, "xm":D
    add-double v8, v50, v52

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v54, v8, v10

    .line 640
    .local v54, "ym":D
    mul-double v8, v28, v28

    mul-double v10, v30, v30

    add-double v26, v8, v10

    .line 641
    .local v26, "dsq":D
    const-wide/16 v8, 0x0

    cmpl-double v3, v26, v8

    if-nez v3, :cond_0

    .line 642
    const-string/jumbo v3, "PathParser"

    const-string/jumbo v8, " Points are coincident"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :goto_1
    return-void

    .line 645
    :cond_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v8, v8, v26

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    sub-double v24, v8, v10

    .line 646
    .local v24, "disc":D
    const-wide/16 v8, 0x0

    cmpg-double v3, v24, v8

    if-gez v3, :cond_1

    .line 647
    const-string/jumbo v3, "PathParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Points are too far apart "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v8, v10

    double-to-float v2, v8

    .line 649
    .local v2, "adjust":F
    mul-float p5, p5, v2

    mul-float p6, p6, v2

    goto/16 :goto_0

    .line 653
    .end local v2    # "adjust":F
    :cond_1
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    .line 654
    .local v34, "s":D
    mul-double v36, v34, v28

    .line 655
    .local v36, "sdx":D
    mul-double v38, v34, v30

    .line 658
    .local v38, "sdy":D
    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_3

    .line 659
    sub-double v4, v48, v38

    .line 660
    .local v4, "cx":D
    add-double v6, v54, v36

    .line 666
    .local v6, "cy":D
    :goto_2
    sub-double v8, v50, v6

    sub-double v10, v44, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 668
    .local v18, "eta0":D
    sub-double v8, v52, v6

    sub-double v10, v46, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v32

    .line 670
    .local v32, "eta1":D
    sub-double v20, v32, v18

    .line 671
    .local v20, "sweep":D
    const-wide/16 v8, 0x0

    cmpl-double v3, v20, v8

    if-ltz v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    move/from16 v0, p9

    if-eq v0, v3, :cond_2

    .line 672
    const-wide/16 v8, 0x0

    cmpl-double v3, v20, v8

    if-lez v3, :cond_5

    .line 673
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v8

    .line 679
    :cond_2
    :goto_4
    move/from16 v0, p5

    float-to-double v8, v0

    mul-double/2addr v4, v8

    .line 680
    move/from16 v0, p6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    .line 681
    move-wide/from16 v42, v4

    .line 682
    .local v42, "tcx":D
    mul-double v8, v4, v22

    mul-double v10, v6, v40

    sub-double v4, v8, v10

    .line 683
    mul-double v8, v42, v40

    mul-double v10, v6, v22

    add-double v6, v8, v10

    .line 685
    move/from16 v0, p5

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v21}, Ldu$b;->a(Landroid/graphics/Path;DDDDDDDDD)V

    goto/16 :goto_1

    .line 662
    .end local v4    # "cx":D
    .end local v6    # "cy":D
    .end local v18    # "eta0":D
    .end local v20    # "sweep":D
    .end local v32    # "eta1":D
    .end local v42    # "tcx":D
    :cond_3
    add-double v4, v48, v38

    .line 663
    .restart local v4    # "cx":D
    sub-double v6, v54, v36

    .restart local v6    # "cy":D
    goto :goto_2

    .line 671
    .restart local v18    # "eta0":D
    .restart local v20    # "sweep":D
    .restart local v32    # "eta1":D
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 675
    :cond_5
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v8

    goto :goto_4
.end method

.method public static a([Ldu$b;Landroid/graphics/Path;)V
    .locals 24
    .param p0, "node"    # [Ldu$b;
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 336
    const/4 v3, 0x6

    new-array v13, v3, [F

    .line 337
    .local v13, "current":[F
    const/16 v15, 0x6d

    .line 338
    .local v15, "previousCommand":C
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v3, v0

    if-ge v14, v3, :cond_c

    .line 339
    aget-object v3, p0, v14

    iget-char v0, v3, Ldu$b;->a:C

    move/from16 v22, v0

    aget-object v3, p0, v14

    iget-object v0, v3, Ldu$b;->b:[F

    move-object/from16 v23, v0

    .line 1364
    const/4 v9, 0x2

    .line 1365
    const/4 v3, 0x0

    aget v8, v13, v3

    .line 1366
    const/4 v3, 0x1

    aget v7, v13, v3

    .line 1367
    const/4 v3, 0x2

    aget v5, v13, v3

    .line 1368
    const/4 v3, 0x3

    aget v3, v13, v3

    .line 1369
    const/4 v4, 0x4

    aget v6, v13, v4

    .line 1370
    const/4 v4, 0x5

    aget v4, v13, v4

    .line 1374
    sparse-switch v22, :sswitch_data_0

    move/from16 v16, v9

    .line 1417
    :goto_1
    const/4 v9, 0x0

    move/from16 v17, v9

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .end local v15    # "previousCommand":C
    :goto_2
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v17

    if-ge v0, v4, :cond_b

    .line 1418
    sparse-switch v22, :sswitch_data_1

    move/from16 v4, v18

    move/from16 v6, v19

    move v7, v5

    move/from16 v8, v20

    move/from16 v9, v21

    move v5, v3

    .line 1417
    :goto_3
    add-int v3, v17, v16

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v15, v22

    move v3, v5

    move v5, v7

    goto :goto_2

    .line 1377
    .restart local v15    # "previousCommand":C
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 1385
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v4

    move v5, v6

    move v7, v4

    move v8, v6

    move/from16 v16, v9

    .line 1386
    goto :goto_1

    .line 1393
    :sswitch_1
    const/4 v9, 0x2

    move/from16 v16, v9

    .line 1394
    goto :goto_1

    .line 1399
    :sswitch_2
    const/4 v9, 0x1

    move/from16 v16, v9

    .line 1400
    goto :goto_1

    .line 1403
    :sswitch_3
    const/4 v9, 0x6

    move/from16 v16, v9

    .line 1404
    goto :goto_1

    .line 1409
    :sswitch_4
    const/4 v9, 0x4

    move/from16 v16, v9

    .line 1410
    goto :goto_1

    .line 1413
    :sswitch_5
    const/4 v9, 0x7

    move/from16 v16, v9

    goto :goto_1

    .line 1420
    .end local v15    # "previousCommand":C
    :sswitch_6
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    add-float v6, v21, v4

    .line 1421
    add-int/lit8 v4, v17, 0x1

    aget v4, v23, v4

    add-float v4, v4, v20

    .line 1422
    if-lez v17, :cond_0

    .line 1426
    add-int/lit8 v7, v17, 0x0

    aget v7, v23, v7

    add-int/lit8 v8, v17, 0x1

    aget v8, v23, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    goto :goto_3

    .line 1428
    :cond_0
    add-int/lit8 v7, v17, 0x0

    aget v7, v23, v7

    add-int/lit8 v8, v17, 0x1

    aget v8, v23, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->rMoveTo(FF)V

    move v7, v5

    move v8, v4

    move v9, v6

    move v5, v3

    .line 1432
    goto :goto_3

    .line 1434
    :sswitch_7
    add-int/lit8 v4, v17, 0x0

    aget v6, v23, v4

    .line 1435
    add-int/lit8 v4, v17, 0x1

    aget v4, v23, v4

    .line 1436
    if-lez v17, :cond_1

    .line 1440
    add-int/lit8 v7, v17, 0x0

    aget v7, v23, v7

    add-int/lit8 v8, v17, 0x1

    aget v8, v23, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    goto/16 :goto_3

    .line 1442
    :cond_1
    add-int/lit8 v7, v17, 0x0

    aget v7, v23, v7

    add-int/lit8 v8, v17, 0x1

    aget v8, v23, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move v7, v5

    move v8, v4

    move v9, v6

    move v5, v3

    .line 1446
    goto/16 :goto_3

    .line 1448
    :sswitch_8
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    add-int/lit8 v6, v17, 0x1

    aget v6, v23, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1449
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    add-float v6, v21, v4

    .line 1450
    add-int/lit8 v4, v17, 0x1

    aget v4, v23, v4

    add-float v4, v4, v20

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    .line 1451
    goto/16 :goto_3

    .line 1453
    :sswitch_9
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    add-int/lit8 v6, v17, 0x1

    aget v6, v23, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1454
    add-int/lit8 v4, v17, 0x0

    aget v6, v23, v4

    .line 1455
    add-int/lit8 v4, v17, 0x1

    aget v4, v23, v4

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    .line 1456
    goto/16 :goto_3

    .line 1458
    :sswitch_a
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1459
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    add-float v6, v21, v4

    move/from16 v4, v18

    move v7, v5

    move/from16 v8, v20

    move v9, v6

    move v5, v3

    move/from16 v6, v19

    .line 1460
    goto/16 :goto_3

    .line 1462
    :sswitch_b
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1463
    add-int/lit8 v4, v17, 0x0

    aget v6, v23, v4

    move/from16 v4, v18

    move v7, v5

    move/from16 v8, v20

    move v9, v6

    move v5, v3

    move/from16 v6, v19

    .line 1464
    goto/16 :goto_3

    .line 1466
    :sswitch_c
    const/4 v4, 0x0

    add-int/lit8 v6, v17, 0x0

    aget v6, v23, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1467
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    add-float v4, v4, v20

    move/from16 v6, v19

    move v7, v5

    move v8, v4

    move/from16 v9, v21

    move v5, v3

    move/from16 v4, v18

    .line 1468
    goto/16 :goto_3

    .line 1470
    :sswitch_d
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1471
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    move/from16 v6, v19

    move v7, v5

    move v8, v4

    move/from16 v9, v21

    move v5, v3

    move/from16 v4, v18

    .line 1472
    goto/16 :goto_3

    .line 1474
    :sswitch_e
    add-int/lit8 v3, v17, 0x0

    aget v4, v23, v3

    add-int/lit8 v3, v17, 0x1

    aget v5, v23, v3

    add-int/lit8 v3, v17, 0x2

    aget v6, v23, v3

    add-int/lit8 v3, v17, 0x3

    aget v7, v23, v3

    add-int/lit8 v3, v17, 0x4

    aget v8, v23, v3

    add-int/lit8 v3, v17, 0x5

    aget v9, v23, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1477
    add-int/lit8 v3, v17, 0x2

    aget v3, v23, v3

    add-float v5, v21, v3

    .line 1478
    add-int/lit8 v3, v17, 0x3

    aget v3, v23, v3

    add-float v3, v3, v20

    .line 1479
    add-int/lit8 v4, v17, 0x4

    aget v4, v23, v4

    add-float v6, v21, v4

    .line 1480
    add-int/lit8 v4, v17, 0x5

    aget v4, v23, v4

    add-float v4, v4, v20

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    .line 1482
    goto/16 :goto_3

    .line 1484
    :sswitch_f
    add-int/lit8 v3, v17, 0x0

    aget v4, v23, v3

    add-int/lit8 v3, v17, 0x1

    aget v5, v23, v3

    add-int/lit8 v3, v17, 0x2

    aget v6, v23, v3

    add-int/lit8 v3, v17, 0x3

    aget v7, v23, v3

    add-int/lit8 v3, v17, 0x4

    aget v8, v23, v3

    add-int/lit8 v3, v17, 0x5

    aget v9, v23, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1486
    add-int/lit8 v3, v17, 0x4

    aget v6, v23, v3

    .line 1487
    add-int/lit8 v3, v17, 0x5

    aget v4, v23, v3

    .line 1488
    add-int/lit8 v3, v17, 0x2

    aget v5, v23, v3

    .line 1489
    add-int/lit8 v3, v17, 0x3

    aget v3, v23, v3

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    .line 1490
    goto/16 :goto_3

    .line 1492
    :sswitch_10
    const/4 v6, 0x0

    .line 1493
    const/4 v4, 0x0

    .line 1494
    const/16 v7, 0x63

    if-eq v15, v7, :cond_2

    const/16 v7, 0x73

    if-eq v15, v7, :cond_2

    const/16 v7, 0x43

    if-eq v15, v7, :cond_2

    const/16 v7, 0x53

    if-ne v15, v7, :cond_f

    .line 1496
    :cond_2
    sub-float v4, v21, v5

    .line 1497
    sub-float v5, v20, v3

    .line 1499
    :goto_4
    add-int/lit8 v3, v17, 0x0

    aget v6, v23, v3

    add-int/lit8 v3, v17, 0x1

    aget v7, v23, v3

    add-int/lit8 v3, v17, 0x2

    aget v8, v23, v3

    add-int/lit8 v3, v17, 0x3

    aget v9, v23, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1503
    add-int/lit8 v3, v17, 0x0

    aget v3, v23, v3

    add-float v5, v21, v3

    .line 1504
    add-int/lit8 v3, v17, 0x1

    aget v3, v23, v3

    add-float v3, v3, v20

    .line 1505
    add-int/lit8 v4, v17, 0x2

    aget v4, v23, v4

    add-float v6, v21, v4

    .line 1506
    add-int/lit8 v4, v17, 0x3

    aget v4, v23, v4

    add-float v4, v4, v20

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    .line 1507
    goto/16 :goto_3

    .line 1511
    :sswitch_11
    const/16 v4, 0x63

    if-eq v15, v4, :cond_3

    const/16 v4, 0x73

    if-eq v15, v4, :cond_3

    const/16 v4, 0x43

    if-eq v15, v4, :cond_3

    const/16 v4, 0x53

    if-ne v15, v4, :cond_e

    .line 1513
    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v21

    sub-float/2addr v4, v5

    .line 1514
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v20

    sub-float/2addr v5, v3

    .line 1516
    :goto_5
    add-int/lit8 v3, v17, 0x0

    aget v6, v23, v3

    add-int/lit8 v3, v17, 0x1

    aget v7, v23, v3

    add-int/lit8 v3, v17, 0x2

    aget v8, v23, v3

    add-int/lit8 v3, v17, 0x3

    aget v9, v23, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1518
    add-int/lit8 v3, v17, 0x0

    aget v5, v23, v3

    .line 1519
    add-int/lit8 v3, v17, 0x1

    aget v3, v23, v3

    .line 1520
    add-int/lit8 v4, v17, 0x2

    aget v6, v23, v4

    .line 1521
    add-int/lit8 v4, v17, 0x3

    aget v4, v23, v4

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    .line 1522
    goto/16 :goto_3

    .line 1524
    :sswitch_12
    add-int/lit8 v3, v17, 0x0

    aget v3, v23, v3

    add-int/lit8 v4, v17, 0x1

    aget v4, v23, v4

    add-int/lit8 v5, v17, 0x2

    aget v5, v23, v5

    add-int/lit8 v6, v17, 0x3

    aget v6, v23, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 1525
    add-int/lit8 v3, v17, 0x0

    aget v3, v23, v3

    add-float v5, v21, v3

    .line 1526
    add-int/lit8 v3, v17, 0x1

    aget v3, v23, v3

    add-float v3, v3, v20

    .line 1527
    add-int/lit8 v4, v17, 0x2

    aget v4, v23, v4

    add-float v6, v21, v4

    .line 1528
    add-int/lit8 v4, v17, 0x3

    aget v4, v23, v4

    add-float v4, v4, v20

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    .line 1529
    goto/16 :goto_3

    .line 1531
    :sswitch_13
    add-int/lit8 v3, v17, 0x0

    aget v3, v23, v3

    add-int/lit8 v4, v17, 0x1

    aget v4, v23, v4

    add-int/lit8 v5, v17, 0x2

    aget v5, v23, v5

    add-int/lit8 v6, v17, 0x3

    aget v6, v23, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1532
    add-int/lit8 v3, v17, 0x0

    aget v5, v23, v3

    .line 1533
    add-int/lit8 v3, v17, 0x1

    aget v3, v23, v3

    .line 1534
    add-int/lit8 v4, v17, 0x2

    aget v6, v23, v4

    .line 1535
    add-int/lit8 v4, v17, 0x3

    aget v4, v23, v4

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    .line 1536
    goto/16 :goto_3

    .line 1538
    :sswitch_14
    const/4 v6, 0x0

    .line 1539
    const/4 v4, 0x0

    .line 1540
    const/16 v7, 0x71

    if-eq v15, v7, :cond_4

    const/16 v7, 0x74

    if-eq v15, v7, :cond_4

    const/16 v7, 0x51

    if-eq v15, v7, :cond_4

    const/16 v7, 0x54

    if-ne v15, v7, :cond_d

    .line 1542
    :cond_4
    sub-float v4, v21, v5

    .line 1543
    sub-float v3, v20, v3

    .line 1545
    :goto_6
    add-int/lit8 v5, v17, 0x0

    aget v5, v23, v5

    add-int/lit8 v6, v17, 0x1

    aget v6, v23, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 1547
    add-float v5, v21, v4

    .line 1548
    add-float v3, v3, v20

    .line 1549
    add-int/lit8 v4, v17, 0x0

    aget v4, v23, v4

    add-float v6, v21, v4

    .line 1550
    add-int/lit8 v4, v17, 0x1

    aget v4, v23, v4

    add-float v4, v4, v20

    move v7, v5

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    move v5, v3

    .line 1551
    goto/16 :goto_3

    .line 1555
    :sswitch_15
    const/16 v4, 0x71

    if-eq v15, v4, :cond_5

    const/16 v4, 0x74

    if-eq v15, v4, :cond_5

    const/16 v4, 0x51

    if-eq v15, v4, :cond_5

    const/16 v4, 0x54

    if-ne v15, v4, :cond_6

    .line 1557
    :cond_5
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v21

    sub-float v21, v4, v5

    .line 1558
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v20

    sub-float v20, v4, v3

    .line 1560
    :cond_6
    add-int/lit8 v3, v17, 0x0

    aget v3, v23, v3

    add-int/lit8 v4, v17, 0x1

    aget v4, v23, v4

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1564
    add-int/lit8 v3, v17, 0x0

    aget v6, v23, v3

    .line 1565
    add-int/lit8 v3, v17, 0x1

    aget v4, v23, v3

    move/from16 v5, v20

    move/from16 v7, v21

    move v8, v4

    move v9, v6

    move/from16 v4, v18

    move/from16 v6, v19

    .line 1566
    goto/16 :goto_3

    .line 1569
    :sswitch_16
    add-int/lit8 v3, v17, 0x5

    aget v3, v23, v3

    add-float v6, v3, v21

    add-int/lit8 v3, v17, 0x6

    aget v3, v23, v3

    add-float v7, v3, v20

    add-int/lit8 v3, v17, 0x0

    aget v8, v23, v3

    add-int/lit8 v3, v17, 0x1

    aget v9, v23, v3

    add-int/lit8 v3, v17, 0x2

    aget v10, v23, v3

    add-int/lit8 v3, v17, 0x3

    aget v3, v23, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    const/4 v11, 0x1

    :goto_7
    add-int/lit8 v3, v17, 0x4

    aget v3, v23, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8

    const/4 v12, 0x1

    :goto_8
    move-object/from16 v3, p1

    move/from16 v4, v21

    move/from16 v5, v20

    invoke-static/range {v3 .. v12}, Ldu$b;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 1579
    add-int/lit8 v3, v17, 0x5

    aget v3, v23, v3

    add-float v5, v21, v3

    .line 1580
    add-int/lit8 v3, v17, 0x6

    aget v3, v23, v3

    add-float v3, v3, v20

    move/from16 v4, v18

    move/from16 v6, v19

    move v7, v5

    move v8, v3

    move v9, v5

    move v5, v3

    .line 1583
    goto/16 :goto_3

    .line 1569
    :cond_7
    const/4 v11, 0x0

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    goto :goto_8

    .line 1585
    :sswitch_17
    add-int/lit8 v3, v17, 0x5

    aget v6, v23, v3

    add-int/lit8 v3, v17, 0x6

    aget v7, v23, v3

    add-int/lit8 v3, v17, 0x0

    aget v8, v23, v3

    add-int/lit8 v3, v17, 0x1

    aget v9, v23, v3

    add-int/lit8 v3, v17, 0x2

    aget v10, v23, v3

    add-int/lit8 v3, v17, 0x3

    aget v3, v23, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    const/4 v11, 0x1

    :goto_9
    add-int/lit8 v3, v17, 0x4

    aget v3, v23, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a

    const/4 v12, 0x1

    :goto_a
    move-object/from16 v3, p1

    move/from16 v4, v21

    move/from16 v5, v20

    invoke-static/range {v3 .. v12}, Ldu$b;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 1595
    add-int/lit8 v3, v17, 0x5

    aget v5, v23, v3

    .line 1596
    add-int/lit8 v3, v17, 0x6

    aget v3, v23, v3

    move/from16 v4, v18

    move/from16 v6, v19

    move v7, v5

    move v8, v3

    move v9, v5

    move v5, v3

    .line 1598
    goto/16 :goto_3

    .line 1585
    :cond_9
    const/4 v11, 0x0

    goto :goto_9

    :cond_a
    const/4 v12, 0x0

    goto :goto_a

    .line 1603
    :cond_b
    const/4 v4, 0x0

    aput v21, v13, v4

    .line 1604
    const/4 v4, 0x1

    aput v20, v13, v4

    .line 1605
    const/4 v4, 0x2

    aput v5, v13, v4

    .line 1606
    const/4 v4, 0x3

    aput v3, v13, v4

    .line 1607
    const/4 v3, 0x4

    aput v19, v13, v3

    .line 1608
    const/4 v3, 0x5

    aput v18, v13, v3

    .line 340
    aget-object v3, p0, v14

    iget-char v15, v3, Ldu$b;->a:C

    .line 338
    .restart local v15    # "previousCommand":C
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 342
    :cond_c
    return-void

    .end local v15    # "previousCommand":C
    :cond_d
    move v3, v4

    move v4, v6

    goto/16 :goto_6

    :cond_e
    move/from16 v5, v20

    move/from16 v4, v21

    goto/16 :goto_5

    :cond_f
    move v5, v4

    move v4, v6

    goto/16 :goto_4

    .line 1374
    .line 1418
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_f
        0x48 -> :sswitch_b
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x51 -> :sswitch_13
        0x53 -> :sswitch_11
        0x54 -> :sswitch_15
        0x56 -> :sswitch_d
        0x61 -> :sswitch_16
        0x63 -> :sswitch_e
        0x68 -> :sswitch_a
        0x6c -> :sswitch_8
        0x6d -> :sswitch_6
        0x71 -> :sswitch_12
        0x73 -> :sswitch_10
        0x74 -> :sswitch_14
        0x76 -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ldu$b;Ldu$b;F)V
    .locals 4
    .param p1, "nodeFrom"    # Ldu$b;
    .param p2, "nodeTo"    # Ldu$b;
    .param p3, "fraction"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Ldu$b;->b:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 356
    iget-object v1, p0, Ldu$b;->b:[F

    iget-object v2, p1, Ldu$b;->b:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v2, v3

    iget-object v3, p2, Ldu$b;->b:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method
