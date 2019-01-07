.class public final Lida;
.super Ljava/lang/Object;
.source "FollowCache.java"


# instance fields
.field private a:Ljava/util/concurrent/locks/ReadWriteLock;

.field private b:Lidb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lida;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 21
    new-instance v0, Lidb;

    invoke-direct {v0}, Lidb;-><init>()V

    iput-object v0, p0, Lida;->b:Lidb;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/relation/FollowImpl;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 27
    .local p1, "follows":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/FollowImpl;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    :cond_0
    const-string/jumbo v2, "[TAG] FollowCache"

    const-string/jumbo v3, "[CACHE] Param follows null"

    .line 1022
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 34
    .local v1, "trace":Lhzv;
    :try_start_0
    iget-object v2, p0, Lida;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 35
    const-string/jumbo v2, "[TAG] FollowCache"

    .line 2014
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[CACHE] bulk merge, sz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lida;->b:Lidb;

    invoke-virtual {v2, p1}, Lidb;->a(Ljava/util/List;)I

    move-result v0

    .line 40
    .local v0, "mergeSize":I
    if-nez v0, :cond_2

    .line 41
    const-string/jumbo v2, "[CACHE] bulk merge err"

    invoke-virtual {v1, v2}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_2
    iget-object v2, p0, Lida;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 45
    .end local v0    # "mergeSize":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lida;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 46
    throw v2
.end method

.method public final a(J)Lcom/alibaba/wukong/im/relation/FollowImpl;
    .locals 1
    .param p1, "openId"    # J

    .prologue
    .line 52
    invoke-static {p1, p2}, Lidb;->a(J)Lcom/alibaba/wukong/im/relation/FollowImpl;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILcom/alibaba/wukong/im/Follow$FollowStatus;)Ljava/util/List;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "status"    # Lcom/alibaba/wukong/im/Follow$FollowStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/alibaba/wukong/im/Follow$FollowStatus;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/relation/FollowImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 56
    if-gtz p2, :cond_0

    .line 57
    const-string/jumbo v1, "[TAG] FollowCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[CACHE] Param status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alibaba/wukong/im/Follow$FollowStatus;->getStatus()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4022
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-object v0

    .line 63
    :cond_0
    :try_start_0
    iget-object v1, p0, Lida;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    sget-object v1, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWER:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    if-ne p3, v1, :cond_1

    .line 65
    iget-object v0, p0, Lida;->b:Lidb;

    .line 4041
    int-to-long v0, p1

    sget-object v2, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWER:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Follow$FollowStatus;->getStatus()J

    move-result-wide v2

    invoke-static {v0, v1, p2, v2, v3}, Lidb;->a(JIJ)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 77
    iget-object v1, p0, Lida;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 68
    :cond_1
    :try_start_1
    sget-object v1, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWING:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    if-ne p3, v1, :cond_2

    .line 69
    iget-object v0, p0, Lida;->b:Lidb;

    .line 5037
    int-to-long v0, p1

    sget-object v2, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWING:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Follow$FollowStatus;->getStatus()J

    move-result-wide v2

    invoke-static {v0, v1, p2, v2, v3}, Lidb;->a(JIJ)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 77
    iget-object v1, p0, Lida;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 72
    :cond_2
    :try_start_2
    sget-object v1, Lcom/alibaba/wukong/im/Follow$FollowStatus;->BOTHWAY_FOLLOW:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    if-ne p3, v1, :cond_3

    .line 73
    iget-object v0, p0, Lida;->b:Lidb;

    .line 5045
    int-to-long v0, p1

    sget-object v2, Lcom/alibaba/wukong/im/Follow$FollowStatus;->BOTHWAY_FOLLOW:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Follow$FollowStatus;->getStatus()J

    move-result-wide v2

    invoke-static {v0, v1, p2, v2, v3}, Lidb;->a(JIJ)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 77
    iget-object v1, p0, Lida;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lida;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lida;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
