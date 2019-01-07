.class public final Lhpp;
.super Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;
.source "AsyncDefaultResourceLoader.java"


# direct methods
.method constructor <init>(Lhps;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "loaderContext"    # Lhps;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhps;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;-><init>(Lhps;Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    return-void
.end method

.method static synthetic a(Lhpp;Lhpg;Lhpr;)V
    .locals 6
    .param p0, "x0"    # Lhpp;
    .param p1, "x1"    # Lhpg;
    .param p2, "x2"    # Lhpr;

    .prologue
    const-wide/16 v4, 0x0

    .line 17
    .line 8106
    if-eqz p1, :cond_3

    iget-object v0, p1, Lhpg;->a:[B

    if-eqz v0, :cond_3

    .line 8107
    if-eqz p2, :cond_0

    .line 8108
    invoke-interface {p2, p1}, Lhpr;->onSuccess(Lhpg;)V

    .line 8112
    :cond_0
    iget v0, p1, Lhpg;->b:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    iget v0, p1, Lhpg;->b:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 8113
    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 8114
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;

    iget-object v1, p1, Lhpg;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;-><init>(Ljava/util/Map;)V

    .line 8115
    sget-object v1, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    if-ne v1, v2, :cond_1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->b:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 9039
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->a:Lhps;

    .line 8117
    invoke-interface {v0}, Lhps;->b()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v0

    .line 9043
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 8118
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a(Ljava/lang/String;Lhpg;)V

    .line 8123
    :cond_1
    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 10039
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->a:Lhps;

    .line 10043
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 8124
    invoke-static {v1}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lhps;->a(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void

    .line 8128
    :cond_3
    if-eqz p2, :cond_2

    .line 8129
    const/16 v0, 0x3ea

    const-string/jumbo v1, "error in response"

    invoke-interface {p2, v0, v1}, Lhpr;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lhpp;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lhpp;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lhpp;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lhpr;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V
    .locals 3
    .param p1, "callback"    # Lhpr;
    .param p2, "cacheResource"    # Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 56
    .line 5043
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 56
    invoke-static {v1}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    new-instance v0, Lhpf;

    .line 6043
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 6051
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->d:Ljava/util/Map;

    .line 57
    invoke-direct {v0, v1, v2}, Lhpf;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    .local v0, "req":Lhpf;
    new-instance v1, Lhpb;

    new-instance v2, Lhpp$1;

    invoke-direct {v2, p0, p2, p1}, Lhpp$1;-><init>(Lhpp;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;Lhpr;)V

    invoke-direct {v1, v0, v2}, Lhpb;-><init>(Lhpf;Lhpb$a;)V

    .line 90
    invoke-virtual {v1}, Lhpb;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7043
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 92
    invoke-static {v1}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    return-void

    .line 92
    .end local v0    # "req":Lhpf;
    :catchall_0
    move-exception v1

    .line 8043
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 92
    invoke-static {v2}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "resUrl"    # Ljava/lang/String;
    .param p2, "loadType"    # Ljava/lang/String;
    .param p3, "code"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 97
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;-><init>()V

    .line 98
    .local v0, "resourceInfo":Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setResUrl(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setLoadType(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p3}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setLoadStatus(I)V

    .line 101
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v1

    .line 8047
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->c:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->updateResInfo(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;)V

    .line 102
    return-void
.end method


# virtual methods
.method final a(Lhpr;)V
    .locals 8
    .param p1, "callback"    # Lhpr;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 25
    .line 1039
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->a:Lhps;

    .line 25
    invoke-interface {v2}, Lhps;->b()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v2

    .line 1043
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    move-result-object v0

    .line 26
    .local v0, "cacheResource":Lcom/alibaba/lightapp/runtime/net/HydroCache$a;
    if-nez v0, :cond_1

    .line 27
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lhpp;->a(Lhpr;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->d:Z

    if-nez v2, :cond_2

    .line 31
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v2

    .line 2043
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 31
    const-string/jumbo v4, "HYDRO"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "hit cache"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logLow(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3043
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 32
    const-string/jumbo v3, "cache"

    const/4 v4, -0x1

    invoke-direct {p0, v2, v3, v4}, Lhpp;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    new-instance v1, Lhpg;

    invoke-direct {v1}, Lhpg;-><init>()V

    .line 34
    .local v1, "hydroResponse":Lhpg;
    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    iget-object v2, v2, Lhpl;->a:[B

    iput-object v2, v1, Lhpg;->a:[B

    .line 35
    const/16 v2, 0xc8

    iput v2, v1, Lhpg;->b:I

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1, v1}, Lhpr;->onSuccess(Lhpg;)V

    goto :goto_0

    .line 42
    .end local v1    # "hydroResponse":Lhpg;
    :cond_2
    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3051
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->d:Ljava/util/Map;

    .line 43
    const-string/jumbo v3, "If-None_Match"

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_3
    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4051
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->d:Ljava/util/Map;

    .line 46
    const-string/jumbo v3, "If-Modified-Since"

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_4
    invoke-direct {p0, p1, v0}, Lhpp;->a(Lhpr;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V

    goto :goto_0
.end method
