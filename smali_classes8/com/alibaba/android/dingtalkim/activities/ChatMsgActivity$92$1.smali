.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjo$b;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;Lcjo$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    .prologue
    .line 2783
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->a:Lcjo$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v7, 0x2710

    const/4 v6, 0x1

    .line 2786
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2815
    :cond_0
    :goto_0
    return-void

    .line 2790
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2791
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z

    .line 2797
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->a:Lcjo$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->a:Lcjo$b;

    iget-object v2, v2, Lcjo$b;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2800
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2801
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->a:Lcjo$b;

    iget-object v1, v2, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2802
    .local v1, "messageUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->G(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->G(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2803
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2804
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->G(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D:Ljava/lang/String;

    .line 2806
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;)V

    .line 2807
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->H(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 2809
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.CONVERSATION_NOTICE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2810
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "cid"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2811
    const-string/jumbo v2, "is_single_chat"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2812
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 2793
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "messageUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2794
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1
.end method
