.class public Lcom/amap/api/maps/utils/CameraUpdateUtil;
.super Ljava/lang/Object;
.source "CameraUpdateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateCamera(Lcom/amap/api/maps/AMap;Lcom/amap/api/maps/model/LatLngBounds;Lcom/amap/api/maps/model/LatLng;)V
    .locals 2

    .prologue
    .line 37
    invoke-static {p1, p2}, Lcom/amap/api/maps/utils/CameraUpdateUtil;->getNewBoundsByCenterPoint(Lcom/amap/api/maps/model/LatLngBounds;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 38
    return-void
.end method

.method public static getNewBoundsByCenterPoint(Lcom/amap/api/maps/model/LatLngBounds;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 22

    .prologue
    .line 48
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    .line 49
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    .line 51
    iget-wide v2, v11, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v12, v2, v4

    .line 52
    iget-wide v2, v10, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v14, v2, v4

    .line 54
    iget-wide v2, v11, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v16, v2, v4

    .line 55
    iget-wide v2, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v18, v2, v4

    .line 57
    const-wide/16 v8, 0x0

    .line 58
    const-wide/16 v6, 0x0

    .line 59
    const-wide/16 v4, 0x0

    .line 60
    const-wide/16 v2, 0x0

    .line 62
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    .line 63
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    iget-wide v8, v11, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v8, v6, v8

    .line 64
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 70
    :goto_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    .line 71
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v12

    iget-wide v10, v11, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v6, v10

    .line 72
    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-nez v10, :cond_4

    .line 73
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v20, v2

    move-wide v2, v6

    move-wide v6, v4

    move-wide/from16 v4, v20

    .line 81
    :goto_1
    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-eqz v10, :cond_3

    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-eqz v10, :cond_3

    .line 82
    new-instance v10, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v10, v8, v9, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/amap/api/maps/model/LatLngBounds;->including(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p0

    move-object/from16 v2, p0

    .line 84
    :goto_2
    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v3, v4, v8

    if-eqz v3, :cond_0

    .line 85
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLngBounds;->including(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v2

    .line 87
    :cond_0
    return-object v2

    .line 66
    :cond_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    iget-wide v4, v10, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v4, v2, v4

    .line 67
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    goto :goto_0

    .line 75
    :cond_2
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v12

    iget-wide v10, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v10

    .line 76
    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-nez v10, :cond_4

    .line 77
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v20, v2

    move-wide v2, v6

    move-wide v6, v4

    move-wide/from16 v4, v20

    goto :goto_1

    :cond_3
    move-object/from16 v2, p0

    goto :goto_2

    :cond_4
    move-wide/from16 v20, v2

    move-wide v2, v6

    move-wide v6, v4

    move-wide/from16 v4, v20

    goto :goto_1
.end method

.method public static moveCamera(Lcom/amap/api/maps/AMap;Lcom/amap/api/maps/model/LatLngBounds;Lcom/amap/api/maps/model/LatLng;)V
    .locals 2

    .prologue
    .line 27
    invoke-static {p1, p2}, Lcom/amap/api/maps/utils/CameraUpdateUtil;->getNewBoundsByCenterPoint(Lcom/amap/api/maps/model/LatLngBounds;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 28
    return-void
.end method
