.class public final Liaj;
.super Ljava/lang/Object;
.source "CategoryCache.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field private d:Lial;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lial;

    invoke-direct {v0}, Lial;-><init>()V

    iput-object v0, p0, Liaj;->d:Lial;

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Liaj;->a:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Liaj;->b:Ljava/util/Map;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Liaj;->c:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 28
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Liaj;->c:Z

    if-nez v1, :cond_1

    .line 29
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Liaj;->a(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Liaj;->a:Ljava/util/List;

    .line 32
    :cond_1
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 33
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    iget-object v2, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 34
    .local v0, "lastCategory":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_2

    .line 35
    iget v1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    add-int/lit8 v1, v1, 0x1

    .line 38
    .end local v0    # "lastCategory":Lcom/alibaba/wukong/im/category/CategoryObject;
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a(Z)Ljava/util/List;
    .locals 6
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    iget-boolean v1, p0, Liaj;->c:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 76
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    .line 91
    :goto_0
    return-object v1

    .line 78
    :cond_0
    iget-object v1, p0, Liaj;->d:Lial;

    invoke-virtual {v1}, Lial;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Liaj;->a:Ljava/util/List;

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Liaj;->c:Z

    .line 80
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 81
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Liaj;->a:Ljava/util/List;

    .line 83
    :cond_1
    const-string/jumbo v1, "CategoryCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Cache] queryAll size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Liaj;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 85
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 86
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_2

    .line 89
    iget-object v2, p0, Liaj;->b:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 91
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_3
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 144
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 145
    const-string/jumbo v1, "CategoryCache"

    const-string/jumbo v2, "[Cache] deleteById id must > 0"

    .line 4018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x0

    .line 161
    :goto_0
    return v1

    .line 149
    :cond_0
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 150
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_1

    .line 153
    iget-wide v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 154
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Liaj;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v0}, Liam;->b(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    .line 161
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_2
    invoke-static {p1, p2}, Lial;->a(J)Z

    move-result v1

    goto :goto_0
.end method

.method public final a(JZ)Z
    .locals 9
    .param p1, "id"    # J
    .param p3, "syncFlag"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 203
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gtz v5, :cond_1

    .line 204
    const-string/jumbo v4, "CategoryCache"

    const-string/jumbo v5, "[Cache] updateTooLong2SyncFlag id must > 0"

    .line 8018
    const-string/jumbo v6, "im"

    invoke-static {v4, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_0
    return v3

    .line 207
    :cond_1
    invoke-static {p1, p2, v4}, Lial;->a(JZ)I

    move-result v2

    .line 208
    .local v2, "ret":I
    if-gtz v2, :cond_3

    .line 209
    const-string/jumbo v5, "CategoryCache"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[Cache] updateTooLong2SyncFlag fail ret "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9018
    const-string/jumbo v7, "im"

    invoke-static {v5, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_2
    :goto_1
    if-lez v2, :cond_0

    move v3, v4

    goto :goto_0

    .line 211
    :cond_3
    iget-object v5, p0, Liaj;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    iget-object v5, p0, Liaj;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 213
    .local v1, "object":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v1, :cond_4

    .line 214
    iput-boolean v4, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    .line 215
    iget-object v5, p0, Liaj;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_4
    iget-object v5, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 218
    .local v0, "exist":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_5

    .line 221
    iget-wide v6, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_5

    .line 222
    iput-boolean v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/alibaba/wukong/im/category/CategoryObject;)Z
    .locals 8
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 95
    monitor-enter p0

    if-nez p1, :cond_0

    .line 96
    :try_start_0
    const-string/jumbo v4, "CategoryCache"

    const-string/jumbo v5, "[Cache] insertOrUpdate model is null"

    .line 2018
    const-string/jumbo v6, "im"

    invoke-static {v4, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit p0

    return v1

    .line 100
    :cond_0
    :try_start_1
    iget v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    if-gtz v4, :cond_1

    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-virtual {p0, v4, v5}, Liaj;->b(J)Lcom/alibaba/wukong/im/category/CategoryObject;

    move-result-object v4

    if-nez v4, :cond_1

    .line 101
    invoke-virtual {p0}, Liaj;->a()I

    move-result v4

    iput v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    .line 104
    :cond_1
    iget-object v4, p0, Liaj;->d:Lial;

    invoke-virtual {v4, p1}, Lial;->a(Lcom/alibaba/wukong/im/category/CategoryObject;)J

    move-result-wide v2

    .line 105
    .local v2, "ret":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 106
    const-string/jumbo v4, "CategoryCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[Cache] CategoryCache insertOrUpdate fail: id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2022
    const-string/jumbo v6, "im"

    invoke-static {v4, v5, v6}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v2    # "ret":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 109
    .restart local v2    # "ret":J
    :cond_2
    :try_start_2
    iget-object v1, p0, Liaj;->b:Ljava/util/Map;

    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    iget-object v1, p0, Liaj;->b:Ljava/util/Map;

    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 112
    .local v0, "exist":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_3

    .line 115
    iget-wide v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iget-wide v6, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 116
    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/category/CategoryObject;->reset(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    .line 117
    invoke-static {p1}, Liam;->a(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    .line 126
    .end local v0    # "exist":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    :cond_5
    iget-object v1, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Liaj;->b:Ljava/util/Map;

    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Liam;->c(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "categoryObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    :cond_0
    const-string/jumbo v1, "CategoryCache"

    const-string/jumbo v3, "[Cache] batchInsert category list is null"

    .line 3018
    const-string/jumbo v4, "im"

    invoke-static {v1, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 140
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 134
    :cond_2
    :try_start_1
    invoke-static {}, Lial;->b()V

    .line 135
    invoke-static {p1}, Lial;->a(Ljava/util/List;)I

    move-result v0

    .line 136
    .local v0, "result":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Liaj;->a(Z)Ljava/util/List;

    .line 137
    iget-object v3, p0, Liaj;->a:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Liaj;->a:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Liam;->b(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :cond_3
    if-gtz v0, :cond_1

    move v1, v2

    goto :goto_0

    .line 130
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final a(Ljava/util/List;Z)Z
    .locals 5
    .param p2, "notifyDataChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    :cond_0
    const-string/jumbo v1, "CategoryCache"

    const-string/jumbo v3, "[Cache] adjustCategoryOrder list is empty"

    .line 5018
    const-string/jumbo v4, "im"

    invoke-static {v1, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 184
    :cond_1
    :goto_0
    return v1

    .line 177
    :cond_2
    invoke-static {p1}, Lial;->b(Ljava/util/List;)I

    move-result v0

    .line 178
    .local v0, "result":I
    if-lez v0, :cond_3

    .line 179
    invoke-virtual {p0, v1}, Liaj;->a(Z)Ljava/util/List;

    .line 181
    invoke-static {p1}, Liam;->a(Ljava/util/List;)V

    .line 184
    :cond_3
    if-gtz v0, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public final b(J)Lcom/alibaba/wukong/im/category/CategoryObject;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 165
    iget-boolean v0, p0, Liaj;->c:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Liaj;->a(Z)Ljava/util/List;

    .line 168
    :cond_0
    iget-object v0, p0, Liaj;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    return-object v0
.end method

.method public final b()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v6, 0x6

    const/4 v2, 0x1

    .line 42
    iget-object v3, p0, Liaj;->a:Ljava/util/List;

    if-nez v3, :cond_0

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Liaj;->a:Ljava/util/List;

    .line 45
    :cond_0
    iget-object v3, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    :goto_0
    return v2

    .line 49
    :cond_1
    iget-object v3, p0, Liaj;->d:Lial;

    invoke-virtual {v3}, Lial;->a()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Liaj;->a:Ljava/util/List;

    .line 50
    iget-object v3, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-static {}, Liap;->a()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Liaj;->a:Ljava/util/List;

    .line 52
    const/4 v2, 0x0

    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    .local v1, "hasMute":Z
    iget-object v3, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 58
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 59
    const/4 v1, 0x1

    .line 63
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_4
    if-nez v1, :cond_5

    .line 64
    new-instance v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-object v3, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v6, v7, v3}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>(JI)V

    .line 65
    .restart local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    iget-object v3, p0, Liaj;->d:Lial;

    invoke-virtual {v3, v0}, Lial;->a(Lcom/alibaba/wukong/im/category/CategoryObject;)J

    .line 66
    iget-object v3, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_5
    iput-boolean v2, p0, Liaj;->c:Z

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "categoryIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    :cond_0
    const-string/jumbo v1, "CategoryCache"

    const-string/jumbo v3, "[Cache] adjustCategoryOrder id list is empty"

    .line 6018
    const-string/jumbo v4, "im"

    invoke-static {v1, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 199
    :goto_0
    return v1

    .line 192
    :cond_1
    invoke-static {p1}, Lial;->c(Ljava/util/List;)I

    move-result v0

    .line 193
    .local v0, "result":I
    if-lez v0, :cond_2

    .line 194
    invoke-virtual {p0, v1}, Liaj;->a(Z)Ljava/util/List;

    .line 195
    iget-object v2, p0, Liaj;->a:Ljava/util/List;

    invoke-static {v2}, Liam;->a(Ljava/util/List;)V

    .line 196
    const-string/jumbo v2, "CategoryCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[Cache] adjustCategoryOrder id list succ size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Liaj;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 199
    goto :goto_0
.end method
