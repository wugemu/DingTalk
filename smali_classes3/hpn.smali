.class final Lhpn;
.super Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
.source "SafeTunnelResourceLoader.java"


# static fields
.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "SafeTunnelResourceLoade"

    sput-object v0, Lhpn;->e:Ljava/lang/String;

    return-void
.end method

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
    .line 33
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;-><init>(Lhph;Ljava/lang/String;Ljava/util/Map;Lhpd;)V

    .line 34
    return-void
.end method

.method static synthetic a(Lhpn;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p0, "x0"    # Lhpn;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 28
    .line 6154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6155
    if-eqz p1, :cond_1

    .line 6156
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6157
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6158
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhjg;

    .line 6159
    if-eqz v1, :cond_0

    iget-object v4, v1, Lhjg;->a:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 6160
    iget-object v1, v1, Lhjg;->a:Ljava/util/List;

    .line 6161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v4, 0x2c

    invoke-static {v1, v4}, Lcom/laiwang/protocol/util/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v1

    .line 6162
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_1
    return-object v2
.end method

.method private a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V
    .locals 9
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;
    .param p2, "cacheResource"    # Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 64
    .line 5055
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 5059
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 64
    invoke-static {v7}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lhph;->b(Ljava/lang/String;)V

    .line 6059
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 66
    .local v4, "reqUrlStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 6067
    .local v5, "u":Landroid/net/Uri;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 69
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "Host"

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v6, "Accept-Encoding"

    const-string/jumbo v7, "gzip"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v6, "X-Agent"

    const-string/jumbo v7, "hydro"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v6, "X-Requested-With"

    const-string/jumbo v7, "tunnel"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v2, Lhjh;

    invoke-direct {v2}, Lhjh;-><init>()V

    .line 74
    .local v2, "isvHttpRequest":Lhjh;
    const-string/jumbo v6, "GET"

    iput-object v6, v2, Lhjh;->a:Ljava/lang/String;

    .line 75
    iput-object v1, v2, Lhjh;->c:Ljava/util/Map;

    .line 76
    iput-object v4, v2, Lhjh;->b:Ljava/lang/String;

    .line 77
    const-string/jumbo v6, "Referer"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 78
    .local v3, "pageUrl":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "appId"

    const-string/jumbo v7, "X-Micro-App-Id"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v6, "pageUrl"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v6, "fromType"

    const-string/jumbo v7, "1"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iput-object v0, v2, Lhjh;->e:Ljava/util/Map;

    .line 85
    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Lhpn$1;

    invoke-direct {v8, p0, p2, p1, v3}, Lhpn$1;-><init>(Lhpn;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Ljava/lang/String;)V

    invoke-static {v2, v3, v6, v7, v8}, Lhig;->a(Lhjh;Ljava/lang/String;ZZLcmi;)V

    .line 124
    return-void
.end method

.method static synthetic a(Lhpn;Lhpg;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
    .locals 6
    .param p0, "x0"    # Lhpn;
    .param p1, "x1"    # Lhpg;
    .param p2, "x2"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    .prologue
    const-wide/16 v4, 0x0

    .line 28
    .line 7128
    if-eqz p1, :cond_2

    iget-object v0, p1, Lhpg;->a:[B

    if-eqz v0, :cond_2

    .line 7129
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lhpg;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p2, v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/io/InputStream;)V

    .line 7132
    iget v0, p1, Lhpg;->b:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p1, Lhpg;->b:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    .line 7133
    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 7134
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;

    iget-object v1, p1, Lhpg;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;-><init>(Ljava/util/Map;)V

    .line 7135
    sget-object v1, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    if-ne v1, v2, :cond_0

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->b:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 8055
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 7137
    invoke-interface {v0}, Lhph;->d()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v0

    .line 8059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 7138
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a(Ljava/lang/String;Lhpg;)V

    .line 7143
    :cond_0
    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 9055
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 9059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 7144
    invoke-static {v1}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lhpg;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lhph;->a(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void

    .line 7147
    :cond_2
    const-string/jumbo v0, "H5"

    .line 10059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 7147
    const-string/jumbo v2, "default loader"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7149
    const-string/jumbo v0, "error in response"

    invoke-interface {p2, v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
    .locals 8
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    .line 1055
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 39
    invoke-interface {v1}, Lhph;->d()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v1

    .line 1059
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/net/HydroCache;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    move-result-object v0

    .line 40
    .local v0, "cacheResource":Lcom/alibaba/lightapp/runtime/net/HydroCache$a;
    if-nez v0, :cond_0

    .line 41
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lhpn;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V

    .line 61
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->d:Z

    if-nez v1, :cond_1

    .line 45
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v1

    .line 2059
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 45
    const-string/jumbo v3, "HYDRO"

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "hit cache"

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logLow(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    iget-object v2, v2, Lhpl;->a:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/io/InputStream;)V

    .line 47
    const-string/jumbo v1, "safeTunnel"

    .line 3059
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 47
    const-string/jumbo v3, "LwpQuest"

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "\u547d\u4e2dcache"

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3067
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 52
    const-string/jumbo v2, "If-None_Match"

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4067
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 55
    const-string/jumbo v2, "If-Modified-Since"

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_3
    invoke-direct {p0, p1, v0}, Lhpn;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V

    goto :goto_0
.end method
