.class public final Lhpi;
.super Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
.source "LWPResourceLoader.java"


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
    .line 34
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;-><init>(Lhph;Ljava/lang/String;Ljava/util/Map;Lhpd;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lhpi;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhpi;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p1}, Lhpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 176
    move-object v2, p0

    .line 177
    .local v2, "key":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 179
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 180
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "fragment":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v4, ""

    .line 183
    .local v4, "replaceFragmentTarget":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 184
    const-string/jumbo v9, ""

    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 6086
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 6090
    const-string/jumbo v9, "rocket-1"

    invoke-static {v9, p0}, Lhpm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6091
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 187
    .local v6, "rtType":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 188
    const-string/jumbo v9, "dd_rt_type"

    invoke-virtual {v8, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 191
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 192
    .local v7, "rtTypeInt":I
    invoke-virtual {v8}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "query":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v5, ""

    .line 195
    .local v5, "replaceQueryTarget":Ljava/lang/String;
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 209
    .end local v1    # "fragment":Ljava/lang/String;
    .end local v3    # "query":Ljava/lang/String;
    .end local v4    # "replaceFragmentTarget":Ljava/lang/String;
    .end local v5    # "replaceQueryTarget":Ljava/lang/String;
    .end local v6    # "rtType":Ljava/lang/String;
    .end local v7    # "rtTypeInt":I
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_3
    return-object v2

    .line 182
    .restart local v1    # "fragment":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v10, "#"

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 6095
    .restart local v4    # "replaceFragmentTarget":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "rocket-2"

    invoke-static {v9, p0}, Lhpm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6096
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 6100
    const-string/jumbo v9, "rocket-3"

    invoke-static {v9, p0}, Lhpm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6101
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 6105
    const-string/jumbo v9, "rocket-4"

    invoke-static {v9, p0}, Lhpm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6106
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 6110
    const-string/jumbo v9, "rocket-5"

    invoke-static {v9, p0}, Lhpm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6111
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 6115
    :cond_6
    const-string/jumbo v6, ""

    goto :goto_1

    .line 194
    .restart local v3    # "query":Ljava/lang/String;
    .restart local v6    # "rtType":Ljava/lang/String;
    .restart local v7    # "rtTypeInt":I
    :cond_7
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v10, "?"

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 198
    .restart local v5    # "replaceQueryTarget":Ljava/lang/String;
    :pswitch_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 199
    const-string/jumbo v9, ""

    invoke-virtual {v2, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_3

    .line 204
    .end local v1    # "fragment":Ljava/lang/String;
    .end local v3    # "query":Ljava/lang/String;
    .end local v4    # "replaceFragmentTarget":Ljava/lang/String;
    .end local v5    # "replaceQueryTarget":Ljava/lang/String;
    .end local v6    # "rtType":Ljava/lang/String;
    .end local v7    # "rtTypeInt":I
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$b;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
    .locals 12
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;
    .param p2, "cacheResource"    # Lcom/alibaba/lightapp/runtime/net/HydroCache$b;
    .param p3, "forceReloadCallback"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 60
    .line 4055
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 4059
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 60
    invoke-static {v2}, Lhpo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lhph;->b(Ljava/lang/String;)V

    .line 4067
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 63
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Referer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 64
    .local v6, "pageUrl":Ljava/lang/String;
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v1

    invoke-virtual {v1, v6}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v11

    .line 65
    .local v11, "tempMicroAppInfo":Lhfo$b;
    new-instance v3, Lhkc;

    invoke-direct {v3}, Lhkc;-><init>()V

    .line 5059
    .local v3, "rocketRequestModel":Lhkc;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 66
    iput-object v1, v3, Lhkc;->a:Ljava/lang/String;

    .line 67
    iget-object v1, v11, Lhfo$b;->c:Ljava/lang/String;

    iput-object v1, v3, Lhkc;->c:Ljava/lang/String;

    .line 5067
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 68
    const-string/jumbo v2, "Cookie"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lhkc;->d:Ljava/lang/String;

    .line 6067
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 69
    const-string/jumbo v2, "User-Agent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lhkc;->e:Ljava/lang/String;

    .line 70
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p2, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->d:Ljava/lang/String;

    iput-object v1, v3, Lhkc;->b:Ljava/lang/String;

    .line 73
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 74
    .local v8, "startTime":J
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/RocketIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/lightapp/runtime/idl/RocketIService;

    .line 75
    .local v10, "rocketIService":Lcom/alibaba/lightapp/runtime/idl/RocketIService;
    new-instance v1, Lhpi$1;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v9}, Lhpi$1;-><init>(Lhpi;Lhkc;Lcom/alibaba/lightapp/runtime/net/HydroCache$b;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;J)V

    invoke-interface {v10, v3, v1}, Lcom/alibaba/lightapp/runtime/idl/RocketIService;->getLatestPage(Lhkc;Lcmi;)V

    .line 158
    return-void
.end method

.method static synthetic a(Lhpi;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lhpi;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    .line 7162
    invoke-static {}, Lhhr;->a()Lhhr;

    const-string/jumbo v0, "hybrid_enable_rocket_lwp_degraded"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 7163
    if-eqz v0, :cond_1

    .line 7164
    if-eqz p1, :cond_0

    .line 7165
    const-string/jumbo v0, "lwpDegraded"

    invoke-interface {p1, v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 7168
    :cond_1
    if-eqz p1, :cond_0

    .line 7169
    invoke-interface {p1, p2}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lhpi;Ljava/lang/String;J)V
    .locals 4
    .param p0, "x0"    # Lhpi;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 29
    .line 6214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6215
    const-string/jumbo v1, "eTag"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6216
    const-string/jumbo v1, "speed"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6217
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "rocket_lwp_speed"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    return-void
.end method

.method private static a(Lcom/alibaba/lightapp/runtime/net/HydroCache$b;)Z
    .locals 1
    .param p0, "cacheResource"    # Lcom/alibaba/lightapp/runtime/net/HydroCache$b;

    .prologue
    .line 221
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->e:Lhpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->e:Lhpl;

    iget-object v0, v0, Lhpl;->a:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lhpi;Lcom/alibaba/lightapp/runtime/net/HydroCache$b;)Z
    .locals 1
    .param p0, "x0"    # Lhpi;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/net/HydroCache$b;

    .prologue
    .line 29
    invoke-static {p1}, Lhpi;->a(Lcom/alibaba/lightapp/runtime/net/HydroCache$b;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lhpi;Lhkd;)Z
    .locals 1
    .param p0, "x0"    # Lhpi;
    .param p1, "x1"    # Lhkd;

    .prologue
    .line 29
    .line 7225
    if-eqz p1, :cond_0

    iget-object v0, p1, Lhkd;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 7226
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 7228
    :cond_1
    iget-object v0, p1, Lhkd;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a()V

    return-void
.end method

.method final a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
    .locals 7
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 39
    const-string/jumbo v2, "lwp"

    .line 1059
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 39
    const-string/jumbo v4, "lwpResourceExecute"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2055
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 40
    invoke-interface {v2}, Lhph;->d()Lcom/alibaba/lightapp/runtime/net/HydroCache;

    move-result-object v2

    .line 2059
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 40
    invoke-static {v3}, Lhpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/net/HydroCache;->b(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/net/HydroCache$b;

    move-result-object v0

    .line 41
    .local v0, "cacheResource":Lcom/alibaba/lightapp/runtime/net/HydroCache$b;
    invoke-static {v0}, Lhpi;->a(Lcom/alibaba/lightapp/runtime/net/HydroCache$b;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 43
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->e:Lhpl;

    iget-object v3, v3, Lhpl;->a:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/io/InputStream;)V

    .line 2252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$b;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    .line 45
    :cond_0
    if-eqz v1, :cond_1

    .line 46
    invoke-direct {p0, v6, v0, p1}, Lhpi;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$b;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 3055
    :cond_2
    invoke-direct {p0, p1, v0, v6}, Lhpi;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$b;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Lhpj;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a(Lhpj;)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b()V

    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
