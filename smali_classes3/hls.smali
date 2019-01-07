.class public final Lhls;
.super Ljava/lang/Object;
.source "MiniappInstance.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/INuvaContext;
.implements Lhde;
.implements Lhlm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhls$a;,
        Lhls$b;
    }
.end annotation


# instance fields
.field public a:Lhlu;

.field public b:Lhlo;

.field public c:Lhlk;

.field public d:Ljava/util/Map;
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

.field e:Lhlp;

.field public f:Ljava/lang/String;

.field private g:Lhlz;

.field private h:Landroid/content/Intent;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field private m:Lhln;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhlp;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/os/Bundle;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhls;->d:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhls;->n:Ljava/util/List;

    .line 117
    const-string/jumbo v0, ""

    iput-object v0, p0, Lhls;->f:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lhls;->p:Ljava/lang/String;

    .line 123
    iput v5, p0, Lhls;->q:I

    .line 487
    new-instance v0, Lhls$3;

    invoke-direct {v0, p0}, Lhls$3;-><init>(Lhls;)V

    iput-object v0, p0, Lhls;->r:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 139
    iput-object p1, p0, Lhls;->k:Landroid/content/Context;

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lhls;->h:Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lhls;->h:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    iget-object v0, p0, Lhls;->h:Landroid/content/Intent;

    .line 2146
    iput-object v4, p0, Lhls;->g:Lhlz;

    .line 2147
    iput-object v0, p0, Lhls;->h:Landroid/content/Intent;

    .line 2148
    new-instance v0, Lhlu;

    invoke-direct {v0, p0}, Lhlu;-><init>(Lhde;)V

    iput-object v0, p0, Lhls;->a:Lhlu;

    .line 2149
    iget-object v0, p0, Lhls;->a:Lhlu;

    invoke-static {}, Lhls$b;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2184
    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->f:Ljava/util/concurrent/Executor;

    .line 2150
    const-string/jumbo v0, "appCreate"

    iput-object v0, p0, Lhls;->p:Ljava/lang/String;

    .line 2395
    const-string/jumbo v0, "CONFIG_KEY_WEBVIEW_DEBUG"

    invoke-static {v0, v5}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2396
    invoke-static {v3}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 3188
    :cond_0
    iget-object v0, p0, Lhls;->h:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 3191
    iget-object v0, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhls;->i:Ljava/lang/String;

    .line 3192
    iget-object v0, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v1, "appVersion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhls;->j:Ljava/lang/String;

    .line 3194
    iget-object v0, p0, Lhls;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3195
    iget-object v0, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v1, "nbversion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhls;->j:Ljava/lang/String;

    .line 3198
    :cond_1
    iget-object v0, p0, Lhls;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3199
    iget-object v0, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhls;->j:Ljava/lang/String;

    .line 4160
    :cond_2
    iget-object v0, p0, Lhls;->p:Ljava/lang/String;

    const-string/jumbo v1, "appCreate"

    if-ne v0, v1, :cond_3

    .line 4162
    invoke-static {}, Lhmp;->a()Lhmp;

    move-result-object v0

    iget-object v1, p0, Lhls;->i:Ljava/lang/String;

    iget-object v2, p0, Lhls;->l:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-virtual {v0, v1, v4, v2, v5}, Lhmp;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Z

    move-result v0

    .line 4164
    const-string/jumbo v1, "MiniappInstance"

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "touch strict req range : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4165
    if-eqz v0, :cond_4

    .line 4166
    const-string/jumbo v0, "packageStatusChecked"

    iput-object v0, p0, Lhls;->p:Ljava/lang/String;

    .line 4167
    iget-object v0, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v1, "dingtalk_mini_app_launch_status"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    :goto_0
    return-void

    .line 4171
    :cond_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhls$1;

    invoke-direct {v1, p0}, Lhls$1;-><init>(Lhls;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public constructor <init>(Lhlz;)V
    .locals 2
    .param p1, "context"    # Lhlz;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhls;->d:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhls;->n:Ljava/util/List;

    .line 117
    const-string/jumbo v0, ""

    iput-object v0, p0, Lhls;->f:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lhls;->p:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lhls;->q:I

    .line 487
    new-instance v0, Lhls$3;

    invoke-direct {v0, p0}, Lhls$3;-><init>(Lhls;)V

    iput-object v0, p0, Lhls;->r:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 130
    iput-object p1, p0, Lhls;->g:Lhlz;

    .line 131
    iget-object v0, p0, Lhls;->g:Lhlz;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lhls;->g:Lhlz;

    invoke-interface {v0}, Lhlz;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhls;->k:Landroid/content/Context;

    .line 134
    :cond_0
    new-instance v0, Lhlu;

    invoke-direct {v0, p0}, Lhlu;-><init>(Lhde;)V

    iput-object v0, p0, Lhls;->a:Lhlu;

    .line 135
    iget-object v0, p0, Lhls;->a:Lhlu;

    invoke-static {}, Lhls$b;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 1184
    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->f:Ljava/util/concurrent/Executor;

    .line 136
    return-void
.end method

.method static synthetic a(Lhls;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhls;

    .prologue
    .line 67
    iget-object v0, p0, Lhls;->i:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;I)V
    .locals 4
    .param p1, "appPrepareData"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    .param p2, "packageStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setDownloadTime(J)V

    .line 701
    invoke-static {}, Lhmp;->a()Lhmp;

    iget-object v0, p0, Lhls;->i:Ljava/lang/String;

    iget-object v1, p0, Lhls;->j:Ljava/lang/String;

    new-instance v2, Lhls$6;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3, p1, p2}, Lhls$6;-><init>(Lhls;ILcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;I)V

    invoke-static {v0, v1, v2}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;Lhlv;)V

    .line 783
    return-void
.end method

.method static synthetic a(Lhls;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;I)V
    .locals 0
    .param p0, "x0"    # Lhls;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lhls;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;I)V

    return-void
.end method

.method static synthetic a(Lhls;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lhls;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lhls;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "isSuccess"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 679
    iget-object v0, p0, Lhls;->b:Lhlo;

    if-eqz v0, :cond_0

    .line 680
    if-nez p1, :cond_1

    .line 683
    const-string/jumbo v0, "sync_try_fail"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 684
    iget-object v0, p0, Lhls;->b:Lhlo;

    invoke-interface {v0, p2, p3}, Lhlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_0
    :goto_0
    const-string/jumbo v0, "MiniappInstance"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refill app info status : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " & message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    return-void

    .line 687
    :cond_1
    iget-object v0, p0, Lhls;->b:Lhlo;

    invoke-interface {v0}, Lhlo;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lhls;)Lhln;
    .locals 1
    .param p0, "x0"    # Lhls;

    .prologue
    .line 67
    iget-object v0, p0, Lhls;->m:Lhln;

    return-object v0
.end method

.method static synthetic c(Lhls;)Lhlz;
    .locals 1
    .param p0, "x0"    # Lhls;

    .prologue
    .line 67
    iget-object v0, p0, Lhls;->g:Lhlz;

    return-object v0
.end method

.method static synthetic d(Lhls;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lhls;

    .prologue
    .line 67
    iget-object v0, p0, Lhls;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lhls;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhls;

    .prologue
    .line 67
    iget-object v0, p0, Lhls;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lhde$a;
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "ipUrl"    # Ljava/lang/String;

    .prologue
    .line 428
    return-object p1
.end method

.method public final declared-synchronized a(I)V
    .locals 3
    .param p1, "pageId"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 855
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lhls;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 856
    iget-object v0, p0, Lhls;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 859
    :cond_0
    iget-object v0, p0, Lhls;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17868
    const/4 v0, 0x0

    iput-object v0, p0, Lhls;->c:Lhlk;

    .line 17869
    const/4 v0, 0x0

    iput-object v0, p0, Lhls;->f:Ljava/lang/String;

    .line 17870
    iget-object v0, p0, Lhls;->a:Lhlu;

    if-eqz v0, :cond_1

    .line 17871
    iget-object v0, p0, Lhls;->a:Lhlu;

    .line 18062
    iget-object v0, v0, Lhlu;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 17872
    const/4 v0, 0x0

    iput-object v0, p0, Lhls;->a:Lhlu;

    .line 17874
    :cond_1
    iget-object v0, p0, Lhls;->o:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 17875
    iget-object v0, p0, Lhls;->o:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->clearServiceWork(Landroid/os/Bundle;)V

    .line 17877
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lhls;->o:Landroid/os/Bundle;

    .line 17878
    const/4 v0, 0x0

    iput-object v0, p0, Lhls;->e:Lhlp;

    .line 17879
    invoke-static {}, Lhmq;->a()Lhmq;

    move-result-object v0

    iget-object v1, p0, Lhls;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 18133
    iget-object v2, v0, Lhmq;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18134
    iget-object v0, v0, Lhmq;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :cond_3
    monitor-exit p0

    return-void

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lhlp;Ljava/lang/String;)V
    .locals 7
    .param p1, "pageInstance"    # Lhlp;
    .param p2, "lifecycle"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 926
    if-eqz p1, :cond_0

    const-string/jumbo v2, "unknown"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 927
    :cond_0
    const-string/jumbo v2, "MiniappInstance"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "sync page lifecycle : pageInstance is null or lifecycle is unknown"

    aput-object v4, v3, v1

    .line 19071
    const-string/jumbo v1, "mini_app"

    invoke-static {v1, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    :cond_1
    :goto_0
    return-void

    .line 931
    :cond_2
    iget-object v2, p0, Lhls;->e:Lhlp;

    if-nez v2, :cond_3

    .line 932
    const-string/jumbo v2, "MiniappInstance"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "sync page lifecycle : top page instance is null"

    aput-object v4, v3, v1

    .line 20071
    const-string/jumbo v1, "mini_app"

    invoke-static {v1, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 937
    :cond_3
    iget-object v2, p0, Lhls;->e:Lhlp;

    if-ne p1, v2, :cond_1

    .line 938
    iput-object p2, p0, Lhls;->p:Ljava/lang/String;

    .line 944
    iget-object v4, p0, Lhls;->p:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_4
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 946
    :pswitch_0
    iget-object v1, p0, Lhls;->e:Lhlp;

    instance-of v1, v1, Lhlr;

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lhls;->e:Lhlp;

    check-cast v1, Lhlr;

    .line 20212
    iget-object v0, v1, Lhlr;->a:Liop;

    .line 948
    .local v0, "h5Page":Liop;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 949
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v1

    const-string/jumbo v2, "appResume"

    invoke-interface {v1, v2, v6, v6}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0

    .line 944
    .end local v0    # "h5Page":Liop;
    :sswitch_0
    const-string/jumbo v3, "appResume"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "appStop"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    .line 955
    :pswitch_1
    iget-object v1, p0, Lhls;->e:Lhlp;

    instance-of v1, v1, Lhlr;

    if-eqz v1, :cond_1

    .line 956
    iget-object v1, p0, Lhls;->e:Lhlp;

    check-cast v1, Lhlr;

    .line 21212
    iget-object v0, v1, Lhlr;->a:Liop;

    .line 957
    .restart local v0    # "h5Page":Liop;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 959
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v1

    const-string/jumbo v2, "appPause"

    invoke-interface {v1, v2, v6, v6}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto/16 :goto_0

    .line 944
    :sswitch_data_0
    .sparse-switch
        -0x2f53023d -> :sswitch_1
        0x56de51ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lhln;)V
    .locals 7
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "iMiniAppInstanceInitListener"    # Lhln;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 330
    iget-object v1, p0, Lhls;->k:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhls;->h:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 331
    :cond_0
    const-string/jumbo v1, "MiniappInstance"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "initInstanceAsync fail : context or start bundle is null"

    aput-object v3, v2, v5

    .line 14071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15666
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v1, p0, Lhls;->k:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 336
    const-string/jumbo v1, "MiniappInstance"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "initInstanceAsync fail : context can not cast to activity"

    aput-object v3, v2, v5

    .line 15071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 339
    :cond_2
    iput-object p2, p0, Lhls;->m:Lhln;

    .line 341
    invoke-virtual {p0}, Lhls;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 342
    invoke-virtual {p0, p1}, Lhls;->b(Ljava/lang/String;)Lhlp;

    move-result-object v0

    .line 343
    .local v0, "pageInstance":Lhlp;
    if-eqz v0, :cond_3

    .line 344
    invoke-interface {p2, v0}, Lhln;->a(Lhlp;)V

    goto :goto_0

    .line 346
    :cond_3
    const-string/jumbo v1, "instance_prepare_fail"

    const-string/jumbo v2, "create main page fail"

    invoke-interface {p2, v1, v2}, Lhln;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    .end local v0    # "pageInstance":Lhlp;
    :cond_4
    new-instance v1, Lhls$2;

    invoke-direct {v1, p0, p1, p2}, Lhls$2;-><init>(Lhls;Ljava/lang/String;Lhln;)V

    iput-object v1, p0, Lhls;->b:Lhlo;

    .line 15589
    iget-object v1, p0, Lhls;->h:Landroid/content/Intent;

    if-nez v1, :cond_5

    .line 15590
    const-string/jumbo v1, "invalid_params"

    const-string/jumbo v2, "check package status fail : intent is null"

    invoke-direct {p0, v5, v1, v2}, Lhls;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15597
    :cond_5
    iget-object v1, p0, Lhls;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15598
    const-string/jumbo v1, "no_app_id"

    const-string/jumbo v2, "check package status fail : mini app id is null"

    invoke-direct {p0, v5, v1, v2}, Lhls;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15605
    :cond_6
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;-><init>()V

    .line 15606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setBeginTime(J)V

    .line 15607
    iget-object v2, p0, Lhls;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setAppId(Ljava/lang/String;)V

    .line 15609
    iget-object v2, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v3, "dingtalk_mini_app_launch_status"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 15611
    packed-switch v2, :pswitch_data_0

    .line 15668
    const-string/jumbo v1, "MiniappInstance"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "no launch status: just return true to make next procedure running"

    aput-object v3, v2, v5

    .line 17071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 15613
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestBeginTime(J)V

    .line 15614
    const-string/jumbo v2, "syncforce"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestMode(Ljava/lang/String;)V

    .line 15615
    const-string/jumbo v2, "sync"

    const-string/jumbo v3, "sync"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setOfflineMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 15616
    invoke-static {}, Lhmp;->a()Lhmp;

    iget-object v2, p0, Lhls;->i:Ljava/lang/String;

    iget-object v3, p0, Lhls;->j:Ljava/lang/String;

    new-instance v4, Lhls$4;

    invoke-direct {v4, p0, v1}, Lhls$4;-><init>(Lhls;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;)V

    invoke-static {v2, v3, v4, v5}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;Z)V

    goto/16 :goto_0

    .line 15635
    :pswitch_1
    const-string/jumbo v2, "sync"

    const-string/jumbo v3, "sync"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setOfflineMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 15636
    iget-object v2, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v3, "appVersion"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setVersion(Ljava/lang/String;)V

    .line 15637
    invoke-direct {p0, v1, v6}, Lhls;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;I)V

    goto/16 :goto_0

    .line 15640
    :pswitch_2
    const-string/jumbo v1, "MiniappInstance"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "all start params are ready, launch directly"

    aput-object v3, v2, v5

    .line 16071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 15644
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestBeginTime(J)V

    .line 15645
    const-string/jumbo v2, "synctry"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestMode(Ljava/lang/String;)V

    .line 15646
    const-string/jumbo v2, "sync"

    const-string/jumbo v3, "sync"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setOfflineMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 15647
    iget-object v2, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v3, "dingtalk_mini_app_launch_status"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15648
    invoke-static {}, Lhmp;->a()Lhmp;

    iget-object v2, p0, Lhls;->i:Ljava/lang/String;

    iget-object v3, p0, Lhls;->j:Ljava/lang/String;

    new-instance v4, Lhls$5;

    invoke-direct {v4, p0, v1}, Lhls$5;-><init>(Lhls;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;)V

    invoke-static {v2, v3, v4, v5, v6}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;ZZ)V

    goto/16 :goto_0

    .line 15611
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 242
    if-eqz p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    :cond_0
    const-string/jumbo v2, "MiniappInstance"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "callExternalJS : illegal params detected"

    aput-object v4, v3, v5

    .line 5071
    const-string/jumbo v4, "mini_app"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :goto_0
    return-void

    .line 255
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 256
    .local v0, "finalResult":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "namespace"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v2, "eventName"

    invoke-virtual {v0, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v2, p0, Lhls;->e:Lhlp;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lhls;->e:Lhlp;

    instance-of v2, v2, Lhlr;

    if-eqz v2, :cond_3

    .line 260
    iget-object v2, p0, Lhls;->e:Lhlp;

    check-cast v2, Lhlr;

    .line 5212
    iget-object v1, v2, Lhlr;->a:Liop;

    .line 261
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Liop;->getBridge()Linx;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 262
    invoke-interface {v1}, Liop;->getBridge()Linx;

    move-result-object v2

    const-string/jumbo v3, "dtCustomEvent"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0

    .line 265
    :cond_2
    const-string/jumbo v2, "MiniappInstance"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "callExternalJS : main page or page bridge is null"

    aput-object v4, v3, v5

    .line 6071
    const-string/jumbo v4, "mini_app"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 268
    .end local v1    # "h5Page":Liop;
    :cond_3
    const-string/jumbo v2, "MiniappInstance"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "callExternalJS : top page instance is null"

    aput-object v4, v3, v5

    .line 7071
    const-string/jumbo v4, "mini_app"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;Lhlk;)V
    .locals 0
    .param p2, "iMiniAppCallExternalNativeListener"    # Lhlk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lhlk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "configInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lhls;->d:Ljava/util/Map;

    .line 279
    iput-object p2, p0, Lhls;->c:Lhlk;

    .line 280
    return-void
.end method

.method public final b(Ljava/lang/String;)Lhlp;
    .locals 9
    .param p1, "page"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 7910
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "hybrid_the_one_new_instance_active"

    invoke-static {v3, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 284
    :goto_0
    if-nez v3, :cond_1

    .line 285
    const-string/jumbo v3, "MiniappInstance"

    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "initInstance : Component feature is inactive"

    aput-object v7, v6, v5

    .line 8071
    const-string/jumbo v5, "mini_app"

    invoke-static {v5, v3, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    .line 321
    :goto_1
    return-object v2

    :cond_0
    move v3, v5

    .line 7915
    goto :goto_0

    .line 288
    :cond_1
    iget-object v3, p0, Lhls;->k:Landroid/content/Context;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lhls;->h:Landroid/content/Intent;

    if-nez v3, :cond_3

    .line 289
    :cond_2
    const-string/jumbo v3, "MiniappInstance"

    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "initInstance : context or start bundle is null"

    aput-object v7, v6, v5

    .line 9071
    const-string/jumbo v5, "mini_app"

    invoke-static {v5, v3, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    .line 290
    goto :goto_1

    .line 293
    :cond_3
    iget-object v3, p0, Lhls;->k:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_4

    .line 294
    const-string/jumbo v3, "MiniappInstance"

    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "initInstance : context can not cast to activity"

    aput-object v7, v6, v5

    .line 10071
    const-string/jumbo v5, "mini_app"

    invoke-static {v5, v3, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    .line 295
    goto :goto_1

    .line 298
    :cond_4
    invoke-virtual {p0}, Lhls;->b()Z

    move-result v3

    if-nez v3, :cond_5

    .line 299
    const-string/jumbo v3, "MiniappInstance"

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "initInstance : target app package : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lhls;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not ready"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    .line 300
    goto :goto_1

    .line 303
    :cond_5
    iget-object v3, p0, Lhls;->h:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 304
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 305
    const-string/jumbo v3, "page"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_6
    const-string/jumbo v3, "nebulaStartflag"

    const-string/jumbo v6, "yes"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v3, p0, Lhls;->l:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 310
    invoke-static {}, Lhmp;->a()Lhmp;

    invoke-static {v0}, Lhmp;->a(Landroid/os/Bundle;)V

    .line 311
    new-instance v2, Lhlr;

    iget-object v3, p0, Lhls;->k:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p0}, Lhlr;-><init>(Landroid/content/Context;Ljava/lang/String;Lhls;)V

    .line 10181
    .local v2, "pageInstance":Lhlr;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v6

    .line 10182
    if-eqz v6, :cond_9

    .line 10183
    new-instance v7, Linz;

    invoke-direct {v7}, Linz;-><init>()V

    .line 11043
    iput-object v0, v7, Linz;->b:Landroid/os/Bundle;

    .line 10185
    iget-object v3, v2, Lhlr;->d:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v6, v3, v7}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Linz;)Liop;

    move-result-object v3

    .line 10186
    if-eqz v3, :cond_8

    .line 11234
    iget-object v5, v2, Lhlr;->b:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_7

    .line 11235
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, v2, Lhlr;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v2, Lhlr;->b:Landroid/widget/RelativeLayout;

    .line 11236
    iget-object v5, v2, Lhlr;->b:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10188
    :goto_2
    iput-object v3, v2, Lhlr;->a:Liop;

    .line 10189
    iget-object v3, v2, Lhlr;->b:Landroid/widget/RelativeLayout;

    iget-object v5, v2, Lhlr;->a:Liop;

    invoke-interface {v5}, Liop;->getContentView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10191
    iget-object v3, v2, Lhlr;->a:Liop;

    iget-object v5, v2, Lhlr;->b:Landroid/widget/RelativeLayout;

    invoke-interface {v3, v5}, Liop;->setRootView(Landroid/view/View;)V

    .line 10192
    iget-object v3, v2, Lhlr;->a:Liop;

    new-instance v5, Lhlr$1;

    invoke-direct {v5, v2}, Lhlr$1;-><init>(Lhlr;)V

    invoke-interface {v3, v5}, Liop;->setHandler(Liop$b;)V

    .line 10198
    iget-object v3, v2, Lhlr;->a:Liop;

    invoke-interface {v3}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    iput-object v3, v2, Lhlr;->c:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 313
    .local v1, "initSuccess":Z
    :goto_3
    if-eqz v1, :cond_a

    .line 314
    iput-object v2, p0, Lhls;->e:Lhlp;

    .line 315
    iget-object v3, p0, Lhls;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget v3, p0, Lhls;->q:I

    .line 12220
    iput v3, v2, Lhlr;->e:I

    .line 317
    iget v3, p0, Lhls;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lhls;->q:I

    .line 13212
    iget-object v3, v2, Lhlr;->a:Liop;

    .line 318
    invoke-interface {v3}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lhls;->o:Landroid/os/Bundle;

    goto/16 :goto_1

    .line 11239
    .end local v1    # "initSuccess":Z
    :cond_7
    iget-object v5, v2, Lhlr;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->removeAllViews()V

    goto :goto_2

    .line 10201
    :cond_8
    const-string/jumbo v3, "MiniPageInstance"

    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "initInstance : generate main page fail"

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    move v1, v5

    .line 10205
    goto :goto_3

    .restart local v1    # "initSuccess":Z
    :cond_a
    move-object v2, v4

    .line 321
    goto/16 :goto_1
.end method

.method public final b()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    iget-object v5, p0, Lhls;->h:Landroid/content/Intent;

    if-nez v5, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v3

    .line 208
    :cond_1
    iget-object v5, p0, Lhls;->i:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 211
    iget-object v5, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v6, "dingtalk_mini_app_launch_status"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 213
    .local v1, "launchStatus":I
    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    .line 216
    iget-object v5, p0, Lhls;->h:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 217
    iget-object v5, p0, Lhls;->h:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 218
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v5

    iget-object v6, p0, Lhls;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 221
    :cond_2
    invoke-static {}, Lhmp;->a()Lhmp;

    iget-object v5, p0, Lhls;->i:Ljava/lang/String;

    iget-object v6, p0, Lhls;->j:Ljava/lang/String;

    invoke-static {v5, v6}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 222
    .local v0, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_4

    .line 223
    invoke-static {}, Lhmp;->a()Lhmp;

    iget-object v5, p0, Lhls;->i:Ljava/lang/String;

    iget-object v6, p0, Lhls;->j:Ljava/lang/String;

    invoke-static {v5, v6}, Lhmp;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 224
    .local v2, "packageReady":Z
    if-eqz v2, :cond_3

    .line 225
    iput-object v0, p0, Lhls;->l:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 226
    iget-object v3, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v5, "dingtalk_mini_app_launch_status"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move v3, v4

    .line 228
    goto :goto_0

    .line 230
    :cond_3
    iget-object v5, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v6, "dingtalk_mini_app_launch_status"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 234
    .end local v2    # "packageReady":Z
    :cond_4
    iget-object v4, p0, Lhls;->h:Landroid/content/Intent;

    const-string/jumbo v5, "dingtalk_mini_app_launch_status"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final consumeMessage(J)V
    .locals 0
    .param p1, "mid"    # J

    .prologue
    .line 474
    return-void
.end method

.method public final fetchMessage(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhdi$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lhls;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhls;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lhls;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lhls;->g:Lhlz;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lhls;->g:Lhlz;

    invoke-interface {v0}, Lhlz;->a()Landroid/content/Context;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhls;->k:Landroid/content/Context;

    goto :goto_0
.end method

.method public final getCurrentNavId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;
    .locals 0

    .prologue
    .line 418
    return-object p0
.end method

.method public final postMessage(Ljava/util/List;Lhdi$b;)V
    .locals 0
    .param p2, "message"    # Lhdi$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhdi$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public final provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lhls;->r:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 452
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reload()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public final triggerMessage()V
    .locals 0

    .prologue
    .line 479
    return-void
.end method
