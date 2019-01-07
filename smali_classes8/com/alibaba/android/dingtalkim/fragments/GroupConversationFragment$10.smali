.class final Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;
.super Ljava/lang/Object;
.source "GroupConversationFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->c()V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/statistics/Statistics;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Lcom/alibaba/doraemon/statistics/Statistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->a:Lcom/alibaba/doraemon/statistics/Statistics;

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
    .line 681
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V

    .line 683
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "group_conversation"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->removeOffLineDurationStatistics(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 565
    check-cast p1, Ljava/util/List;

    .line 1573
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1574
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 1575
    new-instance v1, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method
