.class Lcom/amap/api/mapcore/util/j$1;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/j;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/j;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amap/api/mapcore/util/j$1;->a:Lcom/amap/api/mapcore/util/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/j$1;->a:Lcom/amap/api/mapcore/util/j;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/j$1;->a:Lcom/amap/api/mapcore/util/j;

    .line 66
    invoke-static {v2}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/mapcore/util/j;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    iget-object v2, p0, Lcom/amap/api/mapcore/util/j$1;->a:Lcom/amap/api/mapcore/util/j;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/j;->b:Lcom/amap/api/mapcore/util/j$a;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    iget-object v2, p0, Lcom/amap/api/mapcore/util/j$1;->a:Lcom/amap/api/mapcore/util/j;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/mapcore/util/j;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    :try_start_4
    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 64
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
