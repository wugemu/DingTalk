.class public Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;
.super Lcom/autonavi/amap/mapcore/ADGLAnimation;
.source "ADGLMapAnimGroup.java"


# static fields
.field public static final CAMERA_MAX_DEGREE:I = 0x3c

.field public static final CAMERA_MIN_DEGREE:I = 0x0

.field public static final MAXMAPLEVEL:I = 0x14

.field public static final MINMAPLEVEL:I = 0x3


# instance fields
.field _endZoomDuration:I

.field _hasCheckParams:Z

.field _hasMidZoom:Z

.field _midZoomDuration:I

.field _moveParam:Lcom/amap/api/mapcore/util/z;

.field public _needMove:Z

.field _needRotateCamera:Z

.field _needRotateMap:Z

.field _needZoom:Z

.field _rotateCameraParam:Lcom/amap/api/mapcore/util/y;

.field _rotateMapParam:Lcom/amap/api/mapcore/util/y;

.field _startZoomDuration:I

.field _zoomEndParam:Lcom/amap/api/mapcore/util/y;

.field _zoomStartParam:Lcom/amap/api/mapcore/util/y;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/ADGLAnimation;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    .line 17
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    .line 18
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    .line 19
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    .line 20
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->reset()V

    .line 22
    iput p1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_duration:I

    .line 23
    return-void
.end method

.method public static checkLevel(F)Z
    .locals 1

    .prologue
    .line 165
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initZoomEndParam(FFI)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/y;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->a()V

    .line 182
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Lcom/amap/api/mapcore/util/y;->a(IF)V

    .line 183
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/y;->d(F)V

    .line 184
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/y;->c(F)V

    .line 185
    return-void
.end method

.method private initZoomStartParam(FI)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/y;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->a()V

    .line 173
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/amap/api/mapcore/util/y;->a(IF)V

    .line 174
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/y;->d(F)V

    .line 175
    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 189
    iput-boolean v7, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_isOver:Z

    .line 190
    iput-boolean v6, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasCheckParams:Z

    .line 192
    check-cast p1, Lcom/autonavi/amap/mapcore/MapProjection;

    .line 193
    if-nez p1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    if-nez v0, :cond_1

    .line 198
    iput-boolean v7, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasCheckParams:Z

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    .line 202
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/y;->c(F)V

    .line 204
    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-eqz v2, :cond_3

    .line 205
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y;->f()F

    move-result v2

    sub-float v0, v2, v0

    .line 206
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y;->e()F

    move-result v2

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    .line 207
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/y;->f()F

    move-result v3

    sub-float/2addr v2, v3

    .line 209
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v8

    if-ltz v0, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v8

    if-gez v0, :cond_b

    .line 210
    :cond_2
    iput-boolean v6, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    .line 211
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y;->f()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/y;->d(F)V

    .line 212
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->b()Z

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    .line 220
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-nez v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->e()F

    move-result v0

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    .line 222
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y;->f()F

    move-result v2

    sub-float/2addr v0, v2

    .line 223
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v8

    if-gez v0, :cond_4

    .line 224
    iput-boolean v6, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    .line 228
    :cond_4
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v0, :cond_5

    .line 229
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-eqz v0, :cond_c

    .line 230
    iget v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_duration:I

    iget v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_midZoomDuration:I

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_startZoomDuration:I

    .line 231
    iget v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_startZoomDuration:I

    iput v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_endZoomDuration:I

    .line 238
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needMove:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    if-eqz v0, :cond_6

    .line 240
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 241
    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 242
    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 243
    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 245
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Lcom/amap/api/mapcore/util/z;->a(FF)V

    .line 246
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/z;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needMove:Z

    .line 249
    :cond_6
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateMap:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    if-eqz v0, :cond_9

    .line 251
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v2

    .line 252
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->f()F

    move-result v0

    .line 254
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_7

    move v0, v1

    .line 261
    :cond_7
    float-to-int v3, v0

    float-to-int v4, v2

    sub-int/2addr v3, v4

    .line 262
    const/16 v4, 0xb4

    if-le v3, v4, :cond_d

    .line 263
    sub-float/2addr v0, v1

    .line 268
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/y;->c(F)V

    .line 269
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/y;->d(F)V

    .line 270
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateMap:Z

    .line 273
    :cond_9
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    if-eqz v0, :cond_a

    .line 274
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/y;->c(F)V

    .line 276
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateCamera:Z

    .line 279
    :cond_a
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needMove:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateMap:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-nez v0, :cond_e

    .line 280
    iput-boolean v7, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_isOver:Z

    .line 285
    :goto_4
    iput-boolean v7, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasCheckParams:Z

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_startTime:J

    goto/16 :goto_0

    .line 215
    :cond_b
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->b()Z

    .line 216
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->b()Z

    goto/16 :goto_1

    .line 233
    :cond_c
    iget v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_duration:I

    iput v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_startZoomDuration:I

    goto/16 :goto_2

    .line 264
    :cond_d
    const/16 v4, -0xb4

    if-ge v3, v4, :cond_8

    .line 265
    add-float/2addr v0, v1

    goto :goto_3

    .line 282
    :cond_e
    iput-boolean v6, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_isOver:Z

    goto :goto_4
.end method

.method public doAnimation(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 293
    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/MapProjection;

    .line 294
    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasCheckParams:Z

    if-nez v2, :cond_2

    .line 298
    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->commitAnimation(Ljava/lang/Object;)V

    .line 302
    :cond_2
    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_isOver:Z

    if-nez v2, :cond_0

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 308
    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_offsetTime:J

    .line 312
    iget v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_duration:I

    int-to-float v2, v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_3

    .line 313
    iput-boolean v6, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_isOver:Z

    goto :goto_0

    .line 317
    :cond_3
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_offsetTime:J

    long-to-float v2, v2

    iget v3, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_duration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 319
    cmpl-float v3, v2, v1

    if-lez v3, :cond_8

    .line 321
    iput-boolean v6, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_isOver:Z

    .line 327
    :goto_1
    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v2, :cond_5

    .line 328
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    .line 329
    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-eqz v2, :cond_b

    .line 331
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_offsetTime:J

    iget v4, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_startZoomDuration:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_9

    .line 333
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_offsetTime:J

    long-to-float v2, v2

    iget v3, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_startZoomDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 334
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore/util/y;->b(F)V

    .line 335
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y;->g()F

    move-result v2

    .line 349
    :goto_2
    iget-boolean v3, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_isOver:Z

    if-eqz v3, :cond_4

    .line 350
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y;->f()F

    move-result v2

    .line 357
    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 360
    :cond_5
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needMove:Z

    if-eqz v2, :cond_6

    .line 361
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/z;->b(F)V

    .line 362
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/z;->e()F

    move-result v2

    float-to-int v2, v2

    .line 363
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/z;->f()F

    move-result v3

    float-to-int v3, v3

    .line 364
    iget-object v4, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/z;->g()F

    move-result v4

    float-to-int v4, v4

    .line 365
    iget-object v5, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/z;->h()F

    move-result v5

    float-to-int v5, v5

    .line 366
    iget-object v6, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v6}, Lcom/amap/api/mapcore/util/z;->c()F

    move-result v6

    .line 373
    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 377
    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 378
    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapCenter(Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 379
    iget v3, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 380
    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 382
    new-instance v7, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 383
    invoke-virtual {v0, v4, v5, v7}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 384
    iget v4, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 385
    iget v5, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 390
    sub-float/2addr v4, v3

    mul-float/2addr v4, v6

    .line 391
    sub-float/2addr v5, v2

    mul-float/2addr v5, v6

    .line 395
    add-float/2addr v3, v4

    add-float/2addr v2, v5

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapCenter(FF)V

    .line 399
    :cond_6
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateMap:Z

    if-eqz v2, :cond_7

    .line 400
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/y;->b(F)V

    .line 401
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y;->g()F

    move-result v2

    .line 402
    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 406
    :cond_7
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/y;->b(F)V

    .line 408
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/y;->g()F

    move-result v1

    .line 409
    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    goto/16 :goto_0

    .line 322
    :cond_8
    cmpg-float v1, v2, v7

    if-gez v1, :cond_c

    .line 323
    iput-boolean v6, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_isOver:Z

    goto/16 :goto_0

    .line 337
    :cond_9
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_offsetTime:J

    iget v4, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_startZoomDuration:I

    iget v5, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_midZoomDuration:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_a

    .line 339
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y;->f()F

    move-result v2

    goto/16 :goto_2

    .line 343
    :cond_a
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_offsetTime:J

    iget v4, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_startZoomDuration:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_midZoomDuration:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_endZoomDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 344
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore/util/y;->b(F)V

    .line 346
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y;->g()F

    move-result v2

    goto/16 :goto_2

    .line 353
    :cond_b
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/y;->b(F)V

    .line 354
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y;->g()F

    move-result v2

    goto/16 :goto_3

    :cond_c
    move v1, v2

    goto/16 :goto_1
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateMap:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needMove:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_isOver:Z

    .line 32
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasCheckParams:Z

    .line 33
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    .line 34
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needMove:Z

    .line 35
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    .line 36
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateMap:Z

    .line 37
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    .line 39
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    .line 41
    iput v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_duration:I

    .line 43
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->a()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/z;->a()V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomStartParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->a()V

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_zoomEndParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->a()V

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->a()V

    .line 62
    :cond_4
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_duration:I

    .line 27
    return-void
.end method

.method public setToCameraDegree(FI)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateCamera:Z

    .line 150
    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateCamera:Z

    .line 153
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/y;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y;->a()V

    .line 157
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/amap/api/mapcore/util/y;->a(IF)V

    .line 158
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/y;->d(F)V

    .line 160
    :cond_1
    return-void
.end method

.method public setToMapAngle(FI)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateMap:Z

    .line 79
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/y;-><init>()V

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/y;->a()V

    .line 86
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p2, v2}, Lcom/amap/api/mapcore/util/y;->a(IF)V

    .line 87
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_rotateMapParam:Lcom/amap/api/mapcore/util/y;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/y;->d(F)V

    .line 88
    return-void
.end method

.method public setToMapCenterGeo(III)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needMove:Z

    .line 93
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/amap/api/mapcore/util/z;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/z;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/z;->a()V

    .line 97
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Lcom/amap/api/mapcore/util/z;->a(IF)V

    .line 98
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_moveParam:Lcom/amap/api/mapcore/util/z;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/z;->b(FF)V

    .line 100
    :cond_1
    return-void
.end method

.method public setToMapLevel(FFI)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    .line 123
    iput v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_midZoomDuration:I

    .line 124
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    .line 125
    if-lez p3, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_duration:I

    if-ge p3, v0, :cond_0

    .line 126
    iput p3, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_midZoomDuration:I

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    .line 131
    invoke-direct {p0, p2, v1}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    .line 132
    invoke-direct {p0, p2, p1, v1}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->initZoomEndParam(FFI)V

    .line 145
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {p1}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    .line 136
    invoke-direct {p0, p1, v1}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-static {p2}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    .line 140
    invoke-direct {p0, p2, v1}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    goto :goto_0

    .line 142
    :cond_3
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    goto :goto_0
.end method

.method public setToMapLevel(FI)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    .line 110
    iput v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_midZoomDuration:I

    .line 111
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_hasMidZoom:Z

    .line 112
    invoke-static {p1}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    goto :goto_0
.end method

.method public typeEqueal(Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateCamera:Z

    iget-boolean v1, p1, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateMap:Z

    iget-boolean v1, p1, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needRotateMap:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    iget-boolean v1, p1, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needZoom:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needMove:Z

    iget-boolean v1, p1, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needMove:Z

    if-ne v0, v1, :cond_0

    .line 420
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
