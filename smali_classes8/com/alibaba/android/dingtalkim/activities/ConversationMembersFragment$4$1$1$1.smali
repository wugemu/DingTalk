.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;
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
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1174
    const-string/jumbo v0, "STATISTICS"

    .line 1175
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x332d

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->E(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 1178
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1139
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1139
    .line 2142
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 2157
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 2142
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 2158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->E(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 2159
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    .line 2161
    if-eqz v0, :cond_4

    iget-object v2, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_4

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 2162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2596
    if-eqz v2, :cond_2

    .line 2599
    iget-object v0, v1, Lcwe;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2600
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2601
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    .line 2602
    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 2603
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 2604
    invoke-virtual {v1}, Lcwe;->notifyDataSetChanged()V

    .line 2167
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v0, :cond_3

    .line 2168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcwe;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v3}, Lcwe;->getCount()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 1139
    :cond_3
    return-void

    .line 2159
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method
