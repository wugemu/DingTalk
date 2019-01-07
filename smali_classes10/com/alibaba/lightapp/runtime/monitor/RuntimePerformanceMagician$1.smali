.class Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;
.super Ljava/lang/Object;
.source "RuntimePerformanceMagician.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->setPageFinishTime(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

.field final synthetic val$time:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$url:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 124
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$000(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    .line 125
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$100(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$000(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 126
    .local v2, "loadTime":J
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$url:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$time:J

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$200(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;Ljava/lang/String;J)V

    .line 127
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->clearPageStartTime(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$300(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPageRedirect(Ljava/lang/String;I)V

    .line 129
    const-string/jumbo v4, "Load"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$400(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)Z

    move-result v6

    invoke-static {v4, v5, v2, v3, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformance(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 131
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$500(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$url:Ljava/lang/String;

    .line 1122
    invoke-virtual {v4, v5}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v4

    .line 1124
    iget-object v5, v4, Lhfo$b;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Lhfo$b;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 134
    .local v0, "isMicroApp":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 135
    const-string/jumbo v4, "MicroAppHomePageLoad"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$400(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)Z

    move-result v6

    invoke-static {v4, v5, v2, v3, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformance(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$400(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    const-string/jumbo v4, "OrgCustomPageLoad"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$400(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)Z

    move-result v6

    invoke-static {v4, v5, v2, v3, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformance(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 143
    .end local v0    # "isMicroApp":Z
    .end local v2    # "loadTime":J
    :cond_2
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$600(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 144
    const-string/jumbo v4, "PageLoadTime"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$100(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$600(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$400(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformance(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 145
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->clearRuntimeOnCreateTime(Ljava/lang/String;)V

    .line 148
    :cond_3
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v4, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$502(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;Z)Z

    .line 149
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-static {v4, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->access$402(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;Z)Z

    .line 150
    return-void

    .restart local v2    # "loadTime":J
    :cond_4
    move v0, v1

    .line 1124
    goto :goto_0
.end method
