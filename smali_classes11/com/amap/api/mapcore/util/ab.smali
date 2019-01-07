.class public Lcom/amap/api/mapcore/util/ab;
.super Ljava/lang/Object;
.source "ADGLMapAnimationMgr.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/ADGLAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/autonavi/amap/mapcore/ADGLAnimation;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    monitor-enter v4

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/ADGLAnimation;->isOver()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/ADGLAnimation;

    .line 75
    if-eqz v1, :cond_1

    instance-of v2, p1, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;

    move-object v2, v0

    move-object v0, v1

    check-cast v0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;

    move-object v3, v0

    .line 79
    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->typeEqueal(Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;->_needMove:Z

    if-nez v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized a(Lcom/autonavi/amap/mapcore/MapProjection;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    monitor-enter p0

    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/ADGLAnimation;

    .line 53
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ADGLAnimation;->isOver()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 58
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/ADGLAnimation;->doAnimation(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized b()I
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
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
