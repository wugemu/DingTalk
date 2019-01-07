.class final Leyw$2;
.super Ljava/lang/Object;
.source "ShowWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leyw;->a(Landroid/app/Activity;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field final synthetic b:Landroid/view/View$OnClickListener;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Landroid/view/View$OnClickListener;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Leyw$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    iput-object p2, p0, Leyw$2;->b:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Leyw$2;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 382
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Leyw;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Negative btn clk"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 385
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v1, :cond_0

    .line 386
    const-string/jumbo v2, "call_dingcard_ad_from_dingdrive_OK_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object v2, p0, Leyw$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 389
    iget-object v2, p0, Leyw$2;->b:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_2

    .line 390
    iget-object v2, p0, Leyw$2;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getInstance()Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getDingSimCardSetting()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v0

    .line 394
    .local v0, "baseSetting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Leyw;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Negative btn to ding-card page"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Leyw$2;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->getUri()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
