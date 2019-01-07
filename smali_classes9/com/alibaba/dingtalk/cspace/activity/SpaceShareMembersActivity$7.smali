.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$7;
.super Ljava/lang/Object;
.source "SpaceShareMembersActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgiu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 563
    check-cast p1, Lgiu;

    .line 1566
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->dismissLoadingDialog()V

    .line 1567
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    if-eqz p1, :cond_0

    .line 1572
    iget-object v0, p1, Lgiu;->a:Ljava/lang/Boolean;

    .line 2022
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1572
    if-eqz v0, :cond_1

    .line 1573
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->k:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iget-object v1, p1, Lgiu;->b:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgiu;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->dismissLoadingDialog()V

    .line 583
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 589
    return-void
.end method
