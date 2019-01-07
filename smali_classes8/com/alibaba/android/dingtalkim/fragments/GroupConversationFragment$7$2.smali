.class final Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7$2;
.super Ljava/lang/Object;
.source "GroupConversationFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7$2;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7$2;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "paramIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 461
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7$2;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->G:Landroid/app/Application;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    .line 462
    .local v0, "broadcastManager":Ldq;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.HOMETAB_CLICKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 464
    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7$2;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 466
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string/jumbo v2, "conversation"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7$2;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 468
    const-string/jumbo v2, "im_navigator_from"

    const-string/jumbo v3, "contact_group"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    return-object p1
.end method
