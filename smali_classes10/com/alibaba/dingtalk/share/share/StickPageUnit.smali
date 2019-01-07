.class public Lcom/alibaba/dingtalk/share/share/StickPageUnit;
.super Lgvu;
.source "StickPageUnit.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 28
    new-instance v1, Lgwa;

    invoke-direct {v1}, Lgwa;-><init>()V

    .line 1169
    new-instance v1, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 1170
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 1180
    sget v2, Lgvn$d;->ic_share_stick_page:I

    .line 1182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1183
    instance-of v0, p1, Lgvj;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lgvj;

    invoke-interface {v0}, Lgvj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lgvn$h;->dt_back_to_session:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1190
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 1191
    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 1192
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 1193
    const-string/jumbo v0, "DINGDING_STICKPAGE"

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v0, "stick_page"

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, v1}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 29
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/StickPageUnit;->a:Landroid/content/Context;

    .line 30
    return-void

    .line 1186
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lgvn$h;->dt_open_application_top:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/StickPageUnit;->a:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 4
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 39
    const-string/jumbo v1, "share"

    const-string/jumbo v2, "[StickPageUnit] share clicked"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/StickPageUnit;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/StickPageUnit;->a:Landroid/content/Context;

    instance-of v1, v1, Lgvj;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/StickPageUnit;->a:Landroid/content/Context;

    check-cast v1, Lgvj;

    const-string/jumbo v2, "stick_page_unit"

    invoke-interface {v1, v2}, Lgvj;->a(Ljava/lang/String;)V

    .line 44
    :cond_0
    if-nez p1, :cond_1

    .line 45
    const-string/jumbo v1, "share"

    const-string/jumbo v2, "[StickPageUnit] shareInfo is null, cancelShare"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "to"

    const-string/jumbo v2, "stickPage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "share_to"

    invoke-interface {v1, v3, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
