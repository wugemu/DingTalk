.class public Lcom/amap/api/mapcore/util/v;
.super Ljava/lang/Object;
.source "TileOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/v$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/cy;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amap/api/mapcore/util/v$a;

.field c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/amap/api/mapcore/util/dg;

.field private e:Lcom/amap/api/mapcore/util/l;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 3

    .prologue
    const/16 v1, 0x100

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    new-instance v0, Lcom/amap/api/mapcore/util/v$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/v$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->b:Lcom/amap/api/mapcore/util/v$a;

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    .line 69
    iput-object p2, p0, Lcom/amap/api/mapcore/util/v;->e:Lcom/amap/api/mapcore/util/l;

    .line 70
    iput-object p1, p0, Lcom/amap/api/mapcore/util/v;->f:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/amap/api/mapcore/util/v$1;

    invoke-direct {v0, p0, v1, v1}, Lcom/amap/api/mapcore/util/v$1;-><init>(Lcom/amap/api/mapcore/util/v;II)V

    .line 84
    new-instance v1, Lcom/amap/api/maps/model/TileOverlayOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/TileOverlayOptions;-><init>()V

    .line 85
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/TileOverlayOptions;->tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/amap/api/mapcore/util/dg;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/amap/api/mapcore/util/dg;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/util/v;Z)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    .line 88
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/util/l;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:Lcom/amap/api/mapcore/util/l;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
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
    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :cond_1
    new-instance v1, Lcom/amap/api/mapcore/util/dg;

    invoke-direct {v1, p1, p0}, Lcom/amap/api/mapcore/util/dg;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/util/v;)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/v;->a(Lcom/amap/api/mapcore/util/cy;)V

    .line 154
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 155
    new-instance v0, Lcom/amap/api/maps/model/TileOverlay;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/TileOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/cy;)V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/v;->b(Lcom/amap/api/mapcore/util/cy;)Z

    .line 160
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/v;->c()V

    .line 162
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/en;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    :cond_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 100
    sget v0, Lcom/amap/api/mapcore/util/g;->c:I

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/dg;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cy;

    .line 105
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cy;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/cy;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    :try_start_0
    sget v0, Lcom/amap/api/mapcore/util/g;->c:I

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-boolean v0, v0, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:Lcom/amap/api/mapcore/util/l;

    .line 175
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 176
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/dg;->a(Z)V

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cy;

    .line 184
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cy;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/cy;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string/jumbo v1, "TileOverlayView"

    const-string/jumbo v2, "refresh"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_2
    return-void

    .line 179
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dg;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cy;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cy;->remove()V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 134
    return-void
.end method

.method public b(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/dg;->b(Z)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cy;

    .line 219
    if-eqz v0, :cond_1

    .line 220
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/cy;->b(Z)V

    goto :goto_0

    .line 223
    :cond_2
    return-void
.end method

.method public b(Lcom/amap/api/mapcore/util/cy;)Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->b:Lcom/amap/api/mapcore/util/v$a;

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 139
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 140
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 141
    iget-object v4, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Lcom/amap/api/mapcore/util/cy;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dg;->a()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cy;

    .line 209
    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cy;->a()V

    goto :goto_0

    .line 213
    :cond_2
    return-void
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Landroid/content/Context;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/v;->b()V

    .line 235
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dg;->remove()V

    .line 237
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    .line 238
    return-void
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/dg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dg;->b()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cy;

    .line 247
    if-eqz v0, :cond_1

    .line 248
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cy;->b()V

    goto :goto_0

    .line 251
    :cond_2
    return-void
.end method
