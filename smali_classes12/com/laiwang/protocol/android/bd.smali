.class public Lcom/laiwang/protocol/android/bd;
.super Lcom/laiwang/protocol/attribute/DefaultAttributeMap;
.source "Message.java"

# interfaces
.implements Lcom/laiwang/protocol/core/Constants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/laiwang/protocol/attribute/DefaultAttributeMap;",
        "Lcom/laiwang/protocol/core/Constants;"
    }
.end annotation


# instance fields
.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected messageID:Lcom/laiwang/protocol/core/MessageID;

.field protected payload:[B

.field protected reply:Lcom/laiwang/protocol/android/Reply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/laiwang/protocol/android/Reply",
            "<TR;>;"
        }
    .end annotation
.end field

.field protected startline:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    .local p1, "startLine":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/laiwang/protocol/android/bd;-><init>(Ljava/lang/Object;Lcom/laiwang/protocol/core/MessageID;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lcom/laiwang/protocol/core/MessageID;)V
    .locals 1
    .param p2, "messageID"    # Lcom/laiwang/protocol/core/MessageID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/laiwang/protocol/core/MessageID;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    .local p1, "startLine":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/laiwang/protocol/android/bd;->startline:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bd;->headers:Ljava/util/Map;

    .line 31
    iput-object p2, p0, Lcom/laiwang/protocol/android/bd;->messageID:Lcom/laiwang/protocol/core/MessageID;

    .line 32
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object p0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/bd;->headers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 110
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 112
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/laiwang/protocol/android/bd;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 128
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bd;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/bd;->headers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    iget-object v0, p0, Lcom/laiwang/protocol/android/bd;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bd;->getMessageID()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bd;->getMessageID()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/MessageID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getMessageID()Lcom/laiwang/protocol/core/MessageID;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/bd;->messageID:Lcom/laiwang/protocol/core/MessageID;

    if-nez v2, :cond_0

    .line 36
    const-string/jumbo v2, "mid"

    invoke-virtual {p0, v2}, Lcom/laiwang/protocol/android/bd;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "tmp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "v":[Ljava/lang/String;
    new-instance v2, Lcom/laiwang/protocol/core/MessageID;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/laiwang/protocol/core/MessageID;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/laiwang/protocol/android/bd;->messageID:Lcom/laiwang/protocol/core/MessageID;

    .line 42
    .end local v0    # "tmp":Ljava/lang/String;
    .end local v1    # "v":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/bd;->messageID:Lcom/laiwang/protocol/core/MessageID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 35
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getReply()Lcom/laiwang/protocol/android/Reply;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/laiwang/protocol/android/Reply",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    iget-object v0, p0, Lcom/laiwang/protocol/android/bd;->reply:Lcom/laiwang/protocol/android/Reply;

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lcom/laiwang/protocol/android/bd;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    const/4 v1, 0x0

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v1

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/bd;->headers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 80
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public payload([B)V
    .locals 0
    .param p1, "payload"    # [B

    .prologue
    .line 69
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    iput-object p1, p0, Lcom/laiwang/protocol/android/bd;->payload:[B

    .line 70
    return-void
.end method

.method public payload()[B
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    iget-object v0, p0, Lcom/laiwang/protocol/android/bd;->payload:[B

    return-object v0
.end method

.method public print()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/laiwang/protocol/android/bd;->startline:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v3, p0, Lcom/laiwang/protocol/android/bd;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "v":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 149
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "v":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public resetStartLine(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    .local p1, "startLine":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/laiwang/protocol/android/bd;->startline:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    :goto_0
    return-object p0

    .line 121
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 122
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/laiwang/protocol/android/bd;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 88
    .local v0, "localHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89
    iput-object v0, p0, Lcom/laiwang/protocol/android/bd;->headers:Ljava/util/Map;

    .line 90
    return-void
.end method

.method public declared-synchronized setMessageID(Lcom/laiwang/protocol/core/MessageID;)V
    .locals 1
    .param p1, "messageID"    # Lcom/laiwang/protocol/core/MessageID;

    .prologue
    .line 53
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/laiwang/protocol/android/bd;->messageID:Lcom/laiwang/protocol/core/MessageID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setReply(Lcom/laiwang/protocol/android/Reply;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/android/Reply",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    .local p1, "reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<TR;>;"
    iput-object p1, p0, Lcom/laiwang/protocol/android/bd;->reply:Lcom/laiwang/protocol/android/Reply;

    .line 139
    return-void
.end method

.method public startLine()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/laiwang/protocol/android/bd;, "Lcom/laiwang/protocol/android/bd<TT;TR;>;"
    iget-object v0, p0, Lcom/laiwang/protocol/android/bd;->startline:Ljava/lang/Object;

    return-object v0
.end method
