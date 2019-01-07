.class public Lcom/laiwang/protocol/android/ad;
.super Ljava/lang/Object;
.source "ServerPubKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/ad$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/ad;->a:Ljava/util/Map;

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 7

    .prologue
    .line 75
    const-class v5, Lcom/laiwang/protocol/android/ad;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "LWS_PUB_KEY_SNI"

    invoke-static {v4}, Lcom/laiwang/protocol/android/ck;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "oldSniStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/laiwang/protocol/android/ad;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "oldSniList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, "sni":Ljava/lang/String;
    invoke-static {v3}, Lcom/laiwang/protocol/android/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/laiwang/protocol/android/ck;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    .end local v1    # "oldSniList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "sni":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "clear ser pub key err"

    invoke-static {v4, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v5

    return-void

    .line 75
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bi$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "suits":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bi$b;>;"
    const-class v4, Lcom/laiwang/protocol/android/ad;

    monitor-enter v4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 56
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/laiwang/protocol/android/ad;->a()V

    .line 58
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/android/bi$b;

    .line 59
    .local v2, "suit":Lcom/laiwang/protocol/android/bi$b;
    if-eqz v2, :cond_2

    .line 61
    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bi$b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/android/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bi$b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bi$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/android/cj;->a([C)[B

    move-result-object v0

    .line 64
    .local v0, "bytes":[B
    sget-object v5, Lcom/laiwang/protocol/android/ad;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bi$b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 67
    .end local v0    # "bytes":[B
    .end local v2    # "suit":Lcom/laiwang/protocol/android/bi$b;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "load ser pub key err"

    invoke-static {v3, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 66
    :cond_3
    :try_start_3
    const-string/jumbo v3, "LWS_PUB_KEY_SNI"

    invoke-static {p0}, Lcom/laiwang/protocol/android/ad;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/laiwang/protocol/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)[B
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v2, Lcom/laiwang/protocol/android/ad;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/laiwang/protocol/android/ad;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .local v0, "pubKeys":[B
    if-nez v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/laiwang/protocol/android/ad;->b(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 30
    :cond_0
    monitor-exit v2

    return-object v0

    .line 27
    .end local v0    # "pubKeys":[B
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static b(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bi$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "suits":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bi$b;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/bi$b;

    .line 90
    .local v1, "suit":Lcom/laiwang/protocol/android/bi$b;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bi$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    .end local v1    # "suit":Lcom/laiwang/protocol/android/bi$b;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 6
    .param p0, "sni"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/android/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/android/ck;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    invoke-static {p0}, Lcom/laiwang/protocol/android/ad$a;->a(Ljava/lang/String;)Lcom/laiwang/protocol/android/ad$a;

    move-result-object v3

    .line 38
    .local v3, "pubKey":Lcom/laiwang/protocol/android/ad$a;
    if-nez v3, :cond_1

    move-object v2, v4

    .line 40
    .end local v3    # "pubKey":Lcom/laiwang/protocol/android/ad$a;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/android/cj;->a([C)[B

    move-result-object v0

    .line 42
    .local v0, "bytes":[B
    sget-object v5, Lcom/laiwang/protocol/android/ad;->a:Ljava/util/Map;

    invoke-interface {v5, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v0    # "bytes":[B
    .end local v2    # "key":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 38
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "pubKey":Lcom/laiwang/protocol/android/ad$a;
    :cond_1
    iget-object v2, v3, Lcom/laiwang/protocol/android/ad$a;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pubKey":Lcom/laiwang/protocol/android/ad$a;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "load ser pub key err"

    invoke-static {v5, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v0, v4

    .line 48
    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
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

    .prologue
    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    const/4 v2, 0x0

    .line 106
    :cond_0
    return-object v2

    .line 100
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 102
    .local v1, "prev":I
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "pos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 103
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "originalKey"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LWS_PUB_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
