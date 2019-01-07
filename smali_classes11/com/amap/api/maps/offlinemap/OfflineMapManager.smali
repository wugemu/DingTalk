.class public final Lcom/amap/api/maps/offlinemap/OfflineMapManager;
.super Ljava/lang/Object;
.source "OfflineMapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;,
        Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/bb;

.field b:Lcom/amap/api/mapcore/util/ax;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

.field private e:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    .line 51
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    .line 52
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;Lcom/amap/api/maps/AMap;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    .line 70
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    .line 71
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    .line 73
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    return-object v0
.end method

.method private a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 422
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/util/ax;->b:Z

    .line 82
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ax;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    .line 83
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    new-instance v1, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;

    invoke-direct {v1, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ax;->a(Lcom/amap/api/mapcore/util/ax$a;)V

    .line 145
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->a()V

    .line 147
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ax;->f:Lcom/amap/api/mapcore/util/bb;

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    .line 148
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ax;->a(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method static synthetic b(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    .line 508
    return-void
.end method

.method static synthetic c(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->e:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->e()V

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b()V

    .line 479
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 481
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    .line 483
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 485
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final downloadByCityCode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ax;->e(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public final downloadByCityName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ax;->d(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public final downloadByProvinceName(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a()V

    .line 190
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getItemByProvinceName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    instance-of v1, v0, Lcom/amap/api/maps/AMapException;

    if-eqz v1, :cond_1

    .line 216
    check-cast v0, Lcom/amap/api/maps/AMapException;

    throw v0

    .line 197
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 199
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    new-instance v3, Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;

    invoke-direct {v3, p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 218
    :cond_1
    const-string/jumbo v1, "OfflineMapManager"

    const-string/jumbo v2, "downloadByProvinceName"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_2
    return-void
.end method

.method public final getDownloadOfflineMapCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bb;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getDownloadOfflineMapProvinceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bb;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getDownloadingCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bb;->e()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getDownloadingProvinceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bb;->f()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getItemByCityCode(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/bb;->a(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object v0

    return-object v0
.end method

.method public final getItemByCityName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/bb;->b(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object v0

    return-object v0
.end method

.method public final getItemByProvinceName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/bb;->c(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object v0

    return-object v0
.end method

.method public final getOfflineMapCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bb;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getOfflineMapProvinceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bb;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final pause()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->d()V

    .line 457
    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ax;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ax;->c(Ljava/lang/String;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/bb;->c(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u6ca1\u6709\u8be5\u57ce\u5e02"

    invoke-interface {v0, v1, p1, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;->onRemove(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 247
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    new-instance v3, Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;

    invoke-direct {v3, p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public final restart()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public final setOnOfflineLoadedListener(Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->e:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;

    .line 556
    return-void
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->c()V

    .line 446
    return-void
.end method

.method public final updateOfflineCityByCode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getItemByCityCode(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 384
    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cityname"

    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public final updateOfflineCityByName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 398
    const-string/jumbo v0, "cityname"

    invoke-direct {p0, p1, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public final updateOfflineMapProvinceByName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 412
    const-string/jumbo v0, "cityname"

    invoke-direct {p0, p1, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method
