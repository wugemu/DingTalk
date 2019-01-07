.class public Lcom/amap/api/mapcore/util/ai;
.super Ljava/lang/Object;
.source "OffsetUtil.java"


# static fields
.field static a:D

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/util/ai;->b:Z

    .line 120
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sput-wide v0, Lcom/amap/api/mapcore/util/ai;->a:D

    return-void
.end method

.method private static a(D)D
    .locals 6

    .prologue
    .line 197
    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v0, p0

    sget-wide v2, Lcom/amap/api/mapcore/util/ai;->a:D

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DD)D
    .locals 6

    .prologue
    const-wide v4, 0x40f86a0000000000L    # 100000.0

    .line 133
    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(DI)D
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 7

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    .line 45
    :cond_0
    const-string/jumbo v0, "libwgs2gcj.so"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    sget-boolean v1, Lcom/amap/api/mapcore/util/ai;->b:Z

    if-nez v1, :cond_1

    .line 52
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/util/ai;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_1
    :goto_1
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    sget-boolean v1, Lcom/amap/api/mapcore/util/ai;->b:Z

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ai;->a(Lcom/autonavi/amap/mapcore/DPoint;Z)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 7

    .prologue
    .line 180
    if-eqz p0, :cond_0

    .line 181
    :try_start_0
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ai;->a(Lcom/autonavi/amap/mapcore/DPoint;I)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move-object v1, p0

    .line 187
    goto :goto_0
.end method

.method private static a(DDDD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 8

    .prologue
    .line 270
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 271
    sub-double v2, p0, p4

    .line 272
    sub-double v4, p2, p6

    .line 273
    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/ai;->d(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    .line 274
    add-double/2addr v2, p0

    iget-wide v6, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double/2addr v2, v6

    const/16 v6, 0x8

    invoke-static {v2, v3, v6}, Lcom/amap/api/mapcore/util/ai;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 275
    add-double v2, p2, v4

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double/2addr v2, v4

    const/16 v1, 0x8

    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore/util/ai;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    .line 276
    return-object v0
.end method

.method private static a(Lcom/autonavi/amap/mapcore/DPoint;I)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 9

    .prologue
    .line 249
    const-wide v4, 0x3f7a37ffff31d771L    # 0.006401062

    .line 250
    const-wide v6, 0x3f78c0000225c17dL    # 0.0060424805

    .line 251
    const/4 v1, 0x0

    .line 252
    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    :goto_0
    if-ge v8, p1, :cond_0

    .line 253
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/ai;->a(DDDD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    .line 254
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double v4, v2, v4

    .line 255
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double v6, v2, v6

    .line 252
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v0, v1

    goto :goto_0

    .line 257
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/autonavi/amap/mapcore/DPoint;Z)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 6

    .prologue
    .line 91
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [D

    .line 92
    if-eqz p1, :cond_1

    .line 93
    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    aput-wide v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :try_start_1
    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/CoordUtil;->convertToGcj([D[D)I

    move-result v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/hs;->a(DD)[D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 113
    :goto_0
    :try_start_2
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    move-object p0, v0

    .line 117
    :goto_1
    return-object p0

    .line 101
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/hs;->a(DD)[D

    move-result-object v0

    move-object v1, v0

    .line 108
    goto :goto_0

    .line 111
    :cond_1
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/hs;->a(DD)[D
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static b(D)D
    .locals 6

    .prologue
    .line 207
    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v0, p0

    sget-wide v2, Lcom/amap/api/mapcore/util/ai;->a:D

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(DD)D
    .locals 6

    .prologue
    const-wide v4, 0x40f86a0000000000L    # 100000.0

    .line 138
    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 7

    .prologue
    .line 124
    :try_start_0
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ai;->c(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/ai;->a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 129
    :goto_0
    return-object p1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static c(DD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 10

    .prologue
    .line 150
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, p0

    double-to-long v0, v0

    const-wide/32 v2, 0x2255100

    rem-long/2addr v0, v2

    long-to-double v0, v0

    .line 151
    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, p2

    double-to-long v2, v2

    const-wide/32 v4, 0x2255100

    rem-long/2addr v2, v4

    long-to-double v2, v2

    .line 152
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ai;->a(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v0

    double-to-int v4, v4

    .line 153
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ai;->b(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v2

    double-to-int v5, v6

    .line 154
    int-to-double v6, v4

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Lcom/amap/api/mapcore/util/ai;->a(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int v1, v0

    .line 155
    int-to-double v6, v1

    int-to-double v4, v5

    invoke-static {v6, v7, v4, v5}, Lcom/amap/api/mapcore/util/ai;->b(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-double v2, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 156
    int-to-double v2, v1

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    .line 157
    int-to-double v0, v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v4

    .line 158
    new-instance v4, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    .line 159
    return-object v4

    .line 154
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d(DD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 12

    .prologue
    const/16 v1, 0x8

    .line 218
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 219
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/ai;->b(D)D

    move-result-wide v2

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 220
    invoke-static {p2, p3}, Lcom/amap/api/mapcore/util/ai;->a(D)D

    move-result-wide v4

    mul-double v6, p0, p0

    mul-double v8, p2, p2

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v2, v4

    .line 221
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/ai;->b(D)D

    move-result-wide v4

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 222
    invoke-static {p2, p3}, Lcom/amap/api/mapcore/util/ai;->a(D)D

    move-result-wide v6

    mul-double v8, p0, p0

    mul-double v10, p2, p2

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide v6, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v4, v6

    .line 223
    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore/util/ai;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 224
    invoke-static {v4, v5, v1}, Lcom/amap/api/mapcore/util/ai;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    .line 225
    return-object v0
.end method
