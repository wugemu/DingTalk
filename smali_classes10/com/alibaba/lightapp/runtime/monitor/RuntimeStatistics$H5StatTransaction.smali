.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;
.super Ljava/lang/Object;
.source "RuntimeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "H5StatTransaction"
.end annotation


# instance fields
.field private page:Ljava/lang/String;

.field private sumValue:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->page:Ljava/lang/String;

    .line 924
    return-void
.end method


# virtual methods
.method public declared-synchronized commit(Ljava/lang/String;D)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 933
    monitor-enter p0

    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-lez v4, :cond_1

    .line 934
    :try_start_0
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->sumValue:D

    add-double/2addr v4, p2

    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->sumValue:D

    .line 935
    const-string/jumbo v4, "STATISTICS"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 936
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/UrlUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 937
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v3, "unknown"

    .line 939
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 940
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "url"

    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 941
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 942
    const-string/jumbo v4, "page"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->page:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 943
    const-string/jumbo v4, "isPage"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 944
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 945
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "loadTraffic"

    invoke-virtual {v1, v4, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 948
    const-string/jumbo v4, "H5"

    const-string/jumbo v5, "Traffic"

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 933
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized end()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 954
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->sumValue:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 955
    const-string/jumbo v4, "STATISTICS"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 957
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->page:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/UrlUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 958
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v3, "unknown"

    .line 960
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 961
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "url"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->page:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 962
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 963
    const-string/jumbo v4, "page"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->page:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 964
    const-string/jumbo v4, "isPage"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 965
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 966
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "loadTraffic"

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->sumValue:D

    invoke-virtual {v1, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 968
    const-string/jumbo v4, "H5"

    const-string/jumbo v5, "Traffic"

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 954
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
