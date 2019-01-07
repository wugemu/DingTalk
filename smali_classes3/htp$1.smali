.class final Lhtp$1;
.super Ljava/lang/Thread;
.source "SendManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhtp;->a([Lhte;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhtp;


# direct methods
.method constructor <init>(Lhtp;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhtp;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lhtp$1;->a:Lhtp;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 97
    :try_start_0
    iget-object v5, p0, Lhtp$1;->a:Lhtp;

    iget-object v5, v5, Lhtp;->f:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 98
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lhte;>;>;"
    if-eqz v3, :cond_9

    .line 99
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lhte;>;"
    if-eqz v2, :cond_4

    .line 103
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhte;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .local v0, "crashReport":Lhte;
    if-nez v0, :cond_0

    .line 155
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 160
    .end local v0    # "crashReport":Lhte;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lhte;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lhte;>;>;"
    :catchall_0
    move-exception v5

    iget-object v7, p0, Lhtp$1;->a:Lhtp;

    iget-object v7, v7, Lhtp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v5

    .line 106
    .restart local v0    # "crashReport":Lhte;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lhte;>;"
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lhte;>;>;"
    :cond_0
    :try_start_3
    iget-object v5, v0, Lhte;->f:Ljava/lang/String;

    invoke-static {v5}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lhte;->c:Ljava/lang/String;

    .line 107
    invoke-static {v5}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lhte;->d:Ljava/lang/String;

    .line 108
    invoke-static {v5}, Lhua;->a(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lhte;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    :goto_1
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v5, "remote invalid crash report."

    invoke-static {v5, v1}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 155
    .end local v0    # "crashReport":Lhte;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    :try_start_7
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1186
    .restart local v0    # "crashReport":Lhte;
    :cond_2
    :try_start_8
    iget-object v5, v0, Lhte;->g:Ljava/lang/String;

    invoke-static {v5}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1187
    invoke-virtual {v0}, Lhte;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lhte;->g:Ljava/lang/String;

    .line 1190
    :cond_3
    iget-object v5, v0, Lhte;->g:Ljava/lang/String;

    invoke-static {v5}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1191
    iget-object v5, v0, Lhte;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "log end:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 118
    :goto_2
    if-eqz v5, :cond_8

    .line 2132
    iget-object v5, v0, Lhte;->b:Lhtn;

    .line 2136
    iget-object v7, v0, Lhte;->h:Lhtl;

    new-instance v8, Lhtl$a;

    const-string/jumbo v9, "USERNICK"

    const-string/jumbo v10, "USERNICK"

    invoke-virtual {v5, v10}, Lhtn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lhtl;->a(Lhtk$a;)V

    .line 2137
    iget-object v7, v0, Lhte;->h:Lhtl;

    new-instance v8, Lhtl$a;

    const-string/jumbo v9, "BRAND"

    sget-object v10, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lhtl;->a(Lhtk$a;)V

    .line 2138
    iget-object v7, v0, Lhte;->h:Lhtl;

    new-instance v8, Lhtl$a;

    const-string/jumbo v9, "DEVICE_MODEL"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lhtl;->a(Lhtk$a;)V

    .line 2139
    iget-object v7, v0, Lhte;->h:Lhtl;

    new-instance v8, Lhtl$a;

    const-string/jumbo v9, "UTDID"

    const-string/jumbo v10, "UTDID"

    invoke-virtual {v5, v10}, Lhtn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lhtl;->a(Lhtk$a;)V

    .line 2140
    iget-object v7, v0, Lhte;->h:Lhtl;

    new-instance v8, Lhtl$a;

    const-string/jumbo v9, "IMEI"

    const-string/jumbo v10, "IMEI"

    invoke-virtual {v5, v10}, Lhtn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lhtl;->a(Lhtk$a;)V

    .line 2141
    iget-object v7, v0, Lhte;->h:Lhtl;

    new-instance v8, Lhtl$a;

    const-string/jumbo v9, "IMSI"

    const-string/jumbo v10, "IMSI"

    invoke-virtual {v5, v10}, Lhtn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lhtl;->a(Lhtk$a;)V

    .line 2142
    iget-object v7, v0, Lhte;->h:Lhtl;

    new-instance v8, Lhtl$a;

    const-string/jumbo v9, "DEVICE_ID"

    const-string/jumbo v10, "DEVICE_ID"

    invoke-virtual {v5, v10}, Lhtn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lhtl;->a(Lhtk$a;)V

    .line 2143
    iget-object v7, v0, Lhte;->h:Lhtl;

    new-instance v8, Lhtl$a;

    const-string/jumbo v9, "CHANNEL"

    const-string/jumbo v10, "CHANNEL"

    invoke-virtual {v5, v10}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lhtl;->a(Lhtk$a;)V

    .line 2144
    iget-object v7, v0, Lhte;->h:Lhtl;

    new-instance v8, Lhtl$a;

    const-string/jumbo v9, "APP_ID"

    const-string/jumbo v10, "APP_ID"

    invoke-virtual {v5, v10}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lhtl;->a(Lhtk$a;)V

    .line 123
    iget-object v5, p0, Lhtp$1;->a:Lhtp;

    iget-object v5, v5, Lhtp;->h:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 149
    :catch_1
    move-exception v1

    .line 150
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v5, "send and del crash report."

    invoke-static {v5, v1}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 155
    .end local v0    # "crashReport":Lhte;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    :try_start_a
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .restart local v0    # "crashReport":Lhte;
    :cond_5
    move v5, v6

    .line 1193
    goto/16 :goto_2

    .line 131
    :cond_6
    :try_start_b
    iget-object v5, p0, Lhtp$1;->a:Lhtp;

    iget-object v5, v5, Lhtp;->e:Lhtp$b;

    invoke-interface {v5, v0}, Lhtp$b;->a(Lhte;)Z

    move-result v4

    .line 134
    .local v4, "snedSuccess":Z
    iget-object v5, p0, Lhtp$1;->a:Lhtp;

    iget-object v5, v5, Lhtp;->h:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_5

    .line 142
    :cond_7
    if-eqz v4, :cond_4

    .line 143
    invoke-virtual {v0}, Lhte;->a()V

    goto :goto_4

    .line 145
    .end local v4    # "snedSuccess":Z
    :cond_8
    iget-boolean v5, v0, Lhte;->i:Z

    if-nez v5, :cond_4

    .line 147
    invoke-virtual {v0}, Lhte;->a()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 160
    .end local v0    # "crashReport":Lhte;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lhte;>;"
    :cond_9
    iget-object v5, p0, Lhtp$1;->a:Lhtp;

    iget-object v5, v5, Lhtp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    return-void
.end method
