.class final Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;
.super Ljava/lang/Object;
.source "MineGroupConversationActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;
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

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;Lcom/alibaba/doraemon/statistics/Statistics;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->c:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->b:J

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
    .line 142
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "group_conversation"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->removeOffLineDurationStatistics(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 97
    check-cast p1, Ljava/util/List;

    .line 1104
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;)V

    .line 1137
    new-instance v2, Ldvl;

    invoke-direct {v2}, Ldvl;-><init>()V

    .line 2051
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 2052
    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 2053
    new-instance v3, Ldvl$1;

    invoke-direct {v3, v2, v1, p1}, Ldvl$1;-><init>(Ldvl;Ldvl$a;Ljava/util/List;)V

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method
