.class public Lcom/amap/api/mapcore/util/ck;
.super Ljava/lang/Object;
.source "CircleDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/co;


# static fields
.field private static m:F

.field private static n:I

.field private static o:I


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/amap/api/mapcore/util/l;

.field private j:Ljava/nio/FloatBuffer;

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    const v0, 0x4c18dfc2    # 4.0075016E7f

    sput v0, Lcom/amap/api/mapcore/util/ck;->m:F

    .line 228
    const/16 v0, 0x100

    sput v0, Lcom/amap/api/mapcore/util/ck;->n:I

    .line 229
    const/16 v0, 0x14

    sput v0, Lcom/amap/api/mapcore/util/ck;->o:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ck;->a:Lcom/amap/api/maps/model/LatLng;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ck;->b:D

    .line 26
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/ck;->c:F

    .line 27
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/mapcore/util/ck;->d:I

    .line 28
    iput v2, p0, Lcom/amap/api/mapcore/util/ck;->e:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/ck;->f:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ck;->g:Z

    .line 34
    iput v2, p0, Lcom/amap/api/mapcore/util/ck;->k:I

    .line 35
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ck;->l:Z

    .line 39
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ck;->i:Lcom/amap/api/mapcore/util/l;

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ck;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ck;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string/jumbo v1, "CircleDelegateImp"

    const-string/jumbo v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(D)F
    .locals 5

    .prologue
    .line 235
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p1

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sget v2, Lcom/amap/api/mapcore/util/ck;->m:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    sget v2, Lcom/amap/api/mapcore/util/ck;->n:I

    sget v3, Lcom/amap/api/mapcore/util/ck;->o:I

    shl-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private b(D)D
    .locals 5

    .prologue
    .line 239
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/ck;->a(D)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->a:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ck;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ck;->g:Z

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/ck;->k:I

    if-nez v0, :cond_3

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ck;->b()Z

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/util/ck;->k:I

    if-lez v0, :cond_4

    .line 158
    iget v1, p0, Lcom/amap/api/mapcore/util/ck;->e:I

    iget v2, p0, Lcom/amap/api/mapcore/util/ck;->d:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ck;->j:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/amap/api/mapcore/util/ck;->c:F

    iget v5, p0, Lcom/amap/api/mapcore/util/ck;->k:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/ea;->b(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    .line 162
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ck;->l:Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
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
    const/4 v0, 0x0

    const/16 v14, 0x168

    .line 111
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ck;->l:Z

    .line 112
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ck;->a:Lcom/amap/api/maps/model/LatLng;

    .line 113
    if-eqz v1, :cond_1

    .line 114
    new-array v2, v14, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 116
    const/16 v3, 0x438

    new-array v3, v3, [F

    .line 117
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ck;->a:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v4, v5}, Lcom/amap/api/mapcore/util/ck;->b(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/api/mapcore/util/ck;->b:D

    mul-double/2addr v4, v6

    .line 119
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 120
    iget-object v7, p0, Lcom/amap/api/mapcore/util/ck;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v7}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v7

    .line 121
    iget-wide v8, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9, v10, v11, v6}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 122
    :goto_0
    if-ge v0, v14, :cond_0

    .line 123
    int-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    .line 124
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v4

    .line 125
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    .line 127
    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v12, v1

    add-double/2addr v10, v12

    double-to-int v1, v10

    .line 128
    iget v10, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v10

    add-double/2addr v8, v10

    double-to-int v8, v8

    .line 129
    new-instance v9, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v9}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 130
    invoke-virtual {v7, v1, v8, v9}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 131
    aput-object v9, v2, v0

    .line 133
    mul-int/lit8 v1, v0, 0x3

    aget-object v8, v2, v0

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v8, v3, v1

    .line 134
    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x1

    aget-object v8, v2, v0

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v8, v3, v1

    .line 135
    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x2

    const/4 v8, 0x0

    aput v8, v3, v1

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iput v14, p0, Lcom/amap/api/mapcore/util/ck;->k:I

    .line 141
    invoke-static {v3}, Lcom/amap/api/mapcore/util/en;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ck;->j:Ljava/nio/FloatBuffer;

    .line 144
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ck;->l:Z

    return v0
.end method

.method public contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ck;->b:D

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ck;->a:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v2, p1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 166
    iput v1, p0, Lcom/amap/api/mapcore/util/ck;->k:I

    .line 167
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 171
    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ck;->a:Lcom/amap/api/maps/model/LatLng;

    .line 250
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ck;->j:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string/jumbo v1, "CircleDelegateImp"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
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
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ck;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    iget v0, p0, Lcom/amap/api/mapcore/util/ck;->e:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    const-string/jumbo v0, "Circle"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ck;->h:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()D
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
    .line 192
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ck;->b:D

    return-wide v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget v0, p0, Lcom/amap/api/mapcore/util/ck;->d:I

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
    .line 203
    iget v0, p0, Lcom/amap/api/mapcore/util/ck;->c:F

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
    .line 75
    iget v0, p0, Lcom/amap/api/mapcore/util/ck;->f:F

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
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    .prologue
    .line 274
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
    .line 86
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ck;->g:Z

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
    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->i:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ck;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Ljava/lang/String;)Z

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 56
    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public setCenter(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ck;->a:Lcom/amap/api/maps/model/LatLng;

    .line 176
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ck;->d()V

    .line 177
    return-void
.end method

.method public setFillColor(I)V
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
    .line 218
    iput p1, p0, Lcom/amap/api/mapcore/util/ck;->e:I

    .line 219
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 220
    return-void
.end method

.method public setRadius(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/ck;->b:D

    .line 187
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ck;->d()V

    .line 188
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iput p1, p0, Lcom/amap/api/mapcore/util/ck;->d:I

    .line 209
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
    .line 197
    iput p1, p0, Lcom/amap/api/mapcore/util/ck;->c:F

    .line 198
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 199
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
    .line 80
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ck;->g:Z

    .line 81
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 82
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
    .line 68
    iput p1, p0, Lcom/amap/api/mapcore/util/ck;->f:F

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->r()V

    .line 70
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ck;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 71
    return-void
.end method
