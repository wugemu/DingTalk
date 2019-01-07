.class public Lcom/amap/api/maps/AMapUtils;
.super Ljava/lang/Object;
.source "AMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/AMapUtils$a;
    }
.end annotation


# static fields
.field public static final BUS_COMFORT:I = 0x4

.field public static final BUS_MONEY_LITTLE:I = 0x1

.field public static final BUS_NO_SUBWAY:I = 0x5

.field public static final BUS_TIME_FIRST:I = 0x0

.field public static final BUS_TRANSFER_LITTLE:I = 0x2

.field public static final BUS_WALK_LITTLE:I = 0x3

.field public static final DRIVING_AVOID_CONGESTION:I = 0x4

.field public static final DRIVING_DEFAULT:I = 0x0

.field public static final DRIVING_NO_HIGHWAY:I = 0x3

.field public static final DRIVING_NO_HIGHWAY_AVOID_CONGESTION:I = 0x6

.field public static final DRIVING_NO_HIGHWAY_AVOID_SHORT_MONEY:I = 0x5

.field public static final DRIVING_NO_HIGHWAY_SAVE_MONEY_AVOID_CONGESTION:I = 0x8

.field public static final DRIVING_SAVE_MONEY:I = 0x1

.field public static final DRIVING_SAVE_MONEY_AVOID_CONGESTION:I = 0x7

.field public static final DRIVING_SHORT_DISTANCE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    return-void
.end method

.method private static a(Lcom/amap/api/maps/model/NaviPara;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 400
    const-string/jumbo v0, "androidamap://navi?sourceApplication=%s&lat=%f&lon=%f&dev=0&style=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/amap/api/mapcore/util/fd;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 401
    invoke-virtual {p0}, Lcom/amap/api/maps/model/NaviPara;->getTargetPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 402
    invoke-virtual {p0}, Lcom/amap/api/maps/model/NaviPara;->getTargetPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NaviPara;->getNaviStyle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 400
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/amap/api/maps/model/PoiPara;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 438
    const-string/jumbo v0, "androidamap://arroundpoi?sourceApplication=%s&keywords=%s&dev=0"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 439
    invoke-static {p1}, Lcom/amap/api/mapcore/util/fd;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getKeywords()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 438
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {p1}, Lcom/amap/api/maps/AMapUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-static {p0}, Lcom/amap/api/maps/AMapUtils;->a(Lcom/amap/api/maps/model/RoutePara;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-static {p0, p1, p2}, Lcom/amap/api/maps/AMapUtils;->b(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    new-instance v1, Lcom/amap/api/maps/AMapUtils$a;

    const-string/jumbo v2, "oan"

    invoke-direct {v1, v2, p1}, Lcom/amap/api/maps/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 332
    invoke-virtual {v1}, Lcom/amap/api/maps/AMapUtils$a;->start()V

    .line 333
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    return-void

    .line 336
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u975e\u6cd5\u53c2\u6570"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_1
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 458
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.autonavi.minimap"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 465
    if-eqz v1, :cond_0

    .line 466
    const/4 v0, 0x1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 462
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lcom/amap/api/maps/model/RoutePara;)Z
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 416
    const-string/jumbo v0, "androidamap://route?sourceApplication=%s&slat=%f&slon=%f&sname=%s&dlat=%f&dlon=%f&dname=%s&dev=0&t=%d"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 417
    invoke-static {p1}, Lcom/amap/api/mapcore/util/fd;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 418
    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x3

    .line 419
    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 420
    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 416
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 421
    if-ne p2, v6, :cond_1

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getTransitRouteStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    :cond_0
    :goto_0
    return-object v0

    .line 423
    :cond_1
    if-ne p2, v7, :cond_0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getDrivingRouteStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static calculateArea(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 8

    .prologue
    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 157
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 159
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u975e\u6cd5\u5750\u6807\u503c"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Lcom/amap/api/maps/AMapException;->printStackTrace()V

    .line 163
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v0, v4

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    .line 168
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 169
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v0, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v4

    .line 170
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_2

    .line 171
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    .line 172
    :cond_2
    const-wide v4, 0x42ed0f0dce469631L    # 2.5560394669790553E14

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public static calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 21

    .prologue
    .line 107
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 109
    :cond_0
    :try_start_0
    new-instance v2, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v3, "\u975e\u6cd5\u5750\u6807\u503c"

    invoke-direct {v2, v3}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :catch_0
    move-exception v2

    .line 111
    invoke-virtual {v2}, Lcom/amap/api/maps/AMapException;->printStackTrace()V

    .line 113
    const/4 v2, 0x0

    .line 144
    :goto_0
    return v2

    .line 116
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 117
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    .line 118
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 119
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    .line 120
    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v10

    .line 121
    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v4, v10

    .line 122
    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v6, v10

    .line 123
    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v8, v10

    .line 124
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 125
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 126
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 128
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 129
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 130
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 131
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 132
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 133
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 134
    const/16 v20, 0x0

    mul-double/2addr v2, v4

    aput-wide v2, v18, v20

    .line 135
    const/4 v2, 0x1

    mul-double/2addr v4, v10

    aput-wide v4, v18, v2

    .line 136
    const/4 v2, 0x2

    aput-wide v12, v18, v2

    .line 137
    const/4 v2, 0x0

    mul-double v4, v8, v6

    aput-wide v4, v19, v2

    .line 138
    const/4 v2, 0x1

    mul-double v4, v8, v14

    aput-wide v4, v19, v2

    .line 139
    const/4 v2, 0x2

    aput-wide v16, v19, v2

    .line 140
    const/4 v2, 0x0

    aget-wide v2, v18, v2

    const/4 v4, 0x0

    aget-wide v4, v19, v4

    sub-double/2addr v2, v4

    const/4 v4, 0x0

    aget-wide v4, v18, v4

    const/4 v6, 0x0

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget-wide v4, v18, v4

    const/4 v6, 0x1

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v18, v6

    const/4 v8, 0x1

    aget-wide v8, v19, v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v4, 0x2

    aget-wide v4, v18, v4

    const/4 v6, 0x2

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v6, v18, v6

    const/4 v8, 0x2

    aget-wide v8, v19, v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 144
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double/2addr v2, v4

    double-to-float v2, v2

    goto/16 :goto_0
.end method

.method public static getLatestAMapApp(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 183
    :try_start_0
    const-string/jumbo v0, "http://wap.amap.com/"

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    new-instance v0, Lcom/amap/api/maps/AMapUtils$a;

    const-string/jumbo v2, "glaa"

    invoke-direct {v0, v2, p0}, Lcom/amap/api/maps/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 190
    invoke-virtual {v0}, Lcom/amap/api/maps/AMapUtils$a;->start()V

    .line 191
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static openAMapDrivingRoute(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/amap/api/maps/AMapUtils;->a(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)V

    .line 289
    return-void
.end method

.method public static openAMapNavi(Lcom/amap/api/maps/model/NaviPara;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Lcom/amap/api/maps/AMapUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/amap/api/maps/model/NaviPara;->getTargetPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-static {p0, p1}, Lcom/amap/api/maps/AMapUtils;->a(Lcom/amap/api/maps/model/NaviPara;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    new-instance v1, Lcom/amap/api/maps/AMapUtils$a;

    const-string/jumbo v2, "oan"

    invoke-direct {v1, v2, p1}, Lcom/amap/api/maps/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 222
    invoke-virtual {v1}, Lcom/amap/api/maps/AMapUtils$a;->start()V

    .line 223
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 226
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u975e\u6cd5\u53c2\u6570"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openAMapPoiNearbySearch(Lcom/amap/api/maps/model/PoiPara;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p1}, Lcom/amap/api/maps/AMapUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getKeywords()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-static {p0, p1}, Lcom/amap/api/maps/AMapUtils;->a(Lcom/amap/api/maps/model/PoiPara;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    new-instance v1, Lcom/amap/api/maps/AMapUtils$a;

    const-string/jumbo v2, "oan"

    invoke-direct {v1, v2, p1}, Lcom/amap/api/maps/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 262
    invoke-virtual {v1}, Lcom/amap/api/maps/AMapUtils$a;->start()V

    .line 263
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    return-void

    .line 266
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u975e\u6cd5\u53c2\u6570"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openAMapTransitRoute(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/amap/api/maps/AMapUtils;->a(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)V

    .line 302
    return-void
.end method

.method public static openAMapWalkingRoute(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/amap/api/maps/AMapUtils;->a(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)V

    .line 315
    return-void
.end method
