.class public Lcom/amap/api/mapcore/util/da;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/l;

.field private b:Lcom/amap/api/maps/model/Marker;

.field private c:Lcom/amap/api/maps/model/Circle;

.field private d:Lcom/amap/api/maps/model/MyLocationStyle;

.field private e:Lcom/amap/api/maps/model/LatLng;

.field private f:D

.field private g:Landroid/content/Context;

.field private h:Lcom/amap/api/mapcore/util/u;

.field private i:I

.field private j:Z

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/da;->i:I

    .line 40
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/da;->j:Z

    .line 41
    const-string/jumbo v0, "location_map_gps_locked.png"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->k:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "location_map_gps_3d.png"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->l:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/da;->m:Z

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->g:Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/l;

    .line 48
    new-instance v0, Lcom/amap/api/mapcore/util/u;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/mapcore/util/u;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    .line 49
    return-void
.end method

.method private b(F)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/l;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/l;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/ag;->c(F)Lcom/amap/api/mapcore/util/af;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/location/Location;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 204
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    .line 206
    rem-float/2addr v0, v2

    .line 207
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 208
    sub-float/2addr v0, v2

    .line 211
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 214
    :cond_1
    return-void

    .line 209
    :cond_2
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 210
    add-float/2addr v0, v2

    goto :goto_0
.end method

.method private c(F)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/l;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/l;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/ag;->d(F)Lcom/amap/api/mapcore/util/af;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/da;->c(F)V

    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->b()V

    .line 108
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/da;->m:Z

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    const-string/jumbo v1, "location_map_gps_locked.png"

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    .line 112
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/da;->b(F)V

    .line 114
    :cond_1
    return-void
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/da;->c(F)V

    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->b()V

    .line 120
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/da;->m:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    const-string/jumbo v1, "location_map_gps_locked.png"

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    .line 124
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/da;->b(F)V

    .line 127
    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 132
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->a()V

    .line 133
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/da;->m:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    const-string/jumbo v1, "location_map_gps_3d.png"

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/l;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ag;->a(F)Lcom/amap/api/mapcore/util/af;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 139
    const/high16 v0, 0x42340000    # 45.0f

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/da;->b(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    iget v0, p0, Lcom/amap/api/mapcore/util/da;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/da;->j:Z

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_0
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 223
    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/l;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/mapcore/util/af;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/l;->b(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string/jumbo v1, "MyLocationOverlay"

    const-string/jumbo v2, "locaitonFollow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 233
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    const-string/jumbo v1, "location_map_gps_locked.png"

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 234
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/da;->l()V

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/da;->m:Z

    .line 237
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/da;->l()V

    goto :goto_0
.end method

.method private k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 250
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    iput-object v3, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    .line 262
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->destroy()V

    .line 263
    iput-object v3, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    .line 264
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore/util/u;->a(Lcom/amap/api/maps/model/Marker;)V

    .line 266
    :cond_1
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string/jumbo v1, "MyLocationOverlay"

    const-string/jumbo v2, "locationIconRemove"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private l()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/l;

    new-instance v1, Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/CircleOptions;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/da;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 285
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->strokeWidth(F)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/da;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 286
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->fillColor(I)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/da;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 287
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->strokeColor(I)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 288
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->center(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->zIndex(F)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    .line 284
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    .line 289
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->e:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Circle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/da;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/Circle;->setRadius(D)V

    .line 293
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->a:Lcom/amap/api/mapcore/util/l;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/da;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 294
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorU()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/da;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorV()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/da;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 295
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 296
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    .line 293
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    .line 297
    iget v0, p0, Lcom/amap/api/mapcore/util/da;->i:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/da;->a(I)V

    .line 298
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->e:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 300
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u;->a(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string/jumbo v1, "MyLocationOverlay"

    const-string/jumbo v2, "myLocStyle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget v0, p0, Lcom/amap/api/mapcore/util/da;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->a()V

    .line 102
    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 313
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 71
    iput p1, p0, Lcom/amap/api/mapcore/util/da;->i:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/da;->j:Z

    .line 73
    iget v0, p0, Lcom/amap/api/mapcore/util/da;->i:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/da;->f()V

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/da;->g()V

    goto :goto_0

    .line 83
    :pswitch_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/da;->h()V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/location/Location;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 174
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->e:Lcom/amap/api/maps/model/LatLng;

    .line 176
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/da;->f:D

    .line 177
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    if-nez v0, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/da;->j()V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->e:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->e:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Circle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    .line 186
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/da;->f:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/da;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/Circle;->setRadius(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/da;->i()V

    .line 194
    iget v0, p0, Lcom/amap/api/mapcore/util/da;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 195
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/da;->b(Landroid/location/Location;)V

    .line 198
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/da;->j:Z

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "MyLocationOverlay"

    const-string/jumbo v2, "setCentAndRadius"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/da;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/da;->k()V

    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u;->a(Lcom/amap/api/maps/model/Marker;)V

    .line 59
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/da;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string/jumbo v1, "MyLocationOverlay"

    const-string/jumbo v2, "setMyLocationStyle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/da;->k()V

    .line 243
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->b()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->h:Lcom/amap/api/mapcore/util/u;

    .line 247
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->c:Lcom/amap/api/maps/model/Circle;

    .line 331
    iput-object v0, p0, Lcom/amap/api/mapcore/util/da;->b:Lcom/amap/api/maps/model/Marker;

    .line 332
    return-void
.end method
