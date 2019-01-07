.class final Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18$1;
.super Ljava/lang/Object;
.source "SingleChatConversationSettingActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18$1;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 358
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18$1;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18$1;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 360
    const-string/jumbo v0, "conversation_type"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18$1;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const-string/jumbo v0, "intent_key_menu_seed"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18$1;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 362
    return-object p1
.end method
