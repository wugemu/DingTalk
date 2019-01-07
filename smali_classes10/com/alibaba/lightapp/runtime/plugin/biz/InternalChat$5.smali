.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;
.super Ljava/lang/Object;
.source "InternalChat.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->navToChatWithAttendance(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lhdn$k;->create_con_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 0
    .param p1, "id"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "progress"    # I

    .prologue
    .line 368
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 365
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;->onProgress(Lcom/alibaba/wukong/im/Conversation;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p1, "converObject"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 372
    if-eqz p1, :cond_1

    .line 373
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;->val$context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lhdn$k;->create_con_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method
