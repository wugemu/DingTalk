.class public final Lhpk;
.super Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
.source "PersistResourceLoader.java"


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
    .line 29
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;-><init>(Lhph;Ljava/lang/String;Ljava/util/Map;Lhpd;)V

    .line 30
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
    .line 52
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    iget-object v1, v1, Lhpl;->a:[B

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p2, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    iget-object v2, v2, Lhpl;->a:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/io/InputStream;)V

    .line 88
    :goto_0
    return-void

    .line 3055
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 3059
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 59
    invoke-static {v2}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lhph;->b(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lhpf;

    .line 4059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 4067
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 60
    invoke-direct {v0, v1, v2}, Lhpf;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    .local v0, "req":Lhpf;
    new-instance v1, Lhpb;

    new-instance v2, Lhpk$1;

    invoke-direct {v2, p0, p2, p1}, Lhpk$1;-><init>(Lhpk;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V

    invoke-direct {v1, v0, v2}, Lhpb;-><init>(Lhpf;Lhpb$a;)V

    .line 85
    invoke-virtual {v1}, Lhpb;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5055
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 5059
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 87
    invoke-static {v2}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lhph;->c(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "req":Lhpf;
    :catchall_0
    move-exception v1

    .line 6055
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 6059
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 87
    invoke-static {v3}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lhph;->c(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Lhpk;Lhpg;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
    .locals 4
    .param p0, "x0"    # Lhpk;
    .param p1, "x1"    # Lhpg;
    .param p2, "x2"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    .line 6101
    if-eqz p1, :cond_2

    iget-object v0, p1, Lhpg;->a:[B

    if-eqz v0, :cond_2

    .line 6102
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lhpg;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p2, v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/io/InputStream;)V

    .line 6105
    iget v0, p1, Lhpg;->b:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p1, Lhpg;->b:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    .line 6106
    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 6107
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;

    iget-object v1, p1, Lhpg;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;-><init>(Ljava/util/Map;)V

    .line 6108
    sget-object v1, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    if-ne v1, v0, :cond_0

    .line 7055
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 6109
    invoke-interface {v0}, Lhph;->e()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v0

    .line 7059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 6110
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a(Ljava/lang/String;Lhpg;)V

    .line 6115
    :cond_0
    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 8055
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 8059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 6116
    invoke-static {v1}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lhph;->a(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void

    .line 6120
    :cond_2
    const-string/jumbo v0, "error in response"

    invoke-interface {p2, v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lhpk;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "x0"    # Lhpk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 15
    .line 8092
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;-><init>()V

    .line 8093
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setResUrl(Ljava/lang/String;)V

    .line 8094
    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setLoadType(Ljava/lang/String;)V

    .line 8095
    invoke-virtual {v0, p3}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setLoadStatus(I)V

    .line 8096
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v1

    .line 9063
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->c:Ljava/lang/String;

    .line 8096
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->updateResInfo(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a()V

    return-void
.end method

.method final a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
    .locals 6
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 34
    .line 1067
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 35
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 36
    const-string/jumbo v3, "Cache-Control"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    .local v0, "cacheParam":Ljava/lang/String;
    const-string/jumbo v3, "max-age=0"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-direct {p0, p1, v5}, Lhpk;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V

    .line 48
    .end local v0    # "cacheParam":Ljava/lang/String;
    :goto_0
    return-void

    .line 2055
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 42
    invoke-interface {v3}, Lhph;->e()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v3

    .line 2059
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    move-result-object v1

    .line 43
    .local v1, "cacheResource":Lcom/alibaba/lightapp/runtime/net/HydroCache$a;
    if-nez v1, :cond_1

    .line 44
    invoke-direct {p0, p1, v5}, Lhpk;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {p0, p1, v1}, Lhpk;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Lhpj;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a(Lhpj;)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b()V

    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
