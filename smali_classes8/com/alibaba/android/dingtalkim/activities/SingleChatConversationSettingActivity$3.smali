.class final Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;
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
    .line 442
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 445
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 450
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "oto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v2, "status"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->i(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "on"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 453
    const-string/jumbo v1, "isretail"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_setting_topswitch_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 457
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->i(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v1, v2, :cond_3

    .line 459
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->updateToVisible()V

    .line 462
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->i(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v3, v1}, Lcom/alibaba/wukong/im/Conversation;->stayOnTop(ZLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 451
    :cond_4
    const-string/jumbo v1, "off"

    goto :goto_1
.end method
