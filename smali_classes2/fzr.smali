.class public Lfzr;
.super Ljava/lang/Object;
.source "ItemSelectedBaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfzr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lfzr$a",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lfzr;, "Lfzr<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfzr;->b:Ljava/util/Set;

    .line 127
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    .local p0, "this":Lfzr;, "Lfzr<TT;>;"
    iget-object v1, p0, Lfzr;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lfzr;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 83
    iget-object v2, p0, Lfzr;->b:Ljava/util/Set;

    monitor-enter v2

    .line 84
    :try_start_0
    iget-object v1, p0, Lfzr;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzr$a;

    .line 85
    .local v0, "listener":Lfzr$a;, "Lfzr$a<TT;>;"
    invoke-interface {v0}, Lfzr$a;->a()V

    goto :goto_1

    .line 87
    .end local v0    # "listener":Lfzr$a;, "Lfzr$a<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 43
    .local p0, "this":Lfzr;, "Lfzr<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lfzr;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfzr;->a:Ljava/util/List;

    .line 47
    :cond_0
    iget-object v1, p0, Lfzr;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v2, p0, Lfzr;->b:Ljava/util/Set;

    monitor-enter v2

    .line 50
    :try_start_0
    iget-object v1, p0, Lfzr;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzr$a;

    .line 51
    .local v0, "listener":Lfzr$a;, "Lfzr$a<TT;>;"
    invoke-interface {v0, p1}, Lfzr$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    .end local v0    # "listener":Lfzr$a;, "Lfzr$a<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lfzr;, "Lfzr<TT;>;"
    iget-object v0, p0, Lfzr;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfzr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 60
    .local p0, "this":Lfzr;, "Lfzr<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lfzr;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfzr;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lfzr;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v2, p0, Lfzr;->b:Ljava/util/Set;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lfzr;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzr$a;

    .line 68
    .local v0, "listener":Lfzr$a;, "Lfzr$a<TT;>;"
    invoke-interface {v0, p1}, Lfzr$a;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 70
    .end local v0    # "listener":Lfzr$a;, "Lfzr$a<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lfzr;, "Lfzr<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method
