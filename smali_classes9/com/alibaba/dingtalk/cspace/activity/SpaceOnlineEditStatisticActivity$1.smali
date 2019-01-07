.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$1;
.super Ljava/lang/Object;
.source "SpaceOnlineEditStatisticActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 96
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_file_mobile_online_unedited_ding"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$1;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)V

    .line 100
    return-void
.end method
