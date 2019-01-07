.class public Lbnh;
.super Ljava/lang/Object;
.source "AlphaStorage.java"


# static fields
.field private static volatile c:Lbnh;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lbnh;->d:Landroid/content/Context;

    .line 45
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lbnh;->a:Ljava/util/Map;

    .line 46
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lbnh;->b:Ljava/util/Map;

    .line 60
    invoke-static {}, Lbnh;->e()Ljava/util/Map;

    move-result-object v0

    .line 61
    .local v0, "corpSsidsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 62
    const-string/jumbo v1, "AlphaStorage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "corpSsidsMap is null"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lbnh;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lbnh;

    .prologue
    .line 34
    iget-object v0, p0, Lbnh;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lbnh;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lbnh;->c:Lbnh;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lbnh;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lbnh;->c:Lbnh;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lbnh;

    invoke-direct {v0}, Lbnh;-><init>()V

    sput-object v0, Lbnh;->c:Lbnh;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lbnh;->c:Lbnh;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbnh;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbnh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Lbnh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbnh;Ljava/lang/String;Ljava/lang/String;Lblv;Z)V
    .locals 0
    .param p0, "x0"    # Lbnh;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lblv;
    .param p4, "x4"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lbnh;->a(Ljava/lang/String;Ljava/lang/String;Lblv;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lblv;Z)V
    .locals 7
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "psk"    # Ljava/lang/String;
    .param p4, "reload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lblv",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 174
    .local p3, "callback":Lblv;, "Lblv<Ljava/lang/String;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v0, Lbnh$4;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbnh$4;-><init>(Lbnh;ZLjava/lang/String;Ljava/lang/String;Lblv;)V

    invoke-virtual {v6, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method static synthetic b(Lbnh;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lbnh;

    .prologue
    .line 34
    iget-object v0, p0, Lbnh;->b:Ljava/util/Map;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "corpId"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v0

    .line 70
    .local v0, "uid":J
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "alpha_"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static e()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 277
    :try_start_0
    const-string/jumbo v5, "alpha_corp_ssids"

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "jsonStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 279
    const-string/jumbo v5, "AlphaStorage"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "getCorpSsidsFromLocal jsonStr is null"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 295
    :cond_0
    :goto_0
    return-object v4

    .line 282
    :cond_1
    const-string/jumbo v5, "AlphaStorage"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "getCorpSsidsFromLocal: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {v3}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 284
    .local v2, "jsonObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 285
    :cond_2
    const-string/jumbo v5, "AlphaStorage"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "getCorpSsidsFromLocal parse error"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 286
    goto :goto_0

    .line 288
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 290
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 293
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "jsonObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AlphaStorage"

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "getCorpSsidsFromLocal exp: "

    aput-object v8, v7, v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 295
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "AlphaStorage"

    const-string/jumbo v1, "corpId is null when deletePsk"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lbnh;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, p1}, Lbnh;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lblv;)V
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lblv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "callback":Lblv;, "Lblv<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 140
    if-nez p2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callback not set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    const-string/jumbo v2, "AlphaStorage"

    const-string/jumbo v3, "corpId is null when getPsk"

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, p2, v4}, Lbnh;->a(Ljava/lang/String;Ljava/lang/String;Lblv;Z)V

    .line 171
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v2, p0, Lbnh;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "psk":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    invoke-direct {p0, p1, v1, p2, v4}, Lbnh;->a(Ljava/lang/String;Ljava/lang/String;Lblv;Z)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {p1}, Lbnh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "AlphaStorage"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lbnh$3;

    invoke-direct {v3, p0, p1, p2, v0}, Lbnh$3;-><init>(Lbnh;Ljava/lang/String;Lblv;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "psk"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "AlphaStorage"

    const-string/jumbo v1, "corpId is null when savePsk"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string/jumbo v0, "AlphaStorage"

    const-string/jumbo v1, "psk is null when savePsk"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lbnh;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v0, "AlphaStorage"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lbnh$1;

    invoke-direct {v1, p0, p1, p2}, Lbnh$1;-><init>(Lbnh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 253
    const-string/jumbo v0, "alpha_corp_ssids"

    invoke-static {v0}, Lcpk;->a(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "AlphaStorage"

    const-string/jumbo v1, "corpId is null when deletePskFromSecurityGuard"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string/jumbo v0, "AlphaStorage"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lbnh$2;

    invoke-direct {v1, p0, p1}, Lbnh$2;-><init>(Lbnh;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v0, "corpSsids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 259
    return-object v0
.end method

.method public d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 263
    iget-object v2, p0, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 265
    .local v1, "map":Lcom/alibaba/fastjson/JSONObject;
    iget-object v2, p0, Lbnh;->a:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 266
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "jsonString":Ljava/lang/String;
    const-string/jumbo v2, "AlphaStorage"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "saveCorpSsidsToLocal: "

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v2, "alpha_corp_ssids"

    invoke-static {v2, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v1    # "map":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string/jumbo v2, "AlphaStorage"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "saveCorpSsidsToLocal map is null"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v2, "alpha_corp_ssids"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
