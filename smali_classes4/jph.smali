.class public Ljph;
.super Ljava/lang/Object;
.source "WMLPrefetch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljph$a;
    }
.end annotation


# static fields
.field private static a:Ljph;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljpg;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljph;->b:Ljava/util/List;

    .line 17
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Ljph;->c:Landroid/util/LruCache;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljph;->d:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public static a()Ljph;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Ljph;->a:Ljph;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Ljph;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Ljph;->a:Ljph;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljph;

    invoke-direct {v0}, Ljph;-><init>()V

    sput-object v0, Ljph;->a:Ljph;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Ljph;->a:Ljph;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "decision":Ljpi;
    const/4 v3, 0x0

    .line 46
    .local v3, "targetHandler":Ljpg;
    iget-object v6, p0, Ljph;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljpg;

    .line 47
    .local v1, "handler":Ljpg;
    invoke-interface {v1}, Ljpg;->a()Ljpi;

    move-result-object v0

    .line 48
    iget-object v4, v0, Ljpi;->a:Lcom/taobao/weaver/prefetch/PrefetchType;

    .line 49
    .local v4, "type":Lcom/taobao/weaver/prefetch/PrefetchType;
    sget-object v7, Lcom/taobao/weaver/prefetch/PrefetchType;->NOT_SUPPORTED:Lcom/taobao/weaver/prefetch/PrefetchType;

    if-eq v4, v7, :cond_0

    .line 51
    sget-object v7, Lcom/taobao/weaver/prefetch/PrefetchType;->CUSTOMIZED:Lcom/taobao/weaver/prefetch/PrefetchType;

    if-eq v4, v7, :cond_1

    .line 53
    sget-object v7, Lcom/taobao/weaver/prefetch/PrefetchType;->SUPPORTED:Lcom/taobao/weaver/prefetch/PrefetchType;

    if-ne v4, v7, :cond_0

    .line 54
    move-object v3, v1

    .line 59
    .end local v1    # "handler":Ljpg;
    .end local v4    # "type":Lcom/taobao/weaver/prefetch/PrefetchType;
    :cond_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 1102
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "key":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    :cond_2
    iget-object v5, p0, Ljph;->d:Ljava/util/Map;

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v5, Ljph$1;

    invoke-direct {v5, p0, v2}, Ljph$1;-><init>(Ljph;Ljava/lang/String;)V

    .line 89
    invoke-interface {v3}, Ljpg;->b()Ljava/lang/String;

    move-result-object v5

    .line 91
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-object v5
.end method
