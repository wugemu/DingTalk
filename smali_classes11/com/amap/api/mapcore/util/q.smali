.class public Lcom/amap/api/mapcore/util/q;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/q$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/l;

.field b:Lcom/amap/api/mapcore/util/q$a;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/cu;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/autonavi/amap/mapcore/IPoint;

.field private f:Lcom/amap/api/mapcore/util/cr;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    new-instance v0, Lcom/amap/api/mapcore/util/q$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/q$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->b:Lcom/amap/api/mapcore/util/q$a;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->g:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/amap/api/mapcore/util/q$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/q$1;-><init>(Lcom/amap/api/mapcore/util/q;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/lang/Runnable;

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/q;->i:Z

    .line 65
    iput-object p2, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/q;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/q;->i()V

    return-void
.end method

.method private d(Lcom/amap/api/mapcore/util/cu;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/q;->g()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "addMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Lcom/amap/api/mapcore/util/cu;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 343
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->A()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 348
    :pswitch_1
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cu;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->b:Lcom/amap/api/mapcore/util/q$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 301
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 464
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getDisplayLevel()I

    move-result v3

    .line 467
    if-nez v3, :cond_0

    .line 499
    :goto_0
    return v0

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;

    .line 475
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v2

    .line 476
    if-eqz v2, :cond_3

    .line 479
    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getDisplayLevel()I

    move-result v2

    .line 480
    if-eqz v2, :cond_3

    if-le v3, v2, :cond_3

    .line 481
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->h()Landroid/graphics/Rect;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_3

    invoke-static {p2, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 488
    if-eqz v1, :cond_1

    .line 491
    if-gt v1, v2, :cond_1

    :goto_2
    move v0, v1

    :goto_3
    move v1, v0

    .line 497
    goto :goto_1

    :cond_1
    move v1, v2

    .line 491
    goto :goto_2

    :cond_2
    move v0, v1

    .line 499
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore/util/cr;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;

    .line 371
    instance-of v2, v0, Lcom/amap/api/mapcore/util/cz;

    if-eqz v2, :cond_0

    .line 372
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->h()Landroid/graphics/Rect;

    move-result-object v2

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/Rect;II)Z

    move-result v2

    .line 374
    if-eqz v2, :cond_0

    .line 375
    check-cast v0, Lcom/amap/api/mapcore/util/cr;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;

    .line 376
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;

    .line 380
    :goto_1
    return-object v0

    .line 369
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()Lcom/amap/api/mapcore/util/l;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
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
    .line 112
    if-nez p1, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 116
    :cond_0
    monitor-enter p0

    .line 117
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/cz;

    invoke-direct {v1, p1, p0}, Lcom/amap/api/mapcore/util/cz;-><init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/util/q;)V

    .line 118
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/q;->d(Lcom/amap/api/mapcore/util/cu;)V

    .line 119
    new-instance v0, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    monitor-exit p0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
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
    .line 187
    if-nez p1, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    .line 191
    :cond_0
    monitor-enter p0

    .line 192
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/df;

    invoke-direct {v1, p1, p0}, Lcom/amap/api/mapcore/util/df;-><init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/mapcore/util/q;)V

    .line 193
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/q;->d(Lcom/amap/api/mapcore/util/cu;)V

    .line 194
    new-instance v0, Lcom/amap/api/maps/model/Text;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Text;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IText;)V

    monitor-exit p0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    .line 135
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MarkerOptions;

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    .line 142
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    const/high16 v3, 0x41900000    # 18.0f

    .line 141
    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/ag;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/mapcore/util/af;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/MapMessage;)V

    :cond_2
    :goto_1
    move-object v0, v2

    .line 171
    goto :goto_0

    .line 145
    :cond_3
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v4

    move v3, v1

    .line 147
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 148
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MarkerOptions;

    .line 149
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 150
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 152
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 153
    add-int/lit8 v0, v1, 0x1

    .line 147
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_2

    .line 157
    :cond_4
    if-eqz p2, :cond_2

    if-lez v1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/q$2;

    invoke-direct {v1, p0, v4}, Lcom/amap/api/mapcore/util/q$2;-><init>(Lcom/amap/api/mapcore/util/q;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    const-string/jumbo v3, "addMarkers"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    .line 176
    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public a(Lcom/amap/api/mapcore/util/cr;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->e:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 242
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cr;->h()Landroid/graphics/Rect;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/q;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 244
    iput-object p1, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/mapcore/util/cr;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "showInfoWindow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 90
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/q;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 92
    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;

    .line 94
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->remove()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :try_start_1
    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 89
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 98
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;

    .line 99
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 102
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->remove()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 310
    new-array v2, v4, [I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    invoke-interface {p1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 314
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;

    .line 315
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/q;->e(Lcom/amap/api/mapcore/util/cu;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->j()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/q;->i:Z

    .line 319
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->k()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->isInfoWindowShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1, v2}, Lcom/amap/api/mapcore/util/cu;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/amap/api/mapcore/util/l;)V

    goto :goto_1

    .line 323
    :cond_3
    return-void
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore/util/cu;)Z
    .locals 1

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/q;->c(Lcom/amap/api/mapcore/util/cu;)V

    .line 223
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b()I
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore/util/cu;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/q;->i()V

    .line 230
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    :try_start_1
    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "set2Top"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 330
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;

    .line 331
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->j()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/q;->i:Z

    .line 336
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->k()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->isInfoWindowShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1, v2}, Lcom/amap/api/mapcore/util/cu;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/amap/api/mapcore/util/l;)V

    goto :goto_0

    .line 340
    :cond_2
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
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
    .line 407
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 409
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;

    .line 410
    instance-of v1, v0, Lcom/amap/api/mapcore/util/cz;

    if-eqz v1, :cond_0

    .line 412
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/amap/api/mapcore/util/cz;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/cz;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->h()Landroid/graphics/Rect;

    move-result-object v4

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v1, v5}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    .line 415
    if-eqz v1, :cond_0

    .line 417
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 418
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/q;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 419
    check-cast v0, Lcom/amap/api/mapcore/util/cr;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;

    move v0, v1

    .line 426
    :goto_1
    return v0

    .line 408
    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :try_start_1
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->i()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    :try_start_2
    const-string/jumbo v2, "MapOverlayImageView"

    const-string/jumbo v3, "calFPoint"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public c(Lcom/amap/api/mapcore/util/cu;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cu;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->n()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cu;->getId()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public d()Lcom/amap/api/mapcore/util/cr;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Lcom/amap/api/mapcore/util/cr;

    return-object v0
.end method

.method public declared-synchronized e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;

    .line 393
    if-eqz v0, :cond_0

    .line 394
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    :try_start_1
    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MapOverlayImageView clear erro"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :goto_1
    monitor-exit p0

    return-void

    .line 397
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/q;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;

    .line 433
    instance-of v3, v0, Lcom/amap/api/mapcore/util/cz;

    if-eqz v3, :cond_0

    .line 434
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    new-instance v3, Lcom/amap/api/maps/model/Marker;

    check-cast v0, Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-direct {v3, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    :try_start_2
    const-string/jumbo v2, "MapOverlayImageView"

    const-string/jumbo v3, "getMapScreenMarkers"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    :cond_1
    monitor-exit p0

    return-object v1

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 529
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cu;

    .line 530
    if-eqz v0, :cond_0

    .line 531
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cu;->l()V

    goto :goto_0

    .line 534
    :cond_1
    return-void
.end method
