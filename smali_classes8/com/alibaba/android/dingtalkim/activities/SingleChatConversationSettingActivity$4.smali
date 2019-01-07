.class final Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;
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
    .line 489
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->j(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->j(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_3

    .line 493
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_bathhouse_entry_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v8

    .line 497
    .local v8, "currentUid":J
    const/4 v2, 0x0

    .line 498
    .local v2, "singleUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->j(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 499
    .local v7, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    .line 500
    move-object v2, v7

    .line 504
    .end local v7    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    if-eqz v2, :cond_3

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->k(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ldbw;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->k(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ldbw;

    move-result-object v0

    invoke-virtual {v0}, Ldbw;->a()V

    .line 507
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;Ldbw;)Ldbw;

    .line 509
    :cond_2
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->h(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "single_set_boss"

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;)V

    invoke-virtual/range {v0 .. v6}, Ldqm;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;Ldbw;)Ldbw;

    .line 522
    .end local v2    # "singleUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v8    # "currentUid":J
    :cond_3
    return-void
.end method
