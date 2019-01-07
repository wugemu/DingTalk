.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;
.super Ljava/lang/Object;
.source "RuntimeWeexStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeexStatTransaction"
.end annotation


# instance fields
.field private mAgentId:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mMiniAppId:Ljava/lang/String;

.field private mStartTime:J

.field private mUrl:Ljava/lang/String;

.field private mViewCreatedTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mStartTime:J

    .line 123
    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mViewCreatedTime:J

    .line 126
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mUrl:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public exception()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mStartTime:J

    sub-long v2, v0, v4

    .line 162
    .local v2, "exceptionTime":J
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 164
    .local v8, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 165
    .local v6, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 166
    const-string/jumbo v0, "appId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 167
    const-string/jumbo v0, "agentId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mAgentId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 169
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v7

    .line 170
    .local v7, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v0, "viewCreateTime"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mViewCreatedTime:J

    long-to-double v4, v4

    invoke-virtual {v7, v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 171
    const-string/jumbo v0, "exceptionTime"

    long-to-double v4, v2

    invoke-virtual {v7, v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 172
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mUrl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mViewCreatedTime:J

    invoke-virtual/range {v0 .. v5}, Lgvi;->weexErrorWarn(Ljava/lang/String;JJ)V

    .line 173
    const-string/jumbo v0, "WEEX"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 174
    return-void
.end method

.method public initAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "agentId"    # Ljava/lang/String;
    .param p3, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mAppId:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mAgentId:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mMiniAppId:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public renderSuccess()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mStartTime:J

    sub-long v2, v6, v8

    .line 145
    .local v2, "renderTime":J
    const-string/jumbo v5, "STATISTICS"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 147
    .local v4, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 148
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v5, "url"

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 149
    const-string/jumbo v5, "appId"

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 150
    const-string/jumbo v5, "agentId"

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mAgentId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 151
    const-string/jumbo v5, "miniAppId"

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mMiniAppId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 153
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 154
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v5, "viewCreateTime"

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mViewCreatedTime:J

    long-to-double v6, v6

    invoke-virtual {v1, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 155
    const-string/jumbo v5, "renderSuccessTime"

    long-to-double v6, v2

    invoke-virtual {v1, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 157
    const-string/jumbo v5, "WEEX"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 158
    return-void
.end method

.method public startRender()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mStartTime:J

    .line 137
    return-void
.end method

.method public viewCreated()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->mViewCreatedTime:J

    .line 141
    return-void
.end method
