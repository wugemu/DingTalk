.class public final Liyu;
.super Ljava/lang/Object;
.source "RequestFilterChain.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liyt;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liyt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liyu;->a:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liyu;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Liys;)V
    .locals 3
    .param p1, "context"    # Liys;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 20
    iget-object v1, p0, Liyu;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liyt;

    .line 21
    .local v0, "f":Liyt;
    invoke-interface {v0, p1}, Liyt;->filter(Liys;)V

    goto :goto_0

    .line 23
    .end local v0    # "f":Liyt;
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Liyt;)V
    .locals 1
    .param p1, "filter"    # Liyt;

    .prologue
    .line 12
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liyu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Liys;)V
    .locals 3
    .param p1, "context"    # Liys;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 26
    iget-object v1, p0, Liyu;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liyt;

    .line 27
    .local v0, "f":Liyt;
    invoke-interface {v0, p1}, Liyt;->filter(Liys;)V

    goto :goto_0

    .line 29
    .end local v0    # "f":Liyt;
    :cond_0
    return-void
.end method

.method public final declared-synchronized b(Liyt;)V
    .locals 1
    .param p1, "filter"    # Liyt;

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liyu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
