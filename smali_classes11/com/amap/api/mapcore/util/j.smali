.class public Lcom/amap/api/mapcore/util/j;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/j$a;
    }
.end annotation


# static fields
.field private static c:I


# instance fields
.field a:Lcom/amap/api/mapcore/util/l;

.field b:Lcom/amap/api/mapcore/util/j$a;

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/ct;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/j;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/j;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/amap/api/mapcore/util/j$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/j$1;-><init>(Lcom/amap/api/mapcore/util/j;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/j;->g:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lcom/amap/api/mapcore/util/j$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/j$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/j;->b:Lcom/amap/api/mapcore/util/j$a;

    .line 108
    iput-object p1, p0, Lcom/amap/api/mapcore/util/j;->a:Lcom/amap/api/mapcore/util/l;

    .line 109
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    sget v0, Lcom/amap/api/mapcore/util/j;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/j;->c:I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/util/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/j;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/j;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/j;->c:I

    .line 133
    return-void
.end method

.method private a(Lcom/amap/api/mapcore/util/ct;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/j;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/mapcore/util/cn;
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
    .line 259
    monitor-enter p0

    if-nez p1, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 272
    :goto_0
    monitor-exit p0

    return-object v0

    .line 263
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/cj;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/j;->a:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/cj;-><init>(Lcom/amap/api/mapcore/util/l;)V

    .line 264
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cj;->setStrokeColor(I)V

    .line 265
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStart()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cj;->a(Lcom/amap/api/maps/model/LatLng;)V

    .line 266
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getPassed()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cj;->b(Lcom/amap/api/maps/model/LatLng;)V

    .line 267
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getEnd()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cj;->c(Lcom/amap/api/maps/model/LatLng;)V

    .line 268
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cj;->setVisible(Z)V

    .line 269
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cj;->setStrokeWidth(F)V

    .line 270
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cj;->setZIndex(F)V

    .line 271
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/mapcore/util/ct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/mapcore/util/co;
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
    .line 236
    monitor-enter p0

    if-nez p1, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 248
    :goto_0
    monitor-exit p0

    return-object v0

    .line 239
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/ck;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/j;->a:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ck;-><init>(Lcom/amap/api/mapcore/util/l;)V

    .line 240
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ck;->setFillColor(I)V

    .line 241
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ck;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    .line 242
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ck;->setVisible(Z)V

    .line 243
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ck;->setStrokeWidth(F)V

    .line 244
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ck;->setZIndex(F)V

    .line 245
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ck;->setStrokeColor(I)V

    .line 246
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getRadius()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/util/ck;->setRadius(D)V

    .line 247
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/mapcore/util/ct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/mapcore/util/cp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    monitor-enter p0

    if-nez p1, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 301
    :goto_0
    monitor-exit p0

    return-object v0

    .line 287
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/cm;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/j;->a:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/cm;-><init>(Lcom/amap/api/mapcore/util/l;)V

    .line 289
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getAnchorU()F

    move-result v1

    .line 290
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getAnchorV()F

    move-result v2

    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/cm;->a(FF)V

    .line 291
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    .line 292
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/cm;->setDimensions(FF)V

    .line 293
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cm;->setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 294
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cm;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 295
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cm;->setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    .line 296
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cm;->setBearing(F)V

    .line 297
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cm;->setTransparency(F)V

    .line 298
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cm;->setVisible(Z)V

    .line 299
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cm;->setZIndex(F)V

    .line 300
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/mapcore/util/ct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/mapcore/util/cs;
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
    .line 188
    monitor-enter p0

    if-nez p1, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 201
    :goto_0
    monitor-exit p0

    return-object v0

    .line 192
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/db;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/j;->a:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/db;-><init>(Lcom/amap/api/mapcore/util/l;)V

    .line 194
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getTopColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/db;->setTopColor(I)V

    .line 196
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/db;->setPoints(Ljava/util/List;)V

    .line 197
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/db;->setVisible(Z)V

    .line 198
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/db;->setWidth(F)V

    .line 199
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/db;->setZIndex(F)V

    .line 200
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/mapcore/util/ct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/mapcore/util/ct;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/ct;

    .line 450
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/ct;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    instance-of v2, v1, Lcom/amap/api/mapcore/util/cw;

    if-eqz v2, :cond_0

    .line 452
    move-object v0, v1

    check-cast v0, Lcom/amap/api/mapcore/util/cw;

    move-object v2, v0

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore/util/cw;->a(Lcom/amap/api/maps/model/LatLng;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/mapcore/util/cv;
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
    .line 213
    monitor-enter p0

    if-nez p1, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 224
    :goto_0
    monitor-exit p0

    return-object v0

    .line 216
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/dc;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/j;->a:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/dc;-><init>(Lcom/amap/api/mapcore/util/l;)V

    .line 217
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dc;->setFillColor(I)V

    .line 218
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dc;->setPoints(Ljava/util/List;)V

    .line 219
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dc;->setVisible(Z)V

    .line 220
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dc;->setStrokeWidth(F)V

    .line 221
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dc;->setZIndex(F)V

    .line 222
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dc;->setStrokeColor(I)V

    .line 223
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/mapcore/util/ct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/mapcore/util/cw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    monitor-enter p0

    if-nez p1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 176
    :goto_0
    monitor-exit p0

    return-object v0

    .line 174
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/dd;-><init>(Lcom/amap/api/mapcore/util/j;Lcom/amap/api/maps/model/PolylineOptions;)V

    .line 175
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/mapcore/util/ct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_0
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 397
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ct;

    .line 399
    :try_start_0
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->isAboveMaskLayer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/ct;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    const-string/jumbo v2, "GLOverlayLayer"

    const-string/jumbo v3, "draw"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 407
    :cond_1
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;ZI)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 338
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 339
    new-array v2, v4, [I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    invoke-interface {p1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 346
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 347
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ct;

    .line 349
    :try_start_0
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    const/16 v3, 0x14

    if-le v1, v3, :cond_3

    .line 351
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    if-eqz p2, :cond_2

    .line 353
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->getZIndex()F

    move-result v3

    int-to-float v4, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 354
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/ct;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    const-string/jumbo v3, "GLOverlayLayer"

    const-string/jumbo v4, "draw"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 357
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->getZIndex()F

    move-result v3

    int-to-float v4, p3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 358
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/ct;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_1

    .line 363
    :cond_3
    if-eqz p2, :cond_4

    .line 364
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->getZIndex()F

    move-result v3

    int-to-float v4, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 365
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/ct;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_1

    .line 368
    :cond_4
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->getZIndex()F

    move-result v3

    int-to-float v4, p3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 369
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/ct;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 379
    :cond_5
    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ct;

    .line 137
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    :try_start_1
    const-string/jumbo v1, "GLOverlayLayer"

    const-string/jumbo v2, "destory"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GLOverlayLayer destory erro"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :goto_1
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/j;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 115
    invoke-static {}, Lcom/amap/api/mapcore/util/j;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ct;

    .line 118
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    :try_start_2
    const-string/jumbo v1, "GLOverlayLayer"

    const-string/jumbo v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GLOverlayLayer clear erro"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Ljava/lang/String;)Lcom/amap/api/mapcore/util/ct;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ct;

    .line 151
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/j;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/j;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ct;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    if-eqz v0, :cond_0

    .line 423
    :try_start_1
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ct;->b()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    :try_start_2
    const-string/jumbo v2, "GLOverlayLayer"

    const-string/jumbo v3, "calMapFPoint"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 430
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
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
    .line 318
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/j;->c(Ljava/lang/String;)Lcom/amap/api/mapcore/util/ct;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 326
    :goto_0
    monitor-exit p0

    return v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Lcom/amap/api/mapcore/util/l;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->a:Lcom/amap/api/mapcore/util/l;

    return-object v0
.end method

.method public f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 470
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ct;

    .line 471
    if-eqz v0, :cond_0

    .line 472
    instance-of v2, v0, Lcom/amap/api/mapcore/util/cw;

    if-eqz v2, :cond_1

    .line 473
    check-cast v0, Lcom/amap/api/mapcore/util/cw;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cw;->d()V

    goto :goto_0

    .line 474
    :cond_1
    instance-of v2, v0, Lcom/amap/api/mapcore/util/cp;

    if-eqz v2, :cond_0

    .line 475
    check-cast v0, Lcom/amap/api/mapcore/util/cp;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cp;->d()V

    goto :goto_0

    .line 480
    :cond_2
    return-void
.end method
