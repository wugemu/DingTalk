.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjo$b;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;Lcjo$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->a:Lcjo$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 406
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    invoke-virtual {v2}, Lcug;->notifyDataSetChanged()V

    .line 409
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->a:Lcjo$b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->a:Lcjo$b;

    iget-object v2, v2, Lcjo$b;->a:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 425
    :cond_1
    :goto_0
    return-void

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 413
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->a:Lcjo$b;

    iget-object v1, v2, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 414
    .local v1, "messageUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 416
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->i:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->D:Ljava/lang/String;

    .line 417
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/lang/String;)V

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.CONVERSATION_NOTICE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "cid"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string/jumbo v2, "is_single_chat"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method
