.class final Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$1;
.super Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;
.source "GroupRobotListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    goto :goto_0
.end method

.method protected final b(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->b(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    goto :goto_0
.end method

.method protected final c(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    goto :goto_0
.end method
