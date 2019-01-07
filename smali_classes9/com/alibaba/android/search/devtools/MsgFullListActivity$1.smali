.class final Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MsgFullListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/devtools/MsgFullListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/devtools/MsgFullListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/devtools/MsgFullListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;->a:Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 50
    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "conversationId":Ljava/lang/String;
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1$1;-><init>(Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;)V

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 73
    .end local v0    # "conversationId":Ljava/lang/String;
    :cond_0
    return-void
.end method
