.class final Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector$1;
.super Ljava/lang/Object;
.source "AddRobotActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector;->checkRobotCountInfo(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
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
        "Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector$1;->c:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector$1;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 559
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;

    .line 1563
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1564
    if-eqz p1, :cond_1

    .line 1565
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;->canAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent_key_group_selection_do_logic"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1567
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector$1;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1569
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 1570
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1572
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_group_search_result_selected"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1576
    :goto_0
    return-void

    :cond_0
    sget v0, Lctk$i;->dt_robot_group_robot_over_limit:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1579
    :cond_1
    const-string/jumbo v0, "imrobot"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getGroupRobotInfo return null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 590
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v0, "imrobot"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getGroupRobotInfo onException: code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 586
    return-void
.end method
