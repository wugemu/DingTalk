.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17$1;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;

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
    .line 523
    const-string/jumbo v0, "STATISTICS"

    .line 524
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x332d

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 525
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 494
    check-cast p1, Ljava/util/List;

    .line 1497
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1498
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1501
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Member;

    .line 1503
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1506
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v4

    .line 1507
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1510
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->roleType()Lcom/alibaba/wukong/im/Member$RoleType;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    if-ne v6, v7, :cond_3

    .line 1511
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;J)J

    .line 1516
    :cond_2
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1512
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-static {v6, v0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Member;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1513
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->i:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1518
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/ArrayList;)V

    .line 494
    return-void
.end method
