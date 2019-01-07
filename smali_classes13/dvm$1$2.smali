.class final Ldvm$1$2;
.super Ljava/lang/Object;
.source "ExpandableGroupConversationAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldvm$1;


# direct methods
.method constructor <init>(Ldvm$1;)V
    .locals 0
    .param p1, "this$1"    # Ldvm$1;

    .prologue
    .line 223
    iput-object p1, p0, Ldvm$1$2;->a:Ldvm$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "paramIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    .line 229
    .local v0, "broadcastManager":Ldq;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.HOMETAB_CLICKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 231
    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Ldvm$1$2;->a:Ldvm$1;

    iget-object v3, v3, Ldvm$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 232
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v2, "conversation"

    iget-object v3, p0, Ldvm$1$2;->a:Ldvm$1;

    iget-object v3, v3, Ldvm$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 234
    const-string/jumbo v2, "im_navigator_from"

    const-string/jumbo v3, "contact_group"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    return-object p1
.end method
