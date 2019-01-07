.class final Laot$19;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Laol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 500
    .local v12, "t":D
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 501
    .local v2, "b":D
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 502
    .local v4, "c":D
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 503
    .local v6, "d":D
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    .line 508
    const-wide/16 v14, 0x0

    cmpl-double v14, v12, v14

    if-nez v14, :cond_0

    .line 509
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 524
    :goto_0
    return-object v14

    .line 511
    :cond_0
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v6, v14

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v14, v12, v14

    if-nez v14, :cond_1

    .line 512
    add-double v14, v2, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto :goto_0

    .line 514
    :cond_1
    const-wide v14, 0x3fdcccccccccccccL    # 0.44999999999999996

    mul-double v8, v6, v14

    .line 515
    .local v8, "p":D
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v4, v14

    if-gez v14, :cond_2

    .line 517
    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double v10, v8, v14

    .line 521
    .local v10, "s":D
    :goto_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v12, v14

    if-gez v14, :cond_3

    .line 522
    const-wide/high16 v14, -0x4020000000000000L    # -0.5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v12, v12, v20

    mul-double v18, v18, v12

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v4

    mul-double v18, v12, v6

    sub-double v18, v18, v10

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v18, v18, v20

    div-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto :goto_0

    .line 519
    .end local v10    # "s":D
    :cond_2
    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    div-double v14, v8, v14

    div-double v16, v4, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    mul-double v10, v14, v16

    .restart local v10    # "s":D
    goto :goto_1

    .line 524
    :cond_3
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v12, v12, v18

    mul-double v16, v16, v12

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v14, v4

    mul-double v16, v12, v6

    sub-double v16, v16, v10

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v16, v16, v18

    div-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    add-double/2addr v14, v4

    add-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto/16 :goto_0
.end method
