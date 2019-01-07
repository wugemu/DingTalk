.class public Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
.super Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;
.source "MiniappActivity.java"

# interfaces
.implements Lhlz;


# instance fields
.field public a:Lhls;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View;

.field private e:Lipc;

.field private f:Liop;

.field private g:Liom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->g:Liom;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Liop;)Liop;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
    .param p1, "x1"    # Liop;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->f:Liop;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .prologue
    .line 71
    .line 6374
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->c:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$5;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V

    invoke-static {p0, v0, v1}, Lhrc;->a(Landroid/content/Context;Ljava/lang/String;Liyv;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 8
    .param p1, "toShow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    const-string/jumbo v6, "e_app_vconsole"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getH5Session()Lipc;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getH5Session()Lipc;

    move-result-object v6

    invoke-interface {v6}, Lipc;->getTopPage()Liop;

    move-result-object v2

    .line 298
    .local v2, "h5Page":Liop;
    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 304
    .local v4, "startParams":Landroid/os/Bundle;
    const-string/jumbo v6, "source"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "appSourceModel":Ljava/lang/String;
    const-string/jumbo v6, "debug"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 311
    if-nez p1, :cond_3

    .line 6035
    sget-object v6, Liqf$a;->a:Liqf;

    .line 6055
    iget-object v5, v6, Liqf;->b:Liop;

    .line 313
    .local v5, "vConsolePage":Liop;
    if-eqz v5, :cond_2

    instance-of v6, v5, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v6, :cond_2

    .line 314
    check-cast v5, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .end local v5    # "vConsolePage":Liop;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 316
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 317
    .local v1, "debugObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "showBtn"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v6, "shouldShowConsoleBtn"

    invoke-interface {v2, v6, v1}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 322
    .end local v1    # "debugObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    invoke-static {}, Lhmp;->a()Lhmp;

    const-string/jumbo v6, "2018072560817286"

    invoke-static {v6}, Lhmp;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v3

    .line 323
    .local v3, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-nez v3, :cond_4

    .line 324
    invoke-static {}, Lhmp;->a()Lhmp;

    const-string/jumbo v6, "2018072560817286"

    new-instance v7, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;

    invoke-direct {v7, p0, p1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;ZLiop;)V

    .line 6152
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->updateApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V

    goto :goto_0

    .line 353
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 354
    .restart local v1    # "debugObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "showBtn"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string/jumbo v6, "shouldShowConsoleBtn"

    invoke-interface {v2, v6, v1}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .prologue
    .line 71
    .line 8165
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 0

    .prologue
    .line 271
    return-object p0
.end method

.method public final b()Liop;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->f:Liop;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    new-instance v0, Lhls;

    invoke-direct {v0, p0}, Lhls;-><init>(Lhlz;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a:Lhls;

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getH5Session()Lipc;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->e:Lipc;

    .line 155
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->e:Lipc;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->e:Lipc;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->g:Liom;

    invoke-interface {v0, v1}, Lipc;->addListener(Liom;)V

    .line 159
    :cond_0
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    .line 1150
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1151
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1152
    iget-object v0, v0, Lhlq;->c:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    :cond_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$4;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->getAppMalfunctionConfig(Lcmi;)V

    .line 162
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Z)V

    .line 225
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    .line 2178
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2179
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2180
    sget-object v2, Lhlq;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lhlq;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lhlq;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lhlq;->c:Ljava/util/Map;

    .line 2181
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lhlq;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2182
    iget-object v0, v0, Lhlq;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->clearServiceWork(Landroid/os/Bundle;)V

    .line 2220
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 228
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->onDestroy()V

    .line 229
    return-void

    .line 2224
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2229
    const-string/jumbo v1, "MiniAppFileUtil"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lhoj$1;

    invoke-direct {v2, v0}, Lhoj$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->onPause()V

    .line 4038
    sget-object v0, Lhok;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 3050
    if-eqz v0, :cond_0

    .line 5038
    sget-object v0, Lhok;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 3051
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->exit()V

    .line 255
    :cond_0
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    .line 5162
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5163
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 5164
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 5165
    if-eqz v2, :cond_1

    .line 5166
    const-string/jumbo v3, "MINI_EXTRA_KEY_KEEP_ALIVE_FROM_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5168
    :cond_1
    iget-object v0, v0, Lhlq;->c:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 241
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->onResume()V

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2434
    if-eqz v2, :cond_0

    .line 2438
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2442
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2446
    const-string/jumbo v3, "source"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2447
    const-string/jumbo v4, "debug"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "trial"

    .line 2448
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    :cond_0
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_1

    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "HYBRID_ENABLE_MINIAPP_ALERT_SYSTEM_MAY_ERROR"

    .line 3023
    invoke-static {v1, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 243
    if-eqz v1, :cond_1

    .line 244
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lhdn$k;->dt_tinyapp_android_system_may_error:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 246
    sget v1, Lhdn$k;->dd_mini_check_permission_deny_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 249
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_1
    return-void

    .line 2452
    :cond_2
    const-string/jumbo v3, "nebula_loading_version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2453
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2456
    const-string/jumbo v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2460
    const-string/jumbo v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2461
    array-length v3, v1

    if-lez v3, :cond_0

    array-length v3, v1

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 2465
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 2466
    aget-object v4, v1, v7

    .line 2467
    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppLaunchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppLaunchIService;

    .line 2468
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2471
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$6;

    invoke-direct {v6, p0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$6;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Landroid/content/Intent;)V

    .line 2468
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppLaunchIService;->userLaunchMiniApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 233
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->onStart()V

    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Z)V

    .line 235
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Page_Home_Tiny_APP_Detail"

    const-string/jumbo v2, "open_tiny_app_boot"

    .line 236
    invoke-static {p0}, Lhom;->a(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v3

    .line 235
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 237
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->onStop()V

    .line 261
    return-void
.end method
