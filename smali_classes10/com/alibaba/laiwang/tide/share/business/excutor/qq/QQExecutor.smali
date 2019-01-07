.class public Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;
.super Ljava/lang/Object;
.source "QQExecutor.java"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mTencent:Ljud;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mConstans"    # Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mContext:Landroid/app/Activity;

    .line 35
    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getQQAppID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mContext:Landroid/app/Activity;

    invoke-static {v0, v1}, Ljud;->a(Ljava/lang/String;Landroid/content/Context;)Ljud;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mTencent:Ljud;

    .line 36
    return-void
.end method

.method private getApplicationName()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 119
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 122
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v3

    const/4 v0, 0x0

    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0
.end method

.method private initLinkBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "linkUrl"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "is2QQZone"    # Z

    .prologue
    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "targetUrl"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz p5, :cond_1

    .line 101
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "imageUrlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string/jumbo v2, "imageUrl"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    .end local v0    # "imageUrlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-string/jumbo v2, "appName"

    invoke-direct {p0}, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v2, "req_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    return-object v1

    .line 107
    :cond_1
    const-string/jumbo v2, "imageUrl"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initLocalImageBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "imageLocalUrl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "req_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string/jumbo v1, "appName"

    invoke-direct {p0}, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v0
.end method


# virtual methods
.method public shareLinkToQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljuc;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "linkUrl"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "qqShareListener"    # Ljuc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->initLinkBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 71
    .local v6, "params":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mTencent:Ljud;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, v6, p5}, Ljud;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V

    .line 72
    return-void
.end method

.method public shareLinkToZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljuc;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "linkUrl"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "qqShareListener"    # Ljuc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->initLinkBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 84
    .local v6, "params":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mTencent:Ljud;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, v6, p5}, Ljud;->b(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V

    .line 85
    return-void
.end method

.method public shareLocalImageToQQ(Ljava/lang/String;Ljuc;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "qqShareListener"    # Ljuc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->initLocalImageBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, "params":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mTencent:Ljud;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, p2}, Ljud;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V

    .line 47
    return-void
.end method

.method public shareLocalImageToZone(Ljava/lang/String;Ljuc;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "qqShareListener"    # Ljuc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->initLocalImageBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "params":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mTencent:Ljud;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, p2}, Ljud;->b(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V

    .line 58
    return-void
.end method
