.class public Lanet/channel/strategy/SafeAislesMap;
.super Ljava/lang/Object;
.source "SafeAislesMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_RESULT:Ljava/lang/String; = "No_Result"

.field private static final serialVersionUID:J = -0x6c39d67633fe8c1bL


# instance fields
.field private schemeMap:Lanet/channel/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanet/channel/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    .line 24
    invoke-virtual {p0}, Lanet/channel/strategy/SafeAislesMap;->checkInit()V

    .line 25
    return-void
.end method


# virtual methods
.method checkInit()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 28
    iget-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lanet/channel/util/LruCache;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lanet/channel/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    .line 31
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    invoke-static {}, Lkg;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v1, v2}, Lanet/channel/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    const-string/jumbo v1, "gw.alicdn.com"

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v1, v2}, Lanet/channel/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    const-string/jumbo v1, "h5.m.taobao.com"

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v1, v2}, Lanet/channel/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public getSafeAislesByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lku;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    :cond_0
    const-string/jumbo v0, "No_Result"

    .line 87
    :cond_1
    :goto_0
    return-object v0

    .line 78
    :cond_2
    iget-object v2, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    invoke-virtual {v1, p1}, Lanet/channel/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "safeAisle":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 81
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    const-string/jumbo v3, "No_Result"

    invoke-virtual {v1, p1, v3}, Lanet/channel/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-static {p1}, Lkg;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "No_Result"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_4
    const-string/jumbo v0, "https"

    goto :goto_0

    .line 83
    .end local v0    # "safeAisle":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public putSafeAisles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lku;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string/jumbo v0, "http"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "https"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :cond_2
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    invoke-virtual {v0, p1, p2}, Lanet/channel/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    monitor-enter v1

    .line 106
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SafeAislesMap: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    invoke-virtual {v2}, Lanet/channel/util/LruCache;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Lke$c;)V
    .locals 7
    .param p1, "response"    # Lke$c;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "checkAccsSession":Z
    iget-object v3, p1, Lke$c;->c:[Lke$b;

    if-nez v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v4, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    monitor-enter v4

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    iget-object v3, p1, Lke$c;->c:[Lke$b;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 44
    iget-object v3, p1, Lke$c;->c:[Lke$b;

    aget-object v1, v3, v2

    .line 45
    .local v1, "dnsInfo":Lke$b;
    iget-boolean v3, v1, Lke$b;->m:Z

    if-eqz v3, :cond_3

    .line 46
    iget-object v3, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    iget-object v5, v1, Lke$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lanet/channel/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 49
    :cond_3
    iget-boolean v3, v1, Lke$b;->o:Z

    if-nez v3, :cond_2

    .line 53
    const-string/jumbo v3, "http"

    iget-object v5, v1, Lke$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "https"

    iget-object v5, v1, Lke$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 55
    iget-object v3, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    iget-object v5, v1, Lke$b;->a:Ljava/lang/String;

    const-string/jumbo v6, "No_Result"

    invoke-virtual {v3, v5, v6}, Lanet/channel/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :goto_3
    if-nez v0, :cond_2

    iget-object v3, v1, Lke$b;->a:Ljava/lang/String;

    invoke-static {v3}, Lkg;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    const/4 v0, 0x1

    goto :goto_2

    .line 57
    :cond_4
    iget-object v3, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/util/LruCache;

    iget-object v5, v1, Lke$b;->a:Ljava/lang/String;

    iget-object v6, v1, Lke$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lanet/channel/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 63
    .end local v1    # "dnsInfo":Lke$b;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    const/4 v3, 0x1

    invoke-static {v3}, Lanet/channel/util/ALog;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 65
    const-string/jumbo v3, "awcn.SafeAislesMap"

    invoke-virtual {p0}, Lanet/channel/strategy/SafeAislesMap;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_6
    if-eqz v0, :cond_0

    .line 1033
    sget-object v3, Lia$b;->a:Lia;

    .line 68
    invoke-virtual {v3}, Lia;->a()V

    goto :goto_0
.end method
