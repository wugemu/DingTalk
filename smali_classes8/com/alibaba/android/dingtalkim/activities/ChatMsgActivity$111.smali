.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/content/Intent;)V
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
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 3630
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;->a:J

    iput-wide p4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3646
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 3647
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "chat_load"

    const-string/jumbo v2, "get_conversation"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3630
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3630
    move-object v1, p1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 4633
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 4634
    const-string/jumbo v2, "chat_load"

    const-string/jumbo v3, "get_conversation"

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 4637
    if-eqz v1, :cond_0

    .line 4638
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;->a:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;->b:J

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Conversation;JJ)V

    :goto_0
    return-void

    .line 4640
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;->a:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;->b:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JJ)V

    goto :goto_0
.end method
