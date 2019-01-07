.class public final Licu;
.super Ljava/lang/Object;
.source "BlacklistCache.java"


# instance fields
.field private a:Ljava/util/concurrent/locks/ReadWriteLock;

.field private b:Licv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Licu;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 17
    new-instance v0, Licv;

    invoke-direct {v0}, Licv;-><init>()V

    iput-object v0, p0, Licu;->b:Licv;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    .locals 1
    .param p1, "openId"    # J

    .prologue
    .line 46
    invoke-static {p1, p2}, Licv;->a(J)Lcom/alibaba/wukong/im/relation/BlacklistImpl;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Ljava/util/List;
    .locals 8
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/relation/BlacklistImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 50
    if-gtz p2, :cond_0

    .line 51
    const-string/jumbo v0, "[TAG] BlacklistCache "

    const-string/jumbo v1, "[CACHE] getBlacklist"

    .line 5022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    :try_start_0
    iget-object v0, p0, Licu;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 56
    iget-object v0, p0, Licu;->b:Licv;

    .line 5032
    int-to-long v1, p1

    sget-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BLACKLISTING:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->getStatus()J

    move-result-wide v4

    sget-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BOTH:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->getStatus()J

    move-result-wide v6

    move v3, p2

    invoke-static/range {v1 .. v7}, Licv;->a(JIJJ)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 58
    iget-object v1, p0, Licu;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Licu;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/relation/BlacklistImpl;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/relation/BlacklistImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "blacklists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    const/4 v1, 0x0

    .line 23
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    :cond_0
    const-string/jumbo v2, "[TAG] BlacklistCache"

    const-string/jumbo v3, "[CACHE] Param follows null"

    .line 1022
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    .line 41
    .end local p1    # "blacklists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    :goto_0
    return-object p1

    .line 28
    .restart local p1    # "blacklists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    :cond_1
    const/4 v0, 0x0

    .line 30
    .local v0, "trace":Lhzv;
    :try_start_0
    iget-object v2, p0, Licu;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 31
    const-string/jumbo v2, "[TAG] BlacklistCache"

    .line 2014
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[CACHE] bulk merge, sz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Licu;->b:Licv;

    invoke-virtual {v2, p1}, Licv;->a(Ljava/util/List;)I

    move-result v2

    if-nez v2, :cond_2

    .line 35
    const-string/jumbo v2, "[CACHE] bulk merge err"

    invoke-virtual {v0, v2}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v2, p0, Licu;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    move-object p1, v1

    .line 41
    goto :goto_0

    .line 40
    :cond_2
    iget-object v1, p0, Licu;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    iget-object v2, p0, Licu;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 41
    throw v1
.end method
