.class final Laot$17;
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
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 20
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 444
    .local v12, "t":D
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 445
    .local v2, "b":D
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 446
    .local v4, "c":D
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 447
    .local v6, "d":D
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    .line 452
    const-wide/16 v14, 0x0

    cmpl-double v14, v12, v14

    if-nez v14, :cond_0

    .line 453
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 465
    :goto_0
    return-object v14

    .line 455
    :cond_0
    div-double/2addr v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v12, v14

    if-nez v14, :cond_1

    .line 456
    add-double v14, v2, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto :goto_0

    .line 458
    :cond_1
    const-wide v14, 0x3fd3333333333333L    # 0.3

    mul-double v8, v6, v14

    .line 459
    .local v8, "p":D
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v4, v14

    if-gez v14, :cond_2

    .line 461
    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double v10, v8, v14

    .line 465
    .local v10, "s":D
    :goto_1
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

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

    neg-double v14, v14

    add-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto :goto_0

    .line 463
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
.end method
