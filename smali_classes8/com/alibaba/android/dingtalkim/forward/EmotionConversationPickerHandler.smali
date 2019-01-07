.class public Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "EmotionConversationPickerHandler.java"


# instance fields
.field private mDelegate:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

.field private mPackageFullDesc:Ljava/lang/String;

.field private mPackageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)V
    .locals 0
    .param p1, "emotionPackageId"    # Ljava/lang/String;
    .param p2, "emotionPackageFullDesc"    # Ljava/lang/String;
    .param p3, "emotionSendDelegate"    # Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;->mPackageId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;->mPackageFullDesc:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;->mDelegate:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .line 26
    return-void
.end method


# virtual methods
.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;->mDelegate:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->paramInvalidate()Z

    move-result v0

    goto :goto_0
.end method

.method protected share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;->onFail(ILjava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v1, "emotionShareIntent":Landroid/content/Intent;
    const-string/jumbo v2, "intent_key_emotion_package_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;->mPackageId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v2, "intent_key_emotion_package_full_desc"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;->mPackageFullDesc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "conversation"

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 53
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;->mDelegate:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v2, p1, v3}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    goto :goto_0
.end method
