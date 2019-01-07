.class final Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;
.super Ljava/lang/Object;
.source "MineGroupConversationActivity.java"

# interfaces
.implements Ldvl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "group_conversation"

    const-string/jumbo v2, "list_conversations"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "group_conversation"

    const-string/jumbo v2, "cast_to_display"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldvn;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ldvn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "creates":Ljava/util/List;, "Ljava/util/List<Ldvn;>;"
    .local p2, "joins":Ljava/util/List;, "Ljava/util/List<Ldvn;>;"
    const/4 v3, 0x1

    .line 107
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v5, "group_conversation"

    const-string/jumbo v6, "cast_to_display"

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v5, "group_conversation"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v5, "DD"

    const-string/jumbo v6, "group_conversation"

    const-string/jumbo v7, "totalTime"

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-wide/16 v0, 0x0

    .line 112
    .local v0, "delayMills":J
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v2, v3

    .line 113
    .local v2, "isShowJoin":Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->c:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->getCurrentItem()I

    move-result v4

    if-eq v4, v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->b:J

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 115
    const-wide/16 v0, 0x64

    .line 117
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {v3, v4, v0, v1}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    return-void

    .line 112
    .end local v2    # "isShowJoin":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
