.class final Laot$22;
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
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 18
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
    .line 559
    .local p1, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 560
    .local v8, "t":D
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 561
    .local v2, "b":D
    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 562
    .local v4, "c":D
    const/4 v10, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 563
    .local v6, "d":D
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 566
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v6, v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v8, v10

    if-gez v10, :cond_0

    .line 567
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v4, v10

    mul-double v12, v8, v8

    const-wide v14, 0x400cc25fe974a340L    # 3.5949095

    mul-double/2addr v14, v8

    const-wide v16, 0x4004c25fe974a340L    # 2.5949095

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 569
    :goto_0
    return-object v10

    :cond_0
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v4, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    sub-double/2addr v8, v12

    mul-double v12, v8, v8

    const-wide v14, 0x400cc25fe974a340L    # 3.5949095

    mul-double/2addr v14, v8

    const-wide v16, 0x4004c25fe974a340L    # 2.5949095

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_0
.end method
