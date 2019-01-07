.class public Lcom/amap/api/maps/utils/SpatialRelationUtil;
.super Ljava/lang/Object;
.source "SpatialRelationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static calShortestDistancePoint(Ljava/util/List;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;",
            "Lcom/amap/api/maps/model/LatLng;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 25
    new-instance v4, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;-><init>(DD)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    :goto_1
    return-object v0

    .line 29
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;-><init>(DD)V

    .line 32
    invoke-static {v2, v0}, Lcom/amap/api/maps/utils/SpatialRelationUtil;->calShortestDistancePoint(Ljava/util/List;Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;)Landroid/util/Pair;

    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 35
    new-instance v1, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;

    iget-wide v6, v0, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;->x:D

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;

    iget-wide v8, v0, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;->y:D

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 37
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static calShortestDistancePoint(Ljava/util/List;Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;)Landroid/util/Pair;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;",
            ">;",
            "Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    .line 42
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 43
    const/4 v15, 0x0

    .line 74
    :cond_0
    :goto_0
    return-object v15

    .line 45
    :cond_1
    const/4 v15, 0x0

    .line 49
    const/4 v14, 0x0

    .line 50
    const-wide/16 v16, 0x0

    .line 51
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 52
    if-nez v18, :cond_2

    .line 53
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;

    .line 54
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 55
    new-instance v15, Landroid/util/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v15, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v8, v14

    .line 60
    :goto_2
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;

    .line 61
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    new-instance v15, Landroid/util/Pair;

    add-int/lit8 v2, v18, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v15, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_3
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;->x:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;->y:D

    iget-wide v6, v8, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;->x:D

    iget-wide v8, v8, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;->y:D

    iget-wide v10, v14, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;->x:D

    iget-wide v12, v14, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;->y:D

    invoke-static/range {v2 .. v13}, Lcom/amap/api/maps/utils/SpatialRelationUtil;->pointToSegDist(DDDDDD)Landroid/util/Pair;

    move-result-object v5

    .line 66
    if-nez v15, :cond_4

    .line 67
    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 68
    new-instance v4, Landroid/util/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    :goto_3
    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    move-wide/from16 v16, v2

    move-object v15, v4

    goto :goto_1

    .line 69
    :cond_4
    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v16, v2

    if-lez v2, :cond_5

    .line 70
    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 71
    new-instance v4, Landroid/util/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-wide/from16 v2, v16

    move-object v4, v15

    goto :goto_3

    :cond_6
    move-object v8, v2

    goto :goto_2
.end method

.method private static pointToSegDist(DDDDDD)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDD)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sub-double v4, p8, p4

    sub-double v6, p0, p4

    mul-double/2addr v4, v6

    sub-double v6, p10, p6

    sub-double v8, p2, p6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 94
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_0

    .line 95
    new-instance v4, Landroid/util/Pair;

    sub-double v6, p0, p4

    sub-double v8, p0, p4

    mul-double/2addr v6, v8

    sub-double v8, p2, p6

    sub-double v10, p2, p6

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-instance v6, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;

    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :goto_0
    return-object v4

    .line 97
    :cond_0
    sub-double v6, p8, p4

    sub-double v8, p8, p4

    mul-double/2addr v6, v8

    sub-double v8, p10, p6

    sub-double v10, p10, p6

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 98
    cmpl-double v8, v4, v6

    if-ltz v8, :cond_1

    .line 99
    new-instance v4, Landroid/util/Pair;

    sub-double v6, p0, p8

    sub-double v8, p0, p8

    mul-double/2addr v6, v8

    sub-double v8, p2, p10

    sub-double v10, p2, p10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-instance v6, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;

    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_1
    div-double/2addr v4, v6

    .line 103
    sub-double v6, p8, p4

    mul-double/2addr v6, v4

    add-double v6, v6, p4

    .line 104
    sub-double v8, p10, p6

    mul-double/2addr v4, v8

    add-double v8, p6, v4

    .line 105
    sub-double v4, p0, v6

    sub-double v10, p0, v6

    mul-double/2addr v4, v10

    sub-double v10, v8, p2

    sub-double v12, v8, p2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 106
    new-instance v4, Landroid/util/Pair;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-instance v10, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;

    invoke-direct {v10, v6, v7, v8, v9}, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;-><init>(DD)V

    invoke-direct {v4, v5, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
