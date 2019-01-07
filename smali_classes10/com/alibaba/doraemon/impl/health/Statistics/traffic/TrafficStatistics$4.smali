.class Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$4;
.super Ljava/lang/Object;
.source "TrafficStatistics.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/RequestStatisticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHitCacheFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "perfTag"    # Ljava/lang/String;

    .prologue
    .line 224
    return-void
.end method

.method public onHitCacheSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "perfTag"    # Ljava/lang/String;

    .prologue
    .line 218
    return-void
.end method

.method public onRequestEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "perfTag"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$200(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->removeRunnabletrigger(Ljava/lang/Runnable;)V

    .line 235
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$200(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Ljava/lang/Runnable;

    move-result-object v1

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->triggerAtFixedDelay(Ljava/lang/Runnable;I)V

    .line 236
    return-void
.end method

.method public onRequestFailed(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errCode"    # J
    .param p3, "duration"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "perfTag"    # Ljava/lang/String;
    .param p7, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 212
    return-void
.end method

.method public onRequestStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "perfTag"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 229
    return-void
.end method

.method public onRequestSuccess(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # J
    .param p3, "duration"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "perfTag"    # Ljava/lang/String;

    .prologue
    .line 208
    return-void
.end method

.method public onRequestTraffic(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "txDataLen"    # J
    .param p3, "rxDataLen"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "perfTag"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p5}, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "mimeType":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 188
    .local v0, "argBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {v0, p6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 191
    :cond_0
    invoke-static {p5}, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 193
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "arg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    const-string/jumbo v2, "DoraemonReq"

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$100(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Z

    move-result v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$000(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v4

    long-to-int v6, p1

    int-to-long v6, v6

    add-long/2addr v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 204
    return-void

    .line 195
    .end local v0    # "argBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v5    # "arg":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 196
    .restart local v0    # "argBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    invoke-virtual {v0, p6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 199
    :cond_2
    invoke-static {p5}, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 200
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "arg":Ljava/lang/String;
    goto :goto_0
.end method
