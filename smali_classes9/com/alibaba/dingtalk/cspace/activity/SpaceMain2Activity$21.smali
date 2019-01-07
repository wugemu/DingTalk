.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$21;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$21;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$21;->a:Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 316
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "space_mainpage_guide_close_"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$21;->a:Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 317
    return-void
.end method
