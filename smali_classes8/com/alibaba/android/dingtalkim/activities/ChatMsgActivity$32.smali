.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 7590
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->c:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7593
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->a:Z

    if-eqz v1, :cond_0

    .line 7594
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 7595
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 7598
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    if-eqz v1, :cond_1

    .line 7599
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7600
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 7617
    :cond_1
    :goto_0
    return-void

    .line 7602
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->c:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 7604
    const-string/jumbo v1, "STATISTICS"

    .line 7605
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 7607
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "sendText"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 7609
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "sendText"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7613
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sending(\u53d1\u9001\u6587\u5b57-\u6587\u5b57\u6210\u529f) start :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
