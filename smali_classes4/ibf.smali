.class public final Libf;
.super Ljava/lang/Object;
.source "GroupNickDataCenter.java"


# instance fields
.field protected final a:Ljava/util/concurrent/locks/ReadWriteLock;

.field private b:Libe;

.field private c:Libg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 41
    new-instance v0, Libe;

    invoke-direct {v0}, Libe;-><init>()V

    iput-object v0, p0, Libf;->b:Libe;

    .line 42
    new-instance v0, Libg;

    invoke-direct {v0}, Libg;-><init>()V

    iput-object v0, p0, Libf;->c:Libg;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .param p4, "onlyFromCache"    # Z

    .prologue
    const/4 v2, 0x0

    .line 199
    :try_start_0
    iget-object v3, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 201
    iget-object v3, p0, Libf;->b:Libe;

    invoke-virtual {v3, p1, p2, p3}, Libe;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/GroupNickObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 202
    .local v0, "groupNickObjectInCache":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v0, :cond_0

    .line 215
    iget-object v2, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v0    # "groupNickObjectInCache":Lcom/alibaba/wukong/im/GroupNickObject;
    :goto_0
    return-object v0

    .line 205
    .restart local v0    # "groupNickObjectInCache":Lcom/alibaba/wukong/im/GroupNickObject;
    :cond_0
    if-eqz p4, :cond_1

    .line 215
    iget-object v3, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v2

    goto :goto_0

    .line 209
    :cond_1
    :try_start_1
    invoke-static {p1, p2, p3}, Libg;->b(Ljava/lang/String;J)Lcom/alibaba/wukong/im/GroupNickObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 210
    .local v1, "groupNickObjectInDb":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v1, :cond_2

    .line 215
    iget-object v2, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v2

    goto :goto_0

    .end local v0    # "groupNickObjectInCache":Lcom/alibaba/wukong/im/GroupNickObject;
    .end local v1    # "groupNickObjectInDb":Lcom/alibaba/wukong/im/GroupNickObject;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 258
    const-string/jumbo v0, "WKLog"

    const-string/jumbo v1, "[groupNick]clear cache"

    .line 3018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :try_start_0
    iget-object v0, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 261
    iget-object v0, p0, Libf;->b:Libe;

    .line 3106
    invoke-virtual {v0}, Libe;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    iget-object v0, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v0

    iget-object v1, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/alibaba/wukong/im/GroupNickObject;Lcom/alibaba/wukong/Callback;Z)V
    .locals 6
    .param p1, "groupNickObject"    # Lcom/alibaba/wukong/im/GroupNickObject;
    .param p3, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 109
    const-string/jumbo v1, ""

    const-string/jumbo v4, ""

    invoke-static {v5, v1, v4}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 115
    iget-object v1, p0, Libf;->b:Libe;

    invoke-virtual {v1, p1}, Libe;->a(Lcom/alibaba/wukong/im/GroupNickObject;)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v0

    .line 116
    .local v0, "mergeCacheRet":Lcom/alibaba/wukong/im/GroupNickObject;
    if-nez v0, :cond_1

    .line 117
    const/4 v1, 0x0

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-static {v1, v4, v5}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v1, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 122
    :cond_1
    :try_start_1
    invoke-static {v0}, Libg;->a(Lcom/alibaba/wukong/im/GroupNickObject;)J

    move-result-wide v2

    .line 123
    .local v2, "ret":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 127
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    iget-object v1, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v2    # "ret":J
    :catch_0
    move-exception v1

    .line 132
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-static {v1, v4, v5}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    iget-object v1, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "mergeCacheRet":Lcom/alibaba/wukong/im/GroupNickObject;
    :catchall_0
    move-exception v1

    iget-object v4, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final a(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    :try_start_0
    iget-object v3, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 173
    iget-object v3, p0, Libf;->b:Libe;

    invoke-virtual {v3, p1, p2, p3}, Libe;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v1

    .line 174
    .local v1, "groupNickObjectInCache":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v1, :cond_0

    .line 175
    invoke-static {p4, v1}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v3, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 194
    :goto_0
    return-void

    .line 179
    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Libg;->b(Ljava/lang/String;J)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v2

    .line 180
    .local v2, "groupNickObjectInDb":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v2, :cond_1

    .line 181
    invoke-static {p4, v2}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 182
    iget-object v3, p0, Libf;->b:Libe;

    invoke-virtual {v3, v2}, Libe;->a(Lcom/alibaba/wukong/im/GroupNickObject;)Lcom/alibaba/wukong/im/GroupNickObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :goto_1
    iget-object v3, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 184
    :cond_1
    :try_start_2
    new-instance v0, Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/GroupNickObject;-><init>()V

    .line 185
    .local v0, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/GroupNickObject;->setConversationId(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/wukong/im/GroupNickObject;->setOpenId(J)V

    .line 187
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/wukong/im/GroupNickObject;->setTag(I)V

    .line 188
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/GroupNickObject;->completeIfNecessary()V

    .line 189
    iget-object v3, p0, Libf;->b:Libe;

    invoke-virtual {v3, v0}, Libe;->a(Lcom/alibaba/wukong/im/GroupNickObject;)Lcom/alibaba/wukong/im/GroupNickObject;

    .line 190
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {p4, v3, v4}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 193
    .end local v0    # "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    .end local v1    # "groupNickObjectInCache":Lcom/alibaba/wukong/im/GroupNickObject;
    .end local v2    # "groupNickObjectInDb":Lcom/alibaba/wukong/im/GroupNickObject;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 221
    .local p2, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;>;"
    :try_start_0
    iget-object v1, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 223
    invoke-static {p1, p2}, Libg;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 224
    .local v0, "groupNickObjectInDb":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    if-eqz v0, :cond_0

    .line 225
    invoke-static {p3, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 226
    iget-object v1, p0, Libf;->b:Libe;

    invoke-virtual {v1, v0}, Libe;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_0
    iget-object v1, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 232
    return-void

    .line 228
    :cond_0
    :try_start_1
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {p3, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    .end local v0    # "groupNickObjectInDb":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V
    .locals 6
    .param p3, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    .local p1, "groupNickObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 140
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {p2, v2, v3}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 144
    :cond_1
    :try_start_0
    iget-object v2, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 146
    iget-object v2, p0, Libf;->b:Libe;

    invoke-virtual {v2, p1}, Libe;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "mergeCacheRet":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 148
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {p2, v2, v3}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v2, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 153
    :cond_2
    :try_start_1
    invoke-static {v0}, Libg;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 155
    if-eqz p3, :cond_3

    .line 156
    invoke-static {}, Libh;->a()Libh;

    move-result-object v2

    .line 1096
    const-string/jumbo v3, "WKLog"

    const-string/jumbo v4, "[groupNick]onGroupNickUpdated."

    .line 2018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 158
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    iget-object v2, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1100
    :cond_4
    :try_start_2
    iget-object v3, v2, Libh;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_3

    iget-object v3, v2, Libh;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1103
    iget-object v3, v2, Libh;->a:Landroid/os/Handler;

    new-instance v4, Libh$1;

    invoke-direct {v4, v2, v0}, Libh$1;-><init>(Libh;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    :catch_0
    move-exception v2

    .line 163
    :cond_5
    :try_start_3
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {p2, v2, v3}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    iget-object v2, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v0    # "mergeCacheRet":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 268
    const-string/jumbo v0, "WKLog"

    const-string/jumbo v1, "[groupNick]clear redundant entries in db if necessary"

    .line 4018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :try_start_0
    iget-object v0, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 271
    iget-object v0, p0, Libf;->c:Libg;

    invoke-virtual {v0}, Libg;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v0, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v0

    iget-object v1, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    :try_start_0
    iget-object v0, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 239
    iget-object v0, p0, Libf;->b:Libe;

    .line 2102
    invoke-static {p1, p2, p3}, Libe;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Libe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {p1, p2, p3}, Libg;->a(Ljava/lang/String;J)I

    .line 242
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v0, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    iget-object v1, p0, Libf;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
