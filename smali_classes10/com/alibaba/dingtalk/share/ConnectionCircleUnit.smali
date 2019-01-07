.class public Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;
.super Lgvu;
.source "ConnectionCircleUnit.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lgwm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 43
    .line 1099
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 1100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 1101
    sget v1, Lgvn$d;->ic_share_to_circle:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 1102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->dt_circle_share_to_connection_circle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 1103
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 1104
    const-string/jumbo v1, "DINGDING_CONNECTION_CIRCLE"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 1105
    const-string/jumbo v1, "dingtalk_connection"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 44
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;->a:Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;->b:Lgwm;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;->b:Lgwm;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;->b:Lgwm;

    invoke-interface {v0}, Lgwm;->clean()V

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;->a:Landroid/content/Context;

    .line 96
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
    .line 100
    .local p1, "installedSharePackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    const/4 v0, 0x0

    return v0
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 4
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 50
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[ConnectionCircleUnit] share clicked"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;->b:Lgwm;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;->b:Lgwm;

    invoke-interface {v0, p1}, Lgwm;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 54
    :cond_0
    if-nez p1, :cond_2

    .line 55
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[ConnectionCircleUnit] shareInfo is null, cancelShare"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-nez v0, :cond_1

    .line 2067
    if-nez p1, :cond_3

    .line 2068
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[ConnectionCircleUnit] shareInfo null"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2071
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2072
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2074
    const-string/jumbo v1, "share_url"

    .line 2075
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2074
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    const-string/jumbo v1, "share_pic_url"

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    const-string/jumbo v1, "share_title"

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    const-string/jumbo v1, "share_text"

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    const-string/jumbo v1, "im_navigator_from"

    const-string/jumbo v2, "share"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2081
    const-string/jumbo v1, "share_pic_url_to_ding"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    :cond_4
    const-string/jumbo v1, "from_share"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2084
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 2085
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
