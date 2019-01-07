.class final Lkna$1;
.super Lknh;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lknh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkne$a;)I
    .locals 1
    .param p1, "responseBuilder"    # Lkne$a;

    .prologue
    .line 171
    iget v0, p1, Lkne$a;->c:I

    return v0
.end method

.method public final a(Lkmm;Lkme;Lknu;)Ljava/net/Socket;
    .locals 6
    .param p1, "pool"    # Lkmm;
    .param p2, "address"    # Lkme;
    .param p3, "streamAllocation"    # Lknu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    .line 3138
    sget-boolean v0, Lkmm;->g:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3139
    :cond_0
    iget-object v0, p1, Lkmm;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lknr;

    .line 3140
    invoke-virtual {v0, p2, v1}, Lknr;->a(Lkme;Lkng;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3141
    invoke-virtual {v0}, Lknr;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3142
    invoke-virtual {p3}, Lknu;->b()Lknr;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 3501
    sget-boolean v1, Lknu;->j:Z

    if-nez v1, :cond_2

    iget-object v1, p3, Lknu;->d:Lkmm;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3502
    :cond_2
    iget-object v1, p3, Lknu;->i:Lknx;

    if-nez v1, :cond_3

    iget-object v1, p3, Lknu;->h:Lknr;

    iget-object v1, v1, Lknr;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v5, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3505
    :cond_4
    iget-object v1, p3, Lknu;->h:Lknr;

    iget-object v1, v1, Lknr;->j:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 3506
    invoke-virtual {p3, v5, v4, v4}, Lknu;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 3509
    iput-object v0, p3, Lknu;->h:Lknr;

    .line 3510
    iget-object v0, v0, Lknr;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 3143
    :goto_0
    return-object v0

    :cond_5
    move-object v0, v1

    .line 159
    goto :goto_0
.end method

.method public final a(Lkmm;Lkme;Lknu;Lkng;)Lknr;
    .locals 3
    .param p1, "pool"    # Lkmm;
    .param p2, "address"    # Lkme;
    .param p3, "streamAllocation"    # Lknu;
    .param p4, "route"    # Lkng;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 150
    .line 3123
    sget-boolean v0, Lkmm;->g:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3124
    :cond_0
    iget-object v0, p1, Lkmm;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lknr;

    .line 3125
    invoke-virtual {v0, p2, p4}, Lknr;->a(Lkme;Lkng;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3126
    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lknu;->a(Lknr;Z)V

    .line 3127
    :goto_0
    return-object v0

    .line 3130
    :cond_2
    const/4 v0, 0x0

    .line 150
    goto :goto_0
.end method

.method public final a(Lkmm;)Lkns;
    .locals 1
    .param p1, "connectionPool"    # Lkmm;

    .prologue
    .line 167
    iget-object v0, p1, Lkmm;->e:Lkns;

    return-object v0
.end method

.method public final a(Lkmn;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 5
    .param p1, "tlsConfiguration"    # Lkmn;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 176
    .line 5152
    iget-object v0, p1, Lkmn;->g:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5153
    sget-object v0, Lkmk;->a:Ljava/util/Comparator;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lkmn;->g:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lknj;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5155
    :goto_0
    iget-object v1, p1, Lkmn;->h:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 5156
    sget-object v1, Lknj;->h:Ljava/util/Comparator;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lkmn;->h:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lknj;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5161
    :goto_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 5162
    sget-object v3, Lkmk;->a:Ljava/util/Comparator;

    const-string/jumbo v4, "TLS_FALLBACK_SCSV"

    invoke-static {v3, v2, v4}, Lknj;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 5164
    if-eqz p3, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 5165
    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lknj;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5169
    :cond_0
    new-instance v2, Lkmn$a;

    invoke-direct {v2, p1}, Lkmn$a;-><init>(Lkmn;)V

    .line 5170
    invoke-virtual {v2, v0}, Lkmn$a;->a([Ljava/lang/String;)Lkmn$a;

    move-result-object v0

    .line 5171
    invoke-virtual {v0, v1}, Lkmn$a;->b([Ljava/lang/String;)Lkmn$a;

    move-result-object v0

    .line 5172
    invoke-virtual {v0}, Lkmn$a;->a()Lkmn;

    move-result-object v0

    .line 5139
    iget-object v1, v0, Lkmn;->h:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5140
    iget-object v1, v0, Lkmn;->h:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 5142
    :cond_1
    iget-object v1, v0, Lkmn;->g:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5143
    iget-object v0, v0, Lkmn;->g:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 177
    :cond_2
    return-void

    .line 5154
    :cond_3
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5157
    :cond_4
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final a(Lkmv$a;Ljava/lang/String;)V
    .locals 3
    .param p1, "builder"    # Lkmv$a;
    .param p2, "line"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 132
    .line 1265
    const-string/jumbo v0, ":"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1266
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1267
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lkmv$a;->b(Ljava/lang/String;Ljava/lang/String;)Lkmv$a;

    .line 133
    :goto_0
    return-void

    .line 1268
    :cond_0
    const-string/jumbo v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1271
    const-string/jumbo v0, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lkmv$a;->b(Ljava/lang/String;Ljava/lang/String;)Lkmv$a;

    goto :goto_0

    .line 1273
    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0, p2}, Lkmv$a;->b(Ljava/lang/String;Ljava/lang/String;)Lkmv$a;

    goto :goto_0
.end method

.method public final a(Lkmv$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lkmv$a;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p1, p2, p3}, Lkmv$a;->b(Ljava/lang/String;Ljava/lang/String;)Lkmv$a;

    .line 137
    return-void
.end method

.method public final a(Lkme;Lkme;)Z
    .locals 1
    .param p1, "a"    # Lkme;
    .param p2, "b"    # Lkme;

    .prologue
    .line 154
    invoke-virtual {p1, p2}, Lkme;->a(Lkme;)Z

    move-result v0

    return v0
.end method

.method public final a(Lkmm;Lknr;)Z
    .locals 1
    .param p1, "pool"    # Lkmm;
    .param p2, "connection"    # Lknr;

    .prologue
    .line 145
    .line 2163
    sget-boolean v0, Lkmm;->g:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2164
    :cond_0
    iget-boolean v0, p2, Lknr;->g:Z

    if-nez v0, :cond_1

    iget v0, p1, Lkmm;->b:I

    if-nez v0, :cond_2

    .line 2165
    :cond_1
    iget-object v0, p1, Lkmm;->d:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 2166
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2168
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2169
    const/4 v0, 0x0

    .line 145
    goto :goto_0
.end method

.method public final b(Lkmm;Lknr;)V
    .locals 2
    .param p1, "pool"    # Lkmm;
    .param p2, "connection"    # Lknr;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 163
    .line 4150
    sget-boolean v0, Lkmm;->g:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4151
    :cond_0
    iget-boolean v0, p1, Lkmm;->f:Z

    if-nez v0, :cond_1

    .line 4152
    const/4 v0, 0x1

    iput-boolean v0, p1, Lkmm;->f:Z

    .line 4153
    sget-object v0, Lkmm;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p1, Lkmm;->c:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4155
    :cond_1
    iget-object v0, p1, Lkmm;->d:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method
