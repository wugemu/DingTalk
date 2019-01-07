.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

    .prologue
    .line 3633
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

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
    .line 3652
    const-string/jumbo v0, "101002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3653
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3655
    :cond_0
    const-string/jumbo v0, "STATISTICS"

    .line 3656
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x332d

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 3658
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ac(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 3659
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3633
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3633
    check-cast p1, Ljava/util/List;

    .line 4636
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ac(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 4637
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aj(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4638
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aj(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4639
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4640
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 4641
    if-eqz p1, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4642
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 4645
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aj(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;Z)V

    .line 4646
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aj(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;I)V

    .line 3633
    :cond_2
    return-void
.end method
