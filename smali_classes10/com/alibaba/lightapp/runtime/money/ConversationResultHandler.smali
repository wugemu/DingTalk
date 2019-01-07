.class public Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;
.super Ljava/lang/Object;
.source "ConversationResultHandler.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# static fields
.field private static final serialVersionUID:J = 0x1cd28eb8b0429ec3L


# instance fields
.field private mCallbackId:Ljava/lang/String;

.field private mMaxUsers:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "maxUsers"    # I
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;->mMaxUsers:I

    .line 35
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;->mCallbackId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;->notifyResult(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method private getConversation(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    new-instance v0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler$1;-><init>(Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;Landroid/content/Intent;Landroid/app/Activity;)V

    .line 88
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 91
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, p3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private notifyResult(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 96
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, p2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 97
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objects"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "cid":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    .line 42
    aget-object v3, p2, v4

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 43
    aget-object v0, p2, v4

    check-cast v0, Landroid/os/Bundle;

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "conversation_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "action_request_money_pick_result_conversation"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "extra_callback_id"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;->mCallbackId:Ljava/lang/String;

    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 50
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-direct {p0, p1, v2}, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;->notifyResult(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-direct {p0, p1, v2, v1}, Lcom/alibaba/lightapp/runtime/money/ConversationResultHandler;->getConversation(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
