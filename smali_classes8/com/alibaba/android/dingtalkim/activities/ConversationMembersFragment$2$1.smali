.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2$1;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->a()V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;

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
    .line 824
    const-string/jumbo v0, "STATISTICS"

    .line 825
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x332d

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 826
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 810
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1813
    if-eqz p1, :cond_1

    .line 1814
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1815
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v1

    .line 1817
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->a(Z)V

    .line 810
    :cond_1
    return-void

    .line 1817
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
