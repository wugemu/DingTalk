.class public Lcom/alibaba/dingtalk/share/share/CopyLinkUnit;
.super Lgvu;
.source "CopyLinkUnit.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 27
    new-instance v1, Lgwa;

    invoke-direct {v1}, Lgwa;-><init>()V

    .line 1158
    new-instance v1, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 1159
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 1160
    sget v2, Lgvn$d;->ic_share_webview_copy_link:I

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 1161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lgvn$h;->share_copy_link:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 1162
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 1163
    const-string/jumbo v0, "DINGDING_COPYLINK"

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 1164
    const-string/jumbo v0, "copy"

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, v1}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 28
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/CopyLinkUnit;->a:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/CopyLinkUnit;->a:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 6
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 38
    const-string/jumbo v2, "share"

    const-string/jumbo v3, "[CopyLinkUnit] share clicked"

    invoke-static {v2, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-nez p1, :cond_0

    .line 40
    const-string/jumbo v2, "share"

    const-string/jumbo v3, "[CopyLinkUnit] shareInfo is null, cancelShare"

    invoke-static {v2, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string/jumbo v2, "copy_url"

    invoke-static {p1, v2}, Lcom/alibaba/dingtalk/share/share/CopyLinkUnit;->a(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/CopyLinkUnit;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/CopyLinkUnit;->a:Landroid/content/Context;

    sget v4, Lgvn$h;->chat_copy_is_success:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v2, "to"

    const-string/jumbo v3, "copy"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v2, "url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v3, "share_to"

    invoke-interface {v2, v5, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
