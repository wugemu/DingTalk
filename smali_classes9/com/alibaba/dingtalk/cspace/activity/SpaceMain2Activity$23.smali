.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;->a:Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;->c:Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 330
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "space_mainpage_guide_confirm_"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;->a:Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 333
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;->c:Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;->actionLink:Ljava/lang/String;

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 334
    return-void
.end method
