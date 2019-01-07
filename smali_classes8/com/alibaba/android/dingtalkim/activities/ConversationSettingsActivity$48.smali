.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$48;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 2759
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$48;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

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
    .line 2762
    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$48;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2763
    const-string/jumbo v2, "count_limit"

    const v3, 0x7fffffff

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2764
    const-string/jumbo v2, "filter_myself"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2765
    const-string/jumbo v2, "activity_identify"

    const-string/jumbo v3, "activity_identify_remove"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2768
    .local v1, "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$48;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->S(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2769
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$48;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->S(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2772
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$48;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$48;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Z(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2773
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$48;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Z(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObjectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2774
    .local v0, "identityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v0, :cond_1

    .line 2775
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2778
    .end local v0    # "identityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_1
    const-string/jumbo v2, "unchecked_users"

    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2779
    return-object p1
.end method
