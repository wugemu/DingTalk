.class public Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
.super Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.source "H5SessionImpl.java"

# interfaces
.implements Lipc;


# static fields
.field private static final BROADCAST_HIDE_PAGE:Ljava/lang/String; = "com.alipay.mobile.h5container.hidePage"

.field private static final BROADCAST_PAGE_CLOSE:Ljava/lang/String; = "com.alipay.mobile.h5container.pageClose"

.field private static final BROADCAST_SHOW_PAGE:Ljava/lang/String; = "com.alipay.mobile.h5container.showPage"

.field public static final TAG:Ljava/lang/String; = "H5Session"


# instance fields
.field private exited:Z

.field private h5LinkMonitor:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

.field private h5Scenario:Lipa;

.field private h5SessionTabBar:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

.field private h5SessionTabManager:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

.field private h5SessionTabObserver:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

.field private listener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liom;",
            ">;"
        }
    .end annotation
.end field

.field private pages:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Liop;",
            ">;"
        }
    .end annotation
.end field

.field private params:Landroid/os/Bundle;

.field private provider:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

.field private serviceWorkerId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 73
    const-string/jumbo v0, "H5Session"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nebulasessiontracker newSession @"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->exited:Z

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    .line 77
    new-instance v0, Lcom/alipay/mobile/nebulacore/data/H5MemData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/data/H5MemData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5Data:Lioc;

    .line 78
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->initPlugins()V

    .line 79
    const-string/jumbo v0, "refViewID"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabManager:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    .line 81
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabObserver:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    .line 82
    return-void
.end method

.method private exitPage()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 337
    .local v2, "temp":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liop;

    .line 338
    .local v0, "h5Page":Liop;
    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    .end local v0    # "h5Page":Liop;
    :cond_0
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 342
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_1

    .line 343
    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liop;

    const-string/jumbo v4, "h5PageClose"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 342
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 345
    :cond_1
    return-void
.end method

.method private initPlugins()V
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPluginManager()Liow;

    move-result-object v2

    .line 86
    .local v2, "pm":Liow;
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 87
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 88
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 89
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;-><init>(Lipc;)V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 90
    new-instance v3, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabBar:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 91
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabBar:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 94
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    .line 95
    .local v0, "pcm":Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    const-string/jumbo v3, "session"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->createPlugin(Ljava/lang/String;Liow;)Liov;

    move-result-object v1

    .line 96
    .local v1, "plugin":Liov;
    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v2, v1}, Liow;->register(Liov;)Z

    .line 99
    :cond_0
    return-void
.end method

.method private sendBroadCast(Liop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "page"    # Liop;
    .param p2, "broadcastName"    # Ljava/lang/String;
    .param p3, "title2"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Liop;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "title":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "H5Session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "send Title:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string/jumbo v2, "utl"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-interface {p1}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 195
    return-void

    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    move-object v1, p3

    .line 190
    goto :goto_0
.end method

.method private setPageEnableFallbackUrl(Liop;)V
    .locals 5
    .param p1, "page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 436
    if-nez p1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-interface {p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 440
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "bizType"

    const-string/jumbo v4, ""

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "bizType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 442
    .local v2, "enableFallbackUrl":Z
    invoke-static {v0}, Lcom/alipay/mobile/h5container/service/RnService;->isRnBiz(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    const/4 v2, 0x1

    .line 445
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->provider:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    if-eqz v3, :cond_0

    .line 446
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->provider:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->setEnableFallbackUrl(Z)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addListener(Liom;)V
    .locals 3
    .param p1, "l"    # Liom;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 310
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liom;

    .line 311
    .local v0, "ln":Liom;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 315
    .end local v0    # "ln":Liom;
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addPage(Liop;)Z
    .locals 11
    .param p1, "page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 114
    if-nez p1, :cond_0

    .line 184
    :goto_0
    return v7

    .line 118
    :cond_0
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    monitor-enter v8

    .line 119
    :try_start_0
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    .line 120
    .local v1, "isEmpty":Z
    if-eqz v1, :cond_1

    .line 121
    new-instance v9, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-direct {v9, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;-><init>(Liop;)V

    iput-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->provider:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    .line 123
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liom;

    .line 124
    .local v2, "ln":Liom;
    invoke-interface {v2, p0}, Liom;->onSessionCreated(Lipc;)V

    goto :goto_1

    .line 177
    .end local v1    # "isEmpty":Z
    .end local v2    # "ln":Liom;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 128
    .restart local v1    # "isEmpty":Z
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liop;

    .line 129
    .local v3, "p":Liop;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 130
    monitor-exit v8

    goto :goto_0

    .line 134
    .end local v3    # "p":Liop;
    :cond_3
    invoke-interface {p1, p0}, Liop;->setParent(Liob;)V

    .line 135
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 136
    const-string/jumbo v9, "com.alipay.mobile.h5container.hidePage"

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Liop;

    invoke-interface {v7}, Liop;->getTitle()Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    .line 137
    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Liop;

    invoke-interface {v7}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-direct {p0, p1, v9, v10, v7}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->sendBroadCast(Liop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_4
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v7, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liom;

    .line 141
    .restart local v2    # "ln":Liom;
    invoke-interface {v2, p1}, Liom;->onPageCreated(Liop;)V

    goto :goto_2

    .line 144
    .end local v2    # "ln":Liom;
    :cond_5
    if-eqz v1, :cond_6

    .line 145
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v9, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$1;

    invoke-direct {v9, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Liop;)V

    invoke-interface {v7, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    :cond_6
    invoke-interface {p1}, Liop;->getPageData()Lior;

    move-result-object v0

    .line 164
    .local v0, "h5PageData":Lior;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 165
    const-string/jumbo v7, "refViewID"

    invoke-static {v7}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "refviewId":Ljava/lang/String;
    const-string/jumbo v7, "viewID"

    invoke-static {v7}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "viewId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "appId="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1870
    iget-object v9, v0, Lior;->ak:Ljava/lang/String;

    .line 167
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "^publicId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1879
    iget-object v9, v0, Lior;->al:Ljava/lang/String;

    .line 168
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "^sourceId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "^viewId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "^refviewId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "^token="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 172
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "^h5Token="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lios;->e:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "pagePerformance":Ljava/lang/String;
    invoke-interface {p1, v4}, Liop;->setPerformance(Ljava/lang/String;)V

    .line 177
    .end local v4    # "pagePerformance":Ljava/lang/String;
    .end local v5    # "refviewId":Ljava/lang/String;
    .end local v6    # "viewId":Ljava/lang/String;
    :cond_7
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 181
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Liop;

    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->setPageEnableFallbackUrl(Liop;)V

    .line 184
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public exitSession()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 349
    const-string/jumbo v5, "H5Session"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "nebulasessiontracker exitSession @"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getTopPage()Liop;

    move-result-object v1

    .line 355
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 356
    invoke-interface {v1}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)V

    .end local v1    # "h5Page":Liop;
    :cond_0
    :goto_0
    move v3, v4

    .line 407
    :goto_1
    return v3

    .line 361
    :cond_1
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->exited:Z

    if-eqz v5, :cond_2

    .line 362
    const-string/jumbo v4, "H5Session"

    const-string/jumbo v5, "session already exited!"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_2
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->exited:Z

    .line 366
    const-string/jumbo v5, ""

    sput-object v5, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    .line 368
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->exitPage()V

    .line 372
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    .line 373
    .local v0, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v0, :cond_3

    .line 374
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->clearPresetMemory()V

    .line 378
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->provider:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    if-eqz v5, :cond_4

    .line 379
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->provider:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->releaseContent()V

    .line 380
    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->provider:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    .line 382
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->sessionId:Ljava/lang/String;

    invoke-static {v5, v3}, Liog;->a(Ljava/lang/String;Z)V

    .line 385
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->sessionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->remove(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 388
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 389
    .local v2, "preRpcProvider":Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    if-eqz v2, :cond_5

    .line 390
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->clearPreAll()V

    .line 2021
    :cond_5
    sput-wide v10, Lios;->a:J

    .line 2022
    sput-wide v10, Lios;->b:J

    .line 2023
    sput-object v8, Lios;->c:Ljava/lang/String;

    .line 2024
    sput-boolean v3, Lios;->d:Z

    .line 394
    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabBar:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 395
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabManager:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    if-eqz v3, :cond_6

    .line 396
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabManager:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->clearTabFragments()V

    .line 397
    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabManager:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    .line 400
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabObserver:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    if-eqz v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabObserver:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->clear()V

    .line 402
    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabObserver:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    goto :goto_0
.end method

.method public getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5LinkMonitor:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    return-object v0
.end method

.method public getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabBar:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    return-object v0
.end method

.method public getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabManager:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    return-object v0
.end method

.method public getH5SessionTabObserver()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5SessionTabObserver:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPages()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Liop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScenario()Lipa;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5Scenario:Lipa;

    return-object v0
.end method

.method public getServiceWorkerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->serviceWorkerId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopPage()Liop;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 257
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    monitor-enter v5

    .line 258
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    const-string/jumbo v6, "H5Session"

    const-string/jumbo v7, "getTopPage pages.isEmpty()"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    monitor-exit v5

    move-object v3, v4

    .line 276
    :goto_0
    return-object v3

    .line 262
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liop;

    .line 263
    .local v3, "top":Liop;
    invoke-interface {v3}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "isPrerender"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 264
    const-string/jumbo v4, "H5Session"

    const-string/jumbo v6, "getTopPage top"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    monitor-exit v5

    goto :goto_0

    .line 278
    .end local v3    # "top":Liop;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 267
    .restart local v3    # "top":Liop;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v1

    .line 268
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 269
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v6, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liop;

    .line 270
    .local v2, "tmpPage":Liop;
    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "isPrerender"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 271
    const-string/jumbo v4, "H5Session"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getTopPage in index "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    monitor-exit v5

    move-object v3, v2

    goto :goto_0

    .line 268
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 275
    .end local v2    # "tmpPage":Liop;
    :cond_3
    const-string/jumbo v6, "H5Session"

    const-string/jumbo v7, "getTopPage no normal page exists"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_0
.end method

.method public getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->provider:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    return-object v0
.end method

.method public declared-synchronized removeAllListener()V
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_0
    monitor-exit p0

    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Liom;)V
    .locals 1
    .param p1, "l"    # Liom;

    .prologue
    .line 320
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 323
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removePage(Liop;)Z
    .locals 13
    .param p1, "page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 199
    if-nez p1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v8

    .line 203
    :cond_1
    const/4 v4, 0x0

    .line 204
    .local v4, "removedPage":Liop;
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    monitor-enter v10

    .line 205
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Liop;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liop;

    .line 208
    .local v3, "p":Liop;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 210
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    if-le v6, v9, :cond_3

    .line 211
    const-string/jumbo v6, "com.alipay.mobile.h5container.hidePage"

    invoke-interface {p1}, Liop;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v6, v7, v11}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->sendBroadCast(Liop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 214
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 215
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Liop;

    const-string/jumbo v11, "com.alipay.mobile.h5container.showPage"

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Liop;

    invoke-interface {v7}, Liop;->getTitle()Ljava/lang/String;

    move-result-object v12

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    .line 216
    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Liop;

    invoke-interface {v7}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-direct {p0, v6, v11, v12, v7}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->sendBroadCast(Liop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_4
    move-object v4, v3

    .line 223
    .end local v3    # "p":Liop;
    :cond_5
    if-eqz v4, :cond_b

    .line 224
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    if-nez v6, :cond_6

    move v5, v8

    .line 225
    .local v5, "size":I
    :goto_1
    add-int/lit8 v0, v5, -0x1

    .local v0, "index":I
    :goto_2
    if-ltz v0, :cond_7

    .line 226
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liom;

    .line 227
    .local v2, "ln":Liom;
    invoke-interface {v2, v4}, Liom;->onPageDestroyed(Liop;)V

    .line 225
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 224
    .end local v0    # "index":I
    .end local v2    # "ln":Liom;
    .end local v5    # "size":I
    :cond_6
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    .line 230
    .restart local v0    # "index":I
    .restart local v5    # "size":I
    :cond_7
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 232
    const-string/jumbo v6, "com.alipay.mobile.h5container.pageClose"

    invoke-interface {v4}, Liop;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-interface {v4}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 232
    invoke-direct {p0, v4, v6, v7, v11}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->sendBroadCast(Liop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->removeSession(Ljava/lang/String;)Z

    .line 235
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->exitSession()Z

    .line 236
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    if-nez v6, :cond_8

    move v5, v8

    .line 237
    :goto_3
    add-int/lit8 v0, v5, -0x1

    :goto_4
    if-ltz v0, :cond_9

    .line 238
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liom;

    .line 239
    .restart local v2    # "ln":Liom;
    invoke-interface {v2, p0}, Liom;->onSessionDestroyed(Lipc;)V

    .line 237
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 236
    .end local v2    # "ln":Liom;
    :cond_8
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->listener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_3

    .line 243
    :cond_9
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->pages:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 244
    sget-object v6, Liov$a;->l:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 247
    :cond_a
    invoke-interface {v4}, Liop;->onRelease()V

    .line 248
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Liop;->setParent(Liob;)V

    .line 250
    .end local v0    # "index":I
    .end local v5    # "size":I
    :cond_b
    monitor-exit v10

    .line 252
    if-eqz v4, :cond_0

    move v8, v9

    goto/16 :goto_0

    .line 250
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Liop;>;"
    :catchall_0
    move-exception v6

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public setH5LinkMonitor(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V
    .locals 0
    .param p1, "linkMonitor"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5LinkMonitor:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    .line 428
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->sessionId:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "H5Session"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nebulasessiontracker newSession setId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->params:Landroid/os/Bundle;

    .line 303
    return-void
.end method

.method public setScenario(Lipa;)V
    .locals 0
    .param p1, "scenario"    # Lipa;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h5Scenario:Lipa;

    .line 294
    return-void
.end method

.method public setServiceWorkerID(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->serviceWorkerId:Ljava/lang/String;

    .line 418
    return-void
.end method
