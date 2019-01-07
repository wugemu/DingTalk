.class public Lcom/alibaba/dingtalk/share/WorkCircleUnit;
.super Lgvu;
.source "WorkCircleUnit.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lgwm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/dingtalk/share/WorkCircleUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/share/WorkCircleUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 42
    .line 1110
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 1111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 1112
    sget v1, Lgvn$d;->ic_share_to_circle:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 1113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->dt_circle_share_to_work_circle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 1114
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 1115
    const-string/jumbo v1, "DINGDING_WORK_CIRCLE"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 1116
    const-string/jumbo v1, "dingtalk_circle"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 43
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;->a:Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;->b:Lgwm;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;->b:Lgwm;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;->b:Lgwm;

    invoke-interface {v0}, Lgwm;->clean()V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;->a:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public isSupportShare(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "installedSharePackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lgvu;->isSupportShare(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 4
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 49
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[WorkCircleUnit] share clicked"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;->b:Lgwm;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;->b:Lgwm;

    invoke-interface {v0, p1}, Lgwm;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 53
    :cond_0
    if-nez p1, :cond_2

    .line 54
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[WorkCircleUnit] shareInfo is null, cancelShare"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-nez v0, :cond_1

    .line 2066
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2067
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2069
    const-string/jumbo v1, "share_url"

    .line 2070
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/dingtalk/share/WorkCircleUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2069
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string/jumbo v1, "share_pic_url"

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    const-string/jumbo v1, "share_title"

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    const-string/jumbo v1, "share_text"

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    const-string/jumbo v1, "im_navigator_from"

    const-string/jumbo v2, "share"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2076
    const-string/jumbo v1, "share_pic_url_to_ding"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    :cond_3
    const-string/jumbo v1, "from_share"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2079
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 2080
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
