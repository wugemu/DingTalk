.class final Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;
.super Ljava/lang/Object;
.source "ConversationResultHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;->getConversation(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
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
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;->c:Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    const-string/jumbo v0, "lightapp"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "RequestMoney getConversation failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;->c:Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;->access$000(Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;Landroid/app/Activity;Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1066
    if-eqz p1, :cond_0

    .line 1067
    new-instance v0, Lcom/alibaba/lightapp/runtime/money/RequestMoneyConversation;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/money/RequestMoneyConversation;-><init>()V

    .line 1068
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/money/RequestMoneyConversation;->cId:Ljava/lang/String;

    .line 1069
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/money/RequestMoneyConversation;->cName:Ljava/lang/String;

    .line 1070
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v1

    iput v1, v0, Lcom/alibaba/lightapp/runtime/money/RequestMoneyConversation;->memberCount:I

    .line 1071
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;->a:Landroid/content/Intent;

    const-string/jumbo v2, "extra_conversation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1073
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;->c:Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;->access$000(Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;Landroid/app/Activity;Landroid/content/Intent;)V

    .line 63
    :cond_0
    return-void
.end method
