.class final Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$12;
.super Ljava/lang/Object;
.source "SingleChatConversationSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 202
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "oto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v2, "status"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_auto_trans_enable_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "auto_translate"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_1
    invoke-interface {v2, v3, v1}, Lcom/alibaba/wukong/im/Conversation;->updatePrivateExtension(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 205
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_0

    .line 208
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_1
.end method
