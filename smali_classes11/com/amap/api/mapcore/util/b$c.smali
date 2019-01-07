.class Lcom/amap/api/mapcore/util/b$c;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/b;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/b;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 0

    .prologue
    .line 3429
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b$c;->a:Lcom/amap/api/mapcore/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3430
    iput-object p2, p0, Lcom/amap/api/mapcore/util/b$c;->b:Landroid/content/Context;

    .line 3431
    iput-object p3, p0, Lcom/amap/api/mapcore/util/b$c;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    .line 3432
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3461
    instance-of v0, p1, Lcom/amap/api/mapcore/util/b$c;

    return v0
.end method

.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3436
    .line 3438
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b$c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3439
    invoke-static {v2}, Lcom/amap/api/mapcore/util/en;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3440
    invoke-static {v2}, Lcom/amap/api/mapcore/util/en;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 3441
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3442
    invoke-static {v2}, Lcom/autonavi/amap/mapcore/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 3443
    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/autonavi/amap/mapcore/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_2

    move v6, v0

    .line 3449
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$c;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    const/16 v1, 0xa29

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 3450
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$c;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v0, :cond_0

    .line 3451
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$c;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {v0, v6}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 3456
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 3442
    goto :goto_0

    :cond_2
    move v6, v1

    .line 3443
    goto :goto_1

    .line 3453
    :catch_0
    move-exception v0

    .line 3454
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 3444
    :catch_1
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 3445
    :goto_3
    :try_start_3
    const-string/jumbo v2, "AMapDelegateImp"

    const-string/jumbo v3, "RemoveCacheRunnable"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3449
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$c;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    const/16 v1, 0xa29

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 3450
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$c;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v0, :cond_0

    .line 3451
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$c;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 3453
    :catch_2
    move-exception v0

    .line 3454
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 3448
    :catchall_0
    move-exception v1

    move-object v6, v1

    move v7, v0

    .line 3449
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$c;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    const/16 v1, 0xa29

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 3450
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$c;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v0, :cond_3

    .line 3451
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$c;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {v0, v7}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 3455
    :cond_3
    :goto_5
    throw v6

    .line 3453
    :catch_3
    move-exception v0

    .line 3454
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 3448
    :catchall_1
    move-exception v0

    move-object v6, v0

    move v7, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v0

    move v7, v1

    goto :goto_4

    .line 3444
    :catch_4
    move-exception v0

    move v1, v2

    goto :goto_3
.end method
