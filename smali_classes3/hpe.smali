.class public final Lhpe;
.super Ljava/lang/Object;
.source "HydroNetStack.java"

# interfaces
.implements Lhph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhpe$e;,
        Lhpe$c;,
        Lhpe$d;,
        Lhpe$b;,
        Lhpe$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lhpe$c;

.field public b:Lhpe$b;

.field public c:Lhpe$e;

.field public d:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhpe$d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field private i:Lcom/alibaba/lightapp/runtime/net/HydroCache;

.field private j:Lcom/alibaba/lightapp/runtime/net/HydroCache;

.field private k:Lcom/alibaba/lightapp/runtime/net/HydroPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 51
    sput-object v0, Lhpe;->e:Ljava/util/Set;

    const-string/jumbo v1, "taobao.net"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lhpe;->e:Ljava/util/Set;

    const-string/jumbo v1, "youku.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lhpe;->e:Ljava/util/Set;

    const-string/jumbo v1, "alicdn.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lhpe;->e:Ljava/util/Set;

    const-string/jumbo v1, "tmall.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v1, p0, Lhpe;->g:Ljava/util/Set;

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhpe;->d:Z

    .line 87
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v1, p0, Lhpe;->f:Ljava/util/Map;

    .line 88
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lhpe;->h:Landroid/content/Context;

    .line 89
    new-instance v1, Lcom/alibaba/lightapp/runtime/net/HydroCache;

    iget-object v2, p0, Lhpe;->h:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/net/HydroCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhpe;->i:Lcom/alibaba/lightapp/runtime/net/HydroCache;

    .line 90
    new-instance v1, Lcom/alibaba/lightapp/runtime/net/HydroCache;

    iget-object v2, p0, Lhpe;->h:Landroid/content/Context;

    const-string/jumbo v3, "PERSISTCACHE"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/net/HydroCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lhpe;->j:Lcom/alibaba/lightapp/runtime/net/HydroCache;

    .line 91
    new-instance v1, Lcom/alibaba/lightapp/runtime/net/HydroPolicy;

    iget-object v2, p0, Lhpe;->h:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/net/HydroPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhpe;->k:Lcom/alibaba/lightapp/runtime/net/HydroPolicy;

    .line 92
    const-string/jumbo v1, "HEALTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/Health;

    .line 93
    .local v0, "health":Lcom/alibaba/doraemon/health/Health;
    if-eqz v0, :cond_0

    .line 94
    new-instance v1, Lhpe$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhpe$b;-><init>(Lhpe;B)V

    iput-object v1, p0, Lhpe;->b:Lhpe$b;

    .line 95
    const-string/jumbo v1, "H5"

    iget-object v2, p0, Lhpe;->b:Lhpe$b;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/health/Health;->addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V

    .line 97
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lhpe;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lhpd;)Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "is"    # Lhpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lhpd;",
            ")",
            "Lcom/alibaba/lightapp/runtime/net/ResourceLoader;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 432
    iget-object v2, p0, Lhpe;->k:Lcom/alibaba/lightapp/runtime/net/HydroPolicy;

    if-nez v2, :cond_0

    .line 443
    :goto_0
    return-object v1

    .line 440
    :cond_0
    :try_start_0
    new-instance v2, Lhpi;

    invoke-direct {v2, p0, p1, p2, p3}, Lhpi;-><init>(Lhph;Ljava/lang/String;Ljava/util/Map;Lhpd;)V
    :try_end_0
    .catch Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lhpd;Z)Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "is"    # Lhpd;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lhpd;",
            "Z)",
            "Lcom/alibaba/lightapp/runtime/net/ResourceLoader;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 388
    iget-object v2, p0, Lhpe;->k:Lcom/alibaba/lightapp/runtime/net/HydroPolicy;

    if-nez v2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object v1

    .line 394
    :cond_1
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/net/HydroPolicy;->a(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v2, p4

    if-eqz v2, :cond_0

    .line 396
    :try_start_0
    new-instance v2, Lhpa;

    invoke-direct {v2, p0, p1, p2, p3}, Lhpa;-><init>(Lhph;Ljava/lang/String;Ljava/util/Map;Lhpd;)V
    :try_end_0
    .catch Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;ZZLhpj;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "isSafeTunnel"    # Z
    .param p5, "netCallback"    # Lhpj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lhpj;",
            ")",
            "Lcom/uc/webview/export/WebResourceResponse;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 112
    iget-boolean v8, p0, Lhpe;->d:Z

    if-eqz v8, :cond_0

    move-object v4, v6

    .line 163
    :goto_0
    return-object v4

    .line 116
    :cond_0
    if-eqz p1, :cond_2

    iget-object v8, p0, Lhpe;->f:Ljava/util/Map;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lhpe;->f:Ljava/util/Map;

    .line 117
    invoke-interface {v8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lhpe;->f:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 118
    iget-object v6, p0, Lhpe;->f:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhpe$d;

    iget-object v6, v6, Lhpe$d;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    if-eqz v6, :cond_1

    .line 120
    iget-object v6, p0, Lhpe;->f:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhpe$d;

    iget-object v6, v6, Lhpe$d;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-virtual {v6, p5}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a(Lhpj;)V

    .line 123
    :cond_1
    iget-object v6, p0, Lhpe;->f:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhpe$d;

    iget-object v4, v6, Lhpe$d;->b:Lcom/uc/webview/export/WebResourceResponse;

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Lhpd;

    invoke-direct {v0, p1}, Lhpd;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "hydroIs":Lhpd;
    new-instance v4, Lcom/uc/webview/export/WebResourceResponse;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6, v6, v8}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 128
    .local v4, "res":Lcom/uc/webview/export/WebResourceResponse;
    invoke-static {p1}, Lhpo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/uc/webview/export/WebResourceResponse;->setMimeType(Ljava/lang/String;)V

    .line 131
    if-eqz p4, :cond_3

    .line 132
    invoke-direct {p0, p1, p2, v0, p3}, Lhpe;->b(Ljava/lang/String;Ljava/util/Map;Lhpd;Z)Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    move-result-object v2

    .line 151
    .local v2, "loader":Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    :goto_1
    if-eqz v2, :cond_b

    .line 152
    invoke-virtual {v2, p5}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a(Lhpj;)V

    .line 153
    new-instance v3, Lhpe$d;

    invoke-direct {v3, p0}, Lhpe$d;-><init>(Lhpe;)V

    .line 154
    .local v3, "requestObject":Lhpe$d;
    iput-object v2, v3, Lhpe$d;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    .line 155
    iput-object v4, v3, Lhpe$d;->b:Lcom/uc/webview/export/WebResourceResponse;

    .line 156
    iget-object v6, p0, Lhpe;->f:Ljava/util/Map;

    invoke-interface {v6, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    iget-object v6, v2, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 1350
    invoke-direct {p0, v6}, Lhpe;->d(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v7, Lhpe$1;

    invoke-direct {v7, p0, v2}, Lhpe$1;-><init>(Lhpe;Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)V

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 133
    .end local v2    # "loader":Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    .end local v3    # "requestObject":Lhpe$d;
    :cond_3
    invoke-static {p1}, Lhpe;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;Lhpd;)Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    move-result-object v2

    .restart local v2    # "loader":Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    goto :goto_1

    .line 1255
    .end local v2    # "loader":Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    .line 135
    :goto_2
    if-eqz v6, :cond_a

    .line 136
    invoke-static {p1, p2}, Lhpe;->b(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 137
    .local v1, "isAllowOrigin":Z
    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {v4}, Lcom/uc/webview/export/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    .line 139
    .local v5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_5

    .line 140
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 142
    .restart local v5    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v6, "Access-Control-Allow-Origin"

    const-string/jumbo v7, "*"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v4, v5}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 146
    .end local v5    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-direct {p0, p1, p2, v0}, Lhpe;->b(Ljava/lang/String;Ljava/util/Map;Lhpd;)Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    move-result-object v2

    .line 147
    .restart local v2    # "loader":Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    goto :goto_1

    .line 1259
    .end local v1    # "isAllowOrigin":Z
    .end local v2    # "loader":Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    :cond_7
    const-string/jumbo v6, "http"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "https"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v7

    .line 1260
    goto :goto_2

    .line 1263
    :cond_8
    invoke-static {}, Lhpe;->c()Z

    move-result v6

    if-nez v6, :cond_9

    move v6, v7

    .line 1264
    goto :goto_2

    .line 1267
    :cond_9
    const-string/jumbo v6, "dd_cache=true"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    goto :goto_2

    .line 148
    :cond_a
    invoke-direct {p0, p1, p2, v0, p3}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;Lhpd;Z)Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    move-result-object v2

    .restart local v2    # "loader":Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    goto/16 :goto_1

    .line 160
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static a()Lhpe;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lhpe$a;->a:Lhpe;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 3313
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v3, v5, :cond_3

    move v3, v4

    .line 230
    :goto_1
    if-eqz v3, :cond_0

    .line 4029
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4033
    const-string/jumbo v3, "rocket-1"

    invoke-static {v3, p0}, Lhpm;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v4

    .line 234
    :cond_2
    :goto_2
    if-eqz v0, :cond_9

    move v0, v4

    .line 235
    goto :goto_0

    .line 3317
    :cond_3
    const-class v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v5, "dt_function"

    const-string/jumbo v6, "v459_lightapp_rocket_lwp_enable"

    .line 3318
    invoke-interface {v3, v5, v6}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v3

    .line 3319
    if-eqz v3, :cond_4

    .line 3320
    invoke-interface {v3}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 3321
    const-string/jumbo v5, "enable"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3322
    const-string/jumbo v5, "WebConfig"

    const/4 v6, 0x0

    const-string/jumbo v7, "checkLWPCloudSetting"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "value ="

    aput-object v9, v8, v0

    aput-object v3, v8, v4

    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 3323
    goto :goto_1

    :cond_4
    move v3, v0

    .line 3326
    goto :goto_1

    .line 4037
    :cond_5
    const-string/jumbo v3, "rocket-2"

    invoke-static {v3, p0}, Lhpm;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v4

    .line 4038
    goto :goto_2

    .line 4041
    :cond_6
    const-string/jumbo v3, "rocket-3"

    invoke-static {v3, p0}, Lhpm;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v4

    .line 4042
    goto :goto_2

    .line 4045
    :cond_7
    const-string/jumbo v3, "rocket-4"

    invoke-static {v3, p0}, Lhpm;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v4

    .line 4046
    goto :goto_2

    .line 4049
    :cond_8
    const-string/jumbo v3, "rocket-5"

    invoke-static {v3, p0}, Lhpm;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v4

    .line 4050
    goto :goto_2

    .line 238
    :cond_9
    const/4 v0, 0x0

    .line 239
    .local v0, "isRequestViaLwp":Z
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 240
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    const-string/jumbo v3, "dd_func_rt"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Lhpd;)Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "is"    # Lhpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lhpd;",
            ")",
            "Lcom/alibaba/lightapp/runtime/net/ResourceLoader;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 451
    iget-object v2, p0, Lhpe;->k:Lcom/alibaba/lightapp/runtime/net/HydroPolicy;

    if-nez v2, :cond_0

    .line 459
    :goto_0
    return-object v1

    .line 456
    :cond_0
    :try_start_0
    new-instance v2, Lhpk;

    invoke-direct {v2, p0, p1, p2, p3}, Lhpk;-><init>(Lhph;Ljava/lang/String;Ljava/util/Map;Lhpd;)V
    :try_end_0
    .catch Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Lhpd;Z)Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "is"    # Lhpd;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lhpd;",
            "Z)",
            "Lcom/alibaba/lightapp/runtime/net/ResourceLoader;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 410
    iget-object v2, p0, Lhpe;->k:Lcom/alibaba/lightapp/runtime/net/HydroPolicy;

    if-nez v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-object v1

    .line 416
    :cond_1
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/net/HydroPolicy;->a(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v2, p4

    if-eqz v2, :cond_0

    .line 418
    :try_start_0
    new-instance v2, Lhpn;

    invoke-direct {v2, p0, p1, p2, p3}, Lhpn;-><init>(Lhph;Ljava/lang/String;Ljava/util/Map;Lhpd;)V
    :try_end_0
    .catch Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 271
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v8

    sget v9, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v8, v9, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v6

    .line 274
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 275
    goto :goto_0

    .line 277
    :cond_2
    const/4 v2, 0x0

    .line 279
    .local v2, "host":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 280
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 281
    sget-object v8, Lhpe;->e:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    .local v1, "enableHost":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 287
    .end local v1    # "enableHost":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz p1, :cond_5

    .line 292
    const-string/jumbo v8, "Referer"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    .local v4, "mainUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 295
    :try_start_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 296
    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "mainHost":Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_0

    .end local v3    # "mainHost":Ljava/lang/String;
    .end local v4    # "mainUrl":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_1
    move v6, v7

    .line 308
    goto :goto_0

    .line 300
    .restart local v4    # "mainUrl":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 301
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static c()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v5, :cond_0

    move v2, v3

    .line 345
    .local v0, "lwpEnableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :goto_0
    return v2

    .line 335
    .end local v0    # "lwpEnableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_0
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v5, "dt_function"

    const-string/jumbo v6, "v433_persisten_enable"

    .line 336
    invoke-interface {v2, v5, v6}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 337
    .restart local v0    # "lwpEnableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_1

    .line 338
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "enable"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    const-string/jumbo v2, "WebConfig"

    const/4 v5, 0x0

    const-string/jumbo v6, "checkPersistenCloudSetting"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "value ="

    aput-object v8, v7, v3

    aput-object v1, v7, v4

    invoke-static {v2, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    .line 342
    goto :goto_0

    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 345
    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 363
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 364
    .local v0, "t":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "hydro-net"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 365
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 4372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4373
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    .line 366
    :goto_0
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 367
    return-object v0

    .line 4375
    :cond_0
    invoke-static {p1}, Lhpo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4376
    const-string/jumbo v2, "js"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "css"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4377
    :cond_1
    sget-object v1, Lcom/alibaba/doraemon/Priority;->HIGH:Lcom/alibaba/doraemon/Priority;

    goto :goto_0

    .line 4380
    :cond_2
    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uc/webview/export/WebResourceResponse;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 108
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;ZZLhpj;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/uc/webview/export/WebResourceResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/uc/webview/export/WebResourceResponse;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 100
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;ZZLhpj;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;ZLhpj;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "netCallback"    # Lhpj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lhpj;",
            ")",
            "Lcom/uc/webview/export/WebResourceResponse;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 104
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;ZZLhpj;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 493
    if-nez p1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "before:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhpe;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    iget-object v0, p0, Lhpe;->f:Ljava/util/Map;

    .line 5059
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 498
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "after:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhpe;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "len"    # J

    .prologue
    .line 477
    iget-object v0, p0, Lhpe;->a:Lhpe$c;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lhpe;->a:Lhpe$c;

    invoke-interface {v0, p1, p2, p3}, Lhpe$c;->a(Ljava/lang/String;J)V

    .line 481
    :cond_0
    iget-object v0, p0, Lhpe;->b:Lhpe$b;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lhpe;->b:Lhpe$b;

    .line 4531
    iget-object v0, v0, Lhpe$b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .line 4532
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    move-wide v4, p2

    move-object v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequest(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 184
    iget-object v1, p0, Lhpe;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpe$d;

    .line 185
    .local v0, "requestObject":Lhpe$d;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lhpe$d;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    if-eqz v2, :cond_0

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "  cancel   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lhpe$d;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    .line 3059
    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v2, v0, Lhpe$d;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a()V

    goto :goto_0

    .line 192
    .end local v0    # "requestObject":Lhpe$d;
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lhpe;->d(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->cancelGroupThread(Z)V

    .line 193
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 504
    iget-object v0, p0, Lhpe;->c:Lhpe$e;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lhpe;->c:Lhpe$e;

    invoke-interface {v0, p1}, Lhpe$e;->a(Ljava/lang/String;)V

    .line 507
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v0, p0, Lhpe;->c:Lhpe$e;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lhpe;->c:Lhpe$e;

    invoke-interface {v0, p1}, Lhpe$e;->b(Ljava/lang/String;)V

    .line 514
    :cond_0
    return-void
.end method

.method public final d()Lcom/alibaba/lightapp/runtime/net/HydroCache;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lhpe;->i:Lcom/alibaba/lightapp/runtime/net/HydroCache;

    return-object v0
.end method

.method public final e()Lcom/alibaba/lightapp/runtime/net/HydroCache;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lhpe;->j:Lcom/alibaba/lightapp/runtime/net/HydroCache;

    return-object v0
.end method
