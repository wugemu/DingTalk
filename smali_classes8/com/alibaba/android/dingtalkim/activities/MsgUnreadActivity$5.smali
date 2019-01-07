.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$5;
.super Ljava/lang/Object;
.source "MsgUnreadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "firs_chat_ding_guide"

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 402
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;B)V

    .line 403
    .local v0, "event":Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->k(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->k(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 1438
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a$1;

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 406
    :cond_0
    return-void
.end method
