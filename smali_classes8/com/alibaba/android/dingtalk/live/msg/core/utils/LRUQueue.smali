.class public Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "LRUQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 12
    .local p0, "this":Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue;, "Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 22
    .local p0, "this":Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue;, "Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue<TT;>;"
    .local p1, "t":Ljava/lang/Comparable;, "TT;"
    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 33
    :goto_0
    monitor-exit p0

    return v1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    .local v1, "repeat":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 25
    .local v0, "item":Ljava/lang/Comparable;, "TT;"
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    .line 26
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue;->remove(Ljava/lang/Object;)Z

    .line 27
    const/4 v1, 0x1

    .line 31
    .end local v0    # "item":Ljava/lang/Comparable;, "TT;"
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue;->remainingCapacity()I

    move-result v2

    if-gtz v2, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue;->remove()Ljava/lang/Object;

    .line 32
    :cond_3
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    .local p0, "this":Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue;, "Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue<TT;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/LRUQueue;->add(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method
