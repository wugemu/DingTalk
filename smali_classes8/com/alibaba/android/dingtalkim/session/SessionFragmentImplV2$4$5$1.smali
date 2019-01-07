.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5$1;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "paramIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1512
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1513
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1514
    const-string/jumbo v0, "im_navigator_from"

    const-string/jumbo v1, "maipage_msg_list"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1515
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1516
    const-string/jumbo v0, "intent_is_burn_chat"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1517
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->c:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;Landroid/content/Intent;)V

    .line 1518
    return-object p1
.end method
