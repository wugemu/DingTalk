.class final Lhpa;
.super Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
.source "DefaultResourceLoader.java"


# direct methods
.method constructor <init>(Lhph;Ljava/lang/String;Ljava/util/Map;Lhpd;)V
    .locals 0
    .param p1, "loaderContext"    # Lhph;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "is"    # Lhpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhph;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lhpd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;-><init>(Lhph;Ljava/lang/String;Ljava/util/Map;Lhpd;)V

    .line 21
    return-void
.end method

.method private a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V
    .locals 4
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;
    .param p2, "cacheResource"    # Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 51
    .line 5055
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 5059
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 51
    invoke-static {v2}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lhph;->b(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lhpf;

    .line 6059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 6067
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 52
    invoke-direct {v0, v1, v2}, Lhpf;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 53
    .local v0, "req":Lhpf;
    new-instance v1, Lhpb;

    new-instance v2, Lhpa$1;

    invoke-direct {v2, p0, p2, p1}, Lhpa$1;-><init>(Lhpa;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V

    invoke-direct {v1, v0, v2}, Lhpb;-><init>(Lhpf;Lhpb$a;)V

    .line 79
    invoke-virtual {v1}, Lhpb;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7055
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 7059
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 81
    invoke-static {v2}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lhph;->c(Ljava/lang/String;)V

    .line 82
    return-void

    .line 81
    .end local v0    # "req":Lhpf;
    :catchall_0
    move-exception v1

    .line 8055
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 8059
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 81
    invoke-static {v3}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lhph;->c(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Lhpa;Lhpg;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
    .locals 6
    .param p0, "x0"    # Lhpa;
    .param p1, "x1"    # Lhpg;
    .param p2, "x2"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    .prologue
    const-wide/16 v4, 0x0

    .line 16
    .line 8095
    if-eqz p1, :cond_2

    iget-object v0, p1, Lhpg;->a:[B

    if-eqz v0, :cond_2

    .line 8096
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lhpg;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p2, v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/io/InputStream;)V

    .line 8099
    iget v0, p1, Lhpg;->b:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p1, Lhpg;->b:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    .line 8100
    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 8101
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;

    iget-object v1, p1, Lhpg;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;-><init>(Ljava/util/Map;)V

    .line 8102
    sget-object v1, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    if-ne v1, v2, :cond_0

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->b:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 9055
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 8104
    invoke-interface {v0}, Lhph;->d()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v0

    .line 9059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 8105
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a(Ljava/lang/String;Lhpg;)V

    .line 8110
    :cond_0
    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 10055
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 10059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 8111
    invoke-static {v1}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lhph;->a(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void

    .line 8115
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 8115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8116
    const-string/jumbo v0, "error in response"

    invoke-interface {p2, v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lhpa;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lhpa;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lhpa;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
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
    .line 86
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;-><init>()V

    .line 87
    .local v0, "resourceInfo":Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setResUrl(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setLoadType(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p3}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setLoadStatus(I)V

    .line 90
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v1

    .line 8063
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->c:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->updateResInfo(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;)V

    .line 91
    return-void
.end method


# virtual methods
.method final a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
    .locals 7
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 25
    .line 1055
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 25
    invoke-interface {v1}, Lhph;->d()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v1

    .line 1059
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    move-result-object v0

    .line 26
    .local v0, "cacheResource":Lcom/alibaba/lightapp/runtime/net/HydroCache$a;
    if-nez v0, :cond_0

    .line 27
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lhpa;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V

    .line 47
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->d:Z

    if-nez v1, :cond_1

    .line 31
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v1

    .line 2059
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 31
    const-string/jumbo v3, "HYDRO"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "hit cache"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logLow(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 32
    const-string/jumbo v2, "cache"

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lhpa;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    iget-object v2, v2, Lhpl;->a:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3067
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 38
    const-string/jumbo v2, "If-None_Match"

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_2
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4067
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 41
    const-string/jumbo v2, "If-Modified-Since"

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_3
    invoke-direct {p0, p1, v0}, Lhpa;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V

    goto :goto_0
.end method
