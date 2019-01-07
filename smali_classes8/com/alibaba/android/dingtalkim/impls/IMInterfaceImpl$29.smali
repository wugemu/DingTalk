.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/ConversationCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/wukong/Callback;Landroid/app/Activity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->d:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->b:Landroid/app/Activity;

    iput p4, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1524
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1524
    check-cast p1, Lcom/alibaba/wukong/im/ConversationCard;

    .line 2527
    if-nez p1, :cond_1

    .line 2528
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 2529
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "invalid conversationCard"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    :cond_0
    :goto_0
    return-void

    .line 2533
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/ConversationCard;->getConversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    .line 2534
    if-nez v1, :cond_2

    .line 2535
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 2536
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "invalid conversation"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2540
    :cond_2
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->joinValidationType()Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    move-result-object v0

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->ONLY_MASTER:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    if-eq v0, v2, :cond_3

    .line 2541
    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29$1;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;)V

    .line 2556
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/ConversationCard;->getOwnerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->addGroupMemberBySearch(Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    goto :goto_0

    .line 2558
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->b:Landroid/app/Activity;

    const-class v3, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2559
    const-string/jumbo v2, "conversation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2560
    const-string/jumbo v1, "inviter_id"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/ConversationCard;->getOwnerId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2561
    const-string/jumbo v1, "origin"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2562
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
