.class final Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "GreetingCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "intent_action_pick_status_change"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    const-string/jumbo v3, "pick_status"

    .line 56
    invoke-static {p2, v3}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 57
    .local v2, "status":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    if-eqz v2, :cond_1

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "cluster":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v3, :cond_2

    .line 60
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 64
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 65
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 66
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-static {v3, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 67
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)V

    .line 71
    .end local v1    # "cluster":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .end local v2    # "status":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    :cond_1
    return-void

    .line 61
    .restart local v1    # "cluster":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .restart local v2    # "status":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    :cond_2
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v1, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    goto :goto_0
.end method
