.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;->a:Ljava/util/List;

    iput p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;->b:I

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 588
    check-cast p1, Ljava/util/List;

    .line 1591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1592
    if-eqz p1, :cond_1

    .line 1593
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1594
    invoke-static {v0}, Ldqw;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ldqw;

    move-result-object v0

    .line 1595
    if-eqz v0, :cond_0

    .line 1596
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1601
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;Ljava/util/ArrayList;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNick(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 588
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 650
    const-string/jumbo v0, "STATISTICS"

    .line 651
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x332d

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 653
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;I)I

    .line 654
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->q(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 655
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->p(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 656
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 646
    return-void
.end method
