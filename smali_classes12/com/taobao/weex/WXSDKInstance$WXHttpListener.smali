.class Lcom/taobao/weex/WXSDKInstance$WXHttpListener;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WXHttpListener"
.end annotation


# instance fields
.field private flag:Lcom/taobao/weex/common/WXRenderStrategy;

.field private instance:Lcom/taobao/weex/WXSDKInstance;

.field private jsonInitData:Ljava/lang/String;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pageName:Ljava/lang/String;

.field private startRequestTime:J

.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field private traceId:I


# direct methods
.method private constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;J)V
    .locals 4
    .param p1, "this$0"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "pageName"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .param p6, "startRequestTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1736
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1737
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->pageName:Ljava/lang/String;

    .line 1738
    iput-object p3, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->options:Ljava/util/Map;

    .line 1739
    iput-object p4, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->jsonInitData:Ljava/lang/String;

    .line 1740
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->flag:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 1741
    iput-wide p6, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->startRequestTime:J

    .line 1742
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->traceId:I

    .line 1744
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1745
    const-string/jumbo v1, "downloadBundleJS"

    invoke-static {p1}, Lcom/taobao/weex/WXSDKInstance;->access$800(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v0

    .line 1746
    .local v0, "event":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    invoke-static {p1}, Lcom/taobao/weex/WXSDKInstance;->access$800(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    .line 1747
    const-string/jumbo v1, "Network"

    iput-object v1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    .line 1748
    const-string/jumbo v1, "B"

    iput-object v1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 1749
    iget v1, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->traceId:I

    iput v1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 1750
    invoke-virtual {v0}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    .line 1752
    .end local v0    # "event":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;JLcom/taobao/weex/WXSDKInstance$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .param p6, "x5"    # J
    .param p8, "x6"    # Lcom/taobao/weex/WXSDKInstance$1;

    .prologue
    .line 1726
    invoke-direct/range {p0 .. p7}, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;J)V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .locals 1
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1768
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    .line 1769
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onHeadersReceived()V

    .line 1771
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onHttpStart()V

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1776
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1778
    :cond_1
    return-void
.end method

.method public onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    .locals 22
    .param p1, "response"    # Lcom/taobao/weex/common/WXResponse;

    .prologue
    .line 1792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    .line 1793
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/weex/IWXStatisticsListener;->onHttpFinish()V

    .line 1797
    :cond_0
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1798
    const-string/jumbo v2, "downloadBundleJS"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v3}, Lcom/taobao/weex/WXSDKInstance;->access$800(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v16

    .line 1799
    .local v16, "event":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->traceId:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 1800
    const-string/jumbo v2, "Network"

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    .line 1801
    const-string/jumbo v2, "E"

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 1802
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->extParams:Ljava/util/Map;

    .line 1803
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v2, :cond_1

    .line 1804
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->extParams:Ljava/util/Map;

    const-string/jumbo v3, "BundleSize"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    .line 1809
    .end local v16    # "event":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->startRequestTime:J

    sub-long/2addr v4, v10

    iput-wide v4, v2, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    .line 1810
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 1811
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "actualNetworkTime"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1812
    .local v13, "actualNetworkTime":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    instance-of v2, v13, Ljava/lang/Long;

    if-eqz v2, :cond_6

    check-cast v13, Ljava/lang/Long;

    .end local v13    # "actualNetworkTime":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    iput-wide v2, v4, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    .line 1813
    const-string/jumbo v2, "actualNetworkTime"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v3}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v3

    iget-wide v4, v3, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    invoke-static {v2, v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1815
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "pureNetworkTime"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 1816
    .local v18, "pureNetworkTime":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_7

    check-cast v18, Ljava/lang/Long;

    .end local v18    # "pureNetworkTime":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    iput-wide v2, v4, Lcom/taobao/weex/common/WXPerformance;->pureNetworkTime:J

    .line 1817
    const-string/jumbo v2, "pureNetworkTime"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v3}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v3

    iget-wide v4, v3, Lcom/taobao/weex/common/WXPerformance;->pureNetworkTime:J

    invoke-static {v2, v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1819
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "connectionType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1820
    .local v15, "connectionType":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v2

    instance-of v3, v15, Ljava/lang/String;

    if-eqz v3, :cond_8

    check-cast v15, Ljava/lang/String;

    .end local v15    # "connectionType":Ljava/lang/Object;
    :goto_2
    iput-object v15, v2, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    .line 1822
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "packageSpendTime"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1823
    .local v17, "packageSpendTime":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    move-object/from16 v0, v17

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_9

    check-cast v17, Ljava/lang/Long;

    .end local v17    # "packageSpendTime":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_3
    iput-wide v2, v4, Lcom/taobao/weex/common/WXPerformance;->packageSpendTime:J

    .line 1825
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "syncTaskTime"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 1826
    .local v20, "syncTaskTime":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    move-object/from16 v0, v20

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_a

    check-cast v20, Ljava/lang/Long;

    .end local v20    # "syncTaskTime":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_4
    iput-wide v2, v4, Lcom/taobao/weex/common/WXPerformance;->syncTaskTime:J

    .line 1828
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "requestType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1829
    .local v19, "requestType":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v2

    move-object/from16 v0, v19

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_b

    check-cast v19, Ljava/lang/String;

    .end local v19    # "requestType":Ljava/lang/Object;
    :goto_5
    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    .line 1831
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Dimension;->cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1832
    .local v14, "cacheType":Ljava/lang/Object;
    instance-of v2, v14, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v2

    check-cast v14, Ljava/lang/String;

    .end local v14    # "cacheType":Ljava/lang/Object;
    iput-object v14, v2, Lcom/taobao/weex/common/WXPerformance;->cacheType:Ljava/lang/String;

    .line 1836
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "zCacheInfo"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1837
    .local v21, "zCacheInfo":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v2

    move-object/from16 v0, v21

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_c

    check-cast v21, Ljava/lang/String;

    .end local v21    # "zCacheInfo":Ljava/lang/Object;
    :goto_6
    move-object/from16 v0, v21

    iput-object v0, v2, Lcom/taobao/weex/common/WXPerformance;->zCacheInfo:Ljava/lang/String;

    .line 1839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v3}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/taobao/weex/WXSDKInstance;->access$900(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$500(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1840
    new-instance v6, Lcom/taobao/weex/common/WXPerformance;

    invoke-direct {v6}, Lcom/taobao/weex/common/WXPerformance;-><init>()V

    .line 1841
    .local v6, "performance":Lcom/taobao/weex/common/WXPerformance;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$1000(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1843
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$1000(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    :cond_4
    :goto_7
    const-string/jumbo v2, "200"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1849
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSBUNDLE_DOWNLOAD:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    .line 1850
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/taobao/weex/common/WXPerformance;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 1851
    const-string/jumbo v2, "|"

    invoke-virtual {v6, v2}, Lcom/taobao/weex/common/WXPerformance;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 1852
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/taobao/weex/common/WXPerformance;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 1862
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$500(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v2}, Lcom/taobao/weex/WXSDKInstance;->access$500(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "jsDownload"

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 1867
    .end local v6    # "performance":Lcom/taobao/weex/common/WXPerformance;
    :cond_5
    const-string/jumbo v2, "networkTime"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v3}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v3

    iget-wide v4, v3, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    invoke-static {v2, v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1868
    if-eqz p1, :cond_10

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v2, :cond_10

    const-string/jumbo v2, "200"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1869
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    .line 1870
    .local v9, "template":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->pageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->options:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->jsonInitData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->flag:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual/range {v7 .. v12}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 1895
    .end local v9    # "template":Ljava/lang/String;
    :goto_9
    return-void

    .line 1812
    .restart local v13    # "actualNetworkTime":Ljava/lang/Object;
    :cond_6
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .line 1816
    .end local v13    # "actualNetworkTime":Ljava/lang/Object;
    .restart local v18    # "pureNetworkTime":Ljava/lang/Object;
    :cond_7
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 1820
    .end local v18    # "pureNetworkTime":Ljava/lang/Object;
    .restart local v15    # "connectionType":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v15, ""

    goto/16 :goto_2

    .line 1823
    .end local v15    # "connectionType":Ljava/lang/Object;
    .restart local v17    # "packageSpendTime":Ljava/lang/Object;
    :cond_9
    const-wide/16 v2, 0x0

    goto/16 :goto_3

    .line 1826
    .end local v17    # "packageSpendTime":Ljava/lang/Object;
    .restart local v20    # "syncTaskTime":Ljava/lang/Object;
    :cond_a
    const-wide/16 v2, 0x0

    goto/16 :goto_4

    .line 1829
    .end local v20    # "syncTaskTime":Ljava/lang/Object;
    .restart local v19    # "requestType":Ljava/lang/Object;
    :cond_b
    const-string/jumbo v19, "none"

    goto/16 :goto_5

    .line 1837
    .end local v19    # "requestType":Ljava/lang/Object;
    .restart local v21    # "zCacheInfo":Ljava/lang/Object;
    :cond_c
    const-string/jumbo v21, ""

    goto/16 :goto_6

    .line 1845
    .end local v21    # "zCacheInfo":Ljava/lang/Object;
    .restart local v6    # "performance":Lcom/taobao/weex/common/WXPerformance;
    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->pageName:Ljava/lang/String;

    iput-object v2, v6, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    goto/16 :goto_7

    .line 1854
    :cond_d
    const-string/jumbo v2, "200"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v2, :cond_e

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    array-length v2, v2

    if-gtz v2, :cond_f

    .line 1855
    :cond_e
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSBUNDLE_DOWNLOAD:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    .line 1856
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/taobao/weex/common/WXPerformance;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 1857
    const-string/jumbo v2, "|template is null!"

    invoke-virtual {v6, v2}, Lcom/taobao/weex/common/WXPerformance;->appendErrMsg(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1859
    :cond_f
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    goto/16 :goto_8

    .line 1873
    .end local v6    # "performance":Lcom/taobao/weex/common/WXPerformance;
    :cond_10
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1875
    const-string/jumbo v2, "user intercept: WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR"

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|response.errorMsg=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|instance bundleUrl = \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    .line 1878
    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|instance requestUrl = \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    .line 1879
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1876
    invoke-virtual {v2, v3, v4}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1883
    :cond_11
    if-eqz p1, :cond_12

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v2, :cond_12

    const-string/jumbo v2, "-206"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1884
    const-string/jumbo v2, "user intercept: WX_DEGRAD_ERR_NETWORK_CHECK_CONTENT_LENGTH_FAILED"

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_NETWORK_CHECK_CONTENT_LENGTH_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1886
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_NETWORK_CHECK_CONTENT_LENGTH_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1887
    invoke-virtual {v5}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|response.errorMsg=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1885
    invoke-virtual {v2, v3, v4}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1892
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->this$0:Lcom/taobao/weex/WXSDKInstance;

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_NETWORK_BUNDLE_DOWNLOAD_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method public onHttpResponseProgress(I)V
    .locals 0
    .param p1, "loadedLength"    # I

    .prologue
    .line 1788
    return-void
.end method

.method public onHttpStart()V
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    .line 1761
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onHttpStart()V

    .line 1764
    :cond_0
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .locals 0
    .param p1, "uploadProgress"    # I

    .prologue
    .line 1783
    return-void
.end method

.method public setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    .line 1756
    return-void
.end method
