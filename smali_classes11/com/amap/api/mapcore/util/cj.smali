.class public Lcom/amap/api/mapcore/util/cj;
.super Ljava/lang/Object;
.source "ArcDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cn;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field private e:Lcom/amap/api/maps/model/LatLng;

.field private f:Lcom/amap/api/maps/model/LatLng;

.field private g:Lcom/amap/api/maps/model/LatLng;

.field private h:F

.field private i:I

.field private j:F

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcom/amap/api/mapcore/util/l;

.field private n:[F

.field private o:I

.field private p:Z

.field private q:D

.field private r:D

.field private s:D


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/cj;->h:F

    .line 23
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/mapcore/util/cj;->i:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/cj;->j:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cj;->k:Z

    .line 29
    iput v1, p0, Lcom/amap/api/mapcore/util/cj;->o:I

    .line 30
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cj;->p:Z

    .line 31
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/cj;->q:D

    .line 32
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/cj;->r:D

    .line 33
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/cj;->s:D

    .line 40
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cj;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cj;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string/jumbo v1, "ArcDelegateImp"

    const-string/jumbo v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(DDDD)D
    .locals 7

    .prologue
    .line 257
    sub-double v0, p3, p7

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/cj;->q:D

    div-double/2addr v0, v2

    .line 258
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    .line 259
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    .line 260
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    .line 261
    cmpg-double v2, p5, p1

    if-gez v2, :cond_1

    .line 262
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    .line 272
    :cond_1
    :goto_0
    return-wide v0

    .line 265
    :cond_2
    cmpg-double v2, p5, p1

    if-gez v2, :cond_3

    .line 266
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    sub-double v0, v2, v0

    goto :goto_0

    .line 268
    :cond_3
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;DDD)Lcom/autonavi/amap/mapcore/FPoint;
    .locals 6

    .prologue
    .line 182
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/cj;->q:D

    mul-double/2addr v0, v2

    .line 183
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/cj;->q:D

    mul-double/2addr v2, v4

    .line 185
    add-double/2addr v0, p4

    double-to-int v0, v0

    .line 186
    add-double/2addr v2, p6

    double-to-int v1, v2

    .line 187
    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 188
    invoke-virtual {p1, v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 190
    return-object v2
.end method

.method private d()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cj;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()Lcom/autonavi/amap/mapcore/DPoint;
    .locals 24

    .prologue
    .line 211
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cj;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cj;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v3 .. v8}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 213
    new-instance v14, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v14}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 214
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v9 .. v14}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 216
    new-instance v20, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct/range {v20 .. v20}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    invoke-interface/range {v15 .. v20}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 218
    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v12, v2

    .line 219
    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v2

    .line 220
    iget v2, v14, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    .line 221
    iget v2, v14, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v14, v2

    .line 222
    move-object/from16 v0, v20

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v0, v2

    move-wide/from16 v18, v0

    .line 223
    move-object/from16 v0, v20

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v0, v2

    move-wide/from16 v20, v0

    .line 226
    sub-double v2, v20, v10

    mul-double v4, v14, v14

    mul-double v6, v10, v10

    sub-double/2addr v4, v6

    mul-double v6, v16, v16

    add-double/2addr v4, v6

    mul-double v6, v12, v12

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double v4, v14, v10

    mul-double v6, v10, v10

    mul-double v8, v20, v20

    sub-double/2addr v6, v8

    mul-double v8, v12, v12

    add-double/2addr v6, v8

    mul-double v8, v18, v18

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v6, v16, v12

    mul-double/2addr v4, v6

    sub-double v6, v20, v10

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v8, v18, v12

    mul-double/2addr v6, v8

    sub-double v8, v14, v10

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    div-double v4, v2, v4

    .line 229
    sub-double v2, v18, v12

    mul-double v6, v16, v16

    mul-double v8, v12, v12

    sub-double/2addr v6, v8

    mul-double v8, v14, v14

    add-double/2addr v6, v8

    mul-double v8, v10, v10

    sub-double/2addr v6, v8

    mul-double/2addr v2, v6

    sub-double v6, v16, v12

    mul-double v8, v12, v12

    mul-double v22, v18, v18

    sub-double v8, v8, v22

    mul-double v22, v10, v10

    add-double v8, v8, v22

    mul-double v22, v20, v20

    sub-double v8, v8, v22

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v8, v14, v10

    mul-double/2addr v6, v8

    sub-double v8, v18, v12

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v22, v20, v10

    mul-double v8, v8, v22

    sub-double v22, v16, v12

    mul-double v8, v8, v22

    sub-double/2addr v6, v8

    div-double v6, v2, v6

    .line 234
    sub-double v2, v12, v4

    sub-double v8, v12, v4

    mul-double/2addr v2, v8

    sub-double v8, v10, v6

    sub-double v22, v10, v6

    mul-double v8, v8, v22

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->q:D

    move-object/from16 v3, p0

    move-wide v8, v12

    .line 238
    invoke-direct/range {v3 .. v11}, Lcom/amap/api/mapcore/util/cj;->a(DDDD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->r:D

    move-object/from16 v3, p0

    move-wide/from16 v8, v16

    move-wide v10, v14

    .line 239
    invoke-direct/range {v3 .. v11}, Lcom/amap/api/mapcore/util/cj;->a(DDDD)D

    move-result-wide v12

    move-object/from16 v3, p0

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    .line 240
    invoke-direct/range {v3 .. v11}, Lcom/amap/api/mapcore/util/cj;->a(DDDD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->s:D

    .line 241
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->r:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/amap/api/mapcore/util/cj;->s:D

    cmpg-double v2, v2, v8

    if-gez v2, :cond_2

    .line 242
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->r:D

    cmpl-double v2, v12, v2

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->s:D

    cmpg-double v2, v12, v2

    if-ltz v2, :cond_1

    .line 243
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->s:D

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->s:D

    .line 250
    :cond_1
    :goto_0
    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    return-object v2

    .line 246
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->s:D

    cmpl-double v2, v12, v2

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->r:D

    cmpg-double v2, v12, v2

    if-ltz v2, :cond_1

    .line 247
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->s:D

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/cj;->s:D

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cj;->e:Lcom/amap/api/maps/model/LatLng;

    .line 343
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 277
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cj;->k:Z

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/cj;->o:I

    if-nez v0, :cond_3

    .line 282
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cj;->b()Z

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/util/cj;->o:I

    if-lez v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/cj;->h:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v2

    .line 287
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    .line 288
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    array-length v1, v1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    .line 289
    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->b()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/cj;->b:F

    iget v5, p0, Lcom/amap/api/mapcore/util/cj;->c:F

    iget v6, p0, Lcom/amap/api/mapcore/util/cj;->d:F

    iget v7, p0, Lcom/amap/api/mapcore/util/cj;->a:F

    const/4 v8, 0x0

    move v11, v9

    .line 288
    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V

    .line 292
    :cond_4
    iput-boolean v10, p0, Lcom/amap/api/mapcore/util/cj;->p:Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    .line 348
    return-void
.end method

.method public b()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cj;->k:Z

    if-nez v0, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cj;->p:Z

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v9

    .line 124
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cj;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    const/4 v0, 0x3

    new-array v7, v0, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 127
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    .line 128
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 131
    const/4 v0, 0x0

    aput-object v6, v7, v0

    .line 132
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 135
    const/4 v0, 0x1

    aput-object v6, v7, v0

    .line 136
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 139
    const/4 v0, 0x2

    aput-object v6, v7, v0

    .line 141
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    mul-int/lit8 v2, v0, 0x3

    aget-object v3, v7, v0

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v3, v1, v2

    .line 143
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    aget-object v3, v7, v0

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v3, v1, v2

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore/util/cj;->o:I

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 150
    :cond_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cj;->e()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v10

    .line 151
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/cj;->s:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/cj;->r:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-int v11, v0

    .line 152
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/cj;->s:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/cj;->r:D

    sub-double/2addr v0, v2

    int-to-double v2, v11

    div-double v12, v0, v2

    .line 153
    add-int/lit8 v0, v11, 0x1

    new-array v14, v0, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 154
    array-length v0, v14

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    .line 155
    const/4 v0, 0x0

    move v8, v0

    :goto_2
    if-gt v8, v11, :cond_5

    .line 156
    if-ne v8, v11, :cond_4

    .line 157
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 160
    aput-object v6, v14, v8

    .line 165
    :goto_3
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/cj;->r:D

    int-to-double v2, v8

    mul-double/2addr v2, v12

    add-double/2addr v2, v0

    iget-wide v4, v10, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v6, v10, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-object v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/mapcore/util/cj;->a(Lcom/autonavi/amap/mapcore/MapProjection;DDD)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    aput-object v0, v14, v8

    .line 167
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    mul-int/lit8 v1, v8, 0x3

    aget-object v2, v14, v8

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v2, v0, v1

    .line 168
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v14, v8

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v2, v0, v1

    .line 169
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->n:[F

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 155
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 162
    :cond_4
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/cj;->r:D

    int-to-double v2, v8

    mul-double/2addr v2, v12

    add-double/2addr v2, v0

    iget-wide v4, v10, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v6, v10, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-object v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/mapcore/util/cj;->a(Lcom/autonavi/amap/mapcore/MapProjection;DDD)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    aput-object v0, v14, v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string/jumbo v1, "ArcDelegateImp"

    const-string/jumbo v2, "calMapFPoint"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 171
    :cond_5
    :try_start_1
    array-length v0, v14

    iput v0, p0, Lcom/amap/api/mapcore/util/cj;->o:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public c(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;

    .line 353
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cj;->p:Z

    return v0
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 324
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/cj;->e:Lcom/amap/api/maps/model/LatLng;

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cj;->f:Lcom/amap/api/maps/model/LatLng;

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cj;->g:Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    const-string/jumbo v1, "ArcDelegateImp"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v0, "Arc"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cj;->l:Ljava/lang/String;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    iget v0, p0, Lcom/amap/api/mapcore/util/cj;->i:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    iget v0, p0, Lcom/amap/api/mapcore/util/cj;->h:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    iget v0, p0, Lcom/amap/api/mapcore/util/cj;->j:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cj;->k:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Ljava/lang/String;)Z

    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 59
    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 308
    iput p1, p0, Lcom/amap/api/mapcore/util/cj;->i:I

    .line 309
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cj;->a:F

    .line 310
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cj;->b:F

    .line 311
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cj;->c:F

    .line 312
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cj;->d:F

    .line 313
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 314
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    iput p1, p0, Lcom/amap/api/mapcore/util/cj;->h:F

    .line 298
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 299
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cj;->k:Z

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 85
    return-void
.end method

.method public setZIndex(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iput p1, p0, Lcom/amap/api/mapcore/util/cj;->j:F

    .line 72
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->r()V

    .line 73
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cj;->m:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 74
    return-void
.end method
