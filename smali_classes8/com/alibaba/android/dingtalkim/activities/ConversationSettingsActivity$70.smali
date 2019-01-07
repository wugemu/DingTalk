.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 3940
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4109
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 4110
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const/16 v1, 0x2b62

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 4111
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3940
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3940
    check-cast p1, Ljava/util/List;

    .line 4943
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;)Ljava/util/List;

    .line 4945
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4946
    const-wide/16 v2, 0x0

    .line 4947
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v8

    .line 4948
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 4949
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Member;

    .line 4950
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4953
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v4

    .line 4954
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->roleType()Lcom/alibaba/wukong/im/Member$RoleType;

    move-result-object v6

    sget-object v11, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    if-ne v6, v11, :cond_2

    .line 4956
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    cmp-long v0, v8, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Z)Z

    move-wide v2, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4958
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v6, v0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Member;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4959
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4960
    cmp-long v0, v8, v4

    if-nez v0, :cond_3

    .line 4961
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Z)Z

    .line 4964
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4967
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4968
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget-object v1, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/wukong/im/Member$RoleType;)Lcom/alibaba/wukong/im/Member$RoleType;

    .line 4973
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->am(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 4974
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->an(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 4976
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_b

    .line 4977
    const/4 v0, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4978
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aa(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_6
    const/4 v0, 0x1

    .line 4979
    :goto_3
    if-eqz v0, :cond_e

    .line 4980
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v1, Lctk$f;->edit_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4985
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4986
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->p(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 4989
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getShowHistoryType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 4990
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v1, Lctk$f;->tv_show_history_desc_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4995
    :goto_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 4996
    if-nez v0, :cond_8

    .line 4997
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4999
    :cond_8
    const-string/jumbo v1, "owner_id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5000
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 5002
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5003
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5004
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I

    .line 5038
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ar(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 5039
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ao(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 5041
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->B(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5042
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->B(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;->notifyDataSetChanged()V

    .line 5044
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)V

    .line 5047
    :cond_b
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    .line 5066
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_18

    .line 5067
    const/4 v0, 0x0

    const/16 v1, 0x32

    invoke-interface {v7, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 5070
    :goto_7
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70$2;

    invoke-direct {v2, p0, v10, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;Ljava/util/HashSet;Ljava/util/List;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5104
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    .line 3940
    return-void

    .line 4969
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aa(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4970
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget-object v1, Lcom/alibaba/wukong/im/Member$RoleType;->ADMIN:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/wukong/im/Member$RoleType;)Lcom/alibaba/wukong/im/Member$RoleType;

    goto/16 :goto_2

    .line 4978
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 4982
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v1, Lctk$f;->edit_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 4992
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v1, Lctk$f;->tv_show_history_desc_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 5006
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5007
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aa(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5008
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ao(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 5009
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5010
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ap(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5011
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aq(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5012
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I

    goto/16 :goto_6

    .line 5014
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ap(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5015
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aq(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5016
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I

    goto/16 :goto_6

    .line 5019
    :cond_13
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I

    goto/16 :goto_6

    .line 5022
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ao(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 5023
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ap(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5024
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aq(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5025
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5026
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I

    goto/16 :goto_6

    .line 5028
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aa(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5029
    :cond_16
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I

    goto/16 :goto_6

    .line 5031
    :cond_17
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I

    goto/16 :goto_6

    :cond_18
    move-object v1, v7

    goto/16 :goto_7
.end method
