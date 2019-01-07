.class public final Llkx;
.super Ljava/lang/Object;
.source "CompositeSubscription.java"

# interfaces
.implements Llgz;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Llgz;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Llgz;)V
    .locals 2
    .param p1, "s"    # Llgz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 64
    invoke-interface {p1}, Llgz;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-boolean v0, p0, Llkx;->b:Z

    if-nez v0, :cond_3

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-boolean v0, p0, Llkx;->b:Z

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Llkx;->a:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Llkx;->a:Ljava/util/Set;

    .line 73
    :cond_1
    iget-object v0, p0, Llkx;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    monitor-exit p0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_3
    invoke-interface {p1}, Llgz;->unsubscribe()V

    goto :goto_0
.end method

.method public final b(Llgz;)V
    .locals 2
    .param p1, "s"    # Llgz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    iget-boolean v1, p0, Llkx;->b:Z

    if-nez v1, :cond_1

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v1, p0, Llkx;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Llkx;->a:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 126
    :cond_0
    monitor-exit p0

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    iget-object v1, p0, Llkx;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    .local v0, "unsubscribe":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-eqz v0, :cond_1

    .line 132
    invoke-interface {p1}, Llgz;->unsubscribe()V

    goto :goto_0

    .line 129
    .end local v0    # "unsubscribe":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Llkx;->b:Z

    return v0
.end method

.method public final unsubscribe()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-boolean v1, p0, Llkx;->b:Z

    if-nez v1, :cond_0

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-boolean v1, p0, Llkx;->b:Z

    if-eqz v1, :cond_1

    .line 168
    monitor-exit p0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Llkx;->b:Z

    .line 171
    iget-object v0, p0, Llkx;->a:Ljava/util/Set;

    .line 172
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Llgz;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Llkx;->a:Ljava/util/Set;

    .line 173
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    if-eqz v0, :cond_0

    .line 1184
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgz;

    .line 1186
    :try_start_1
    invoke-interface {v1}, Llgz;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1187
    :catch_0
    move-exception v4

    .line 1188
    if-nez v2, :cond_3

    .line 1189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 1193
    goto :goto_1

    .line 173
    .end local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Llgz;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1194
    .restart local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Llgz;>;"
    :cond_2
    invoke-static {v2}, Llhe;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method
