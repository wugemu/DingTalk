.class public final Lgvw;
.super Lgvu;
.source "QQZoneShareUnit.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lgwm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 37
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    .line 1235
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 1237
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 1238
    sget v1, Lgvn$d;->ic_share_qq_zone_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 1239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->dt_share_to_qq_zone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 1240
    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 1241
    const-string/jumbo v1, "share_to_qq_zone"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 1242
    const-string/jumbo v1, "qqzone"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 32
    const-string/jumbo v0, "lwfrom=user_qq_zone"

    iput-object v0, p0, Lgvw;->b:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lgvw;->a:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lgvw;->c:Lgwm;

    .line 40
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "link"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    iget-object v1, p0, Lgvw;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getQQExecutor(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;

    move-result-object v0

    new-instance v5, Lgvw$1;

    invoke-direct {v5, p0, p3}, Lgvw$1;-><init>(Lgvw;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->shareLinkToZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljuc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v6

    .line 110
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "qqzone"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " share default error:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgvw;->c:Lgwm;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lgvw;->c:Lgwm;

    invoke-interface {v0}, Lgwm;->clean()V

    .line 47
    :cond_0
    return-void
.end method

.method public final share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 5
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 51
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[QQZoneShareUnit] share clicked"

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lgvw;->c:Lgwm;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lgvw;->c:Lgwm;

    invoke-interface {v0, p1}, Lgwm;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 55
    :cond_0
    if-nez p1, :cond_2

    .line 56
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[QQZoneShareUnit] shareInfo is null cancelShare"

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-nez v0, :cond_1

    .line 2069
    const-string/jumbo v0, "share"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "qqzone"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " share default"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 2071
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 2072
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2073
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v4

    .line 2075
    iget-object v0, p0, Lgvw;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 2076
    iget-object v0, p0, Lgvw;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2080
    :cond_3
    invoke-direct {p0, v1, v2, v3, v4}, Lgvw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
