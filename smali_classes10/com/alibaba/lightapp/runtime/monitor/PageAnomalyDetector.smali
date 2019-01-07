.class public Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;
.super Ljava/lang/Object;
.source "PageAnomalyDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$NetWorkStatus;,
        Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$JsError;
    }
.end annotation


# static fields
.field public static final AUTH_FAIL:I = 0x0

.field public static final AUTH_SUCCESS:I = 0x1

.field public static final CONFIG_FAIL:I = 0x0

.field public static final CONFIG_SUCCESS:I = 0x1

.field private static volatile mInstance:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;


# instance fields
.field private mAuthStatus:I

.field private mConfigStatus:I

.field private mCurrentUrl:Ljava/lang/String;

.field private mIsCustomized:Z

.field private mJsErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$JsError;",
            ">;"
        }
    .end annotation
.end field

.field private mNetWorkStatus:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$NetWorkStatus;

.field private mPerformanceMemory:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;

.field private mPerformanceResourceTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceTiming:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;

.field private mReceiverErrorCode:I

.field private mReceiverErrorDescription:Ljava/lang/String;

.field private mRenderTime:J

.field private mSSLErrorUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mConfigStatus:I

    .line 34
    iput v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mAuthStatus:I

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mRenderTime:J

    .line 40
    iput v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mReceiverErrorCode:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mIsCustomized:Z

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addDetectorParams(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "configStatus"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getConfigStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v0, "authConfig"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getAuthStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v0, "renderTime"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getRenderTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v0, "receiverErrorCode"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getReceiverErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v0, "receiverErrorDescription"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getReceiverErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v0, "sslError"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getSSLErrorUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v1, "resource"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getPerformanceResourceTimings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v1, "isCustomized"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->isCustomized()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void

    .line 176
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getPerformanceResourceTimings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method

.method public getAuthStatus()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mAuthStatus:I

    return v0
.end method

.method public getConfigStatus()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mConfigStatus:I

    return v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJsError()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$JsError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mJsErrors:Ljava/util/List;

    return-object v0
.end method

.method public getNetWorkStatus()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$NetWorkStatus;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mNetWorkStatus:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$NetWorkStatus;

    return-object v0
.end method

.method public getPerformanceMemory()Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mPerformanceMemory:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;

    return-object v0
.end method

.method public getPerformanceResourceTimings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mPerformanceResourceTimings:Ljava/util/List;

    return-object v0
.end method

.method public getPerformanceTiming()Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mPerformanceTiming:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;

    return-object v0
.end method

.method public getReceiverErrorCode()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mReceiverErrorCode:I

    return v0
.end method

.method public getReceiverErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mReceiverErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mRenderTime:J

    return-wide v0
.end method

.method public getSSLErrorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mSSLErrorUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomized()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mIsCustomized:Z

    return v0
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 183
    iput v3, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mConfigStatus:I

    .line 184
    iput v3, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mAuthStatus:I

    .line 185
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mRenderTime:J

    .line 186
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mCurrentUrl:Ljava/lang/String;

    .line 187
    iput v3, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mReceiverErrorCode:I

    .line 188
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mReceiverErrorDescription:Ljava/lang/String;

    .line 189
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mSSLErrorUrl:Ljava/lang/String;

    .line 190
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mPerformanceTiming:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;

    .line 191
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mPerformanceMemory:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;

    .line 192
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mPerformanceResourceTimings:Ljava/util/List;

    .line 193
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mJsErrors:Ljava/util/List;

    .line 194
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mNetWorkStatus:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$NetWorkStatus;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mIsCustomized:Z

    .line 197
    sput-object v2, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    .line 198
    return-void
.end method

.method public setAuthStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mAuthStatus:I

    .line 122
    return-void
.end method

.method public setConfigStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mConfigStatus:I

    .line 118
    return-void
.end method

.method public setCurrentUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentUrl"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mCurrentUrl:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setCustomized(Z)V
    .locals 0
    .param p1, "customized"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mIsCustomized:Z

    .line 65
    return-void
.end method

.method public setJSError(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$JsError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "jsErrors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$JsError;>;"
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mJsErrors:Ljava/util/List;

    .line 158
    return-void
.end method

.method public setNetWorkStatus(Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$NetWorkStatus;)V
    .locals 0
    .param p1, "netWorkStatus"    # Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$NetWorkStatus;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mNetWorkStatus:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$NetWorkStatus;

    .line 162
    return-void
.end method

.method public setPerformanceMemory(Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;)V
    .locals 0
    .param p1, "performanceMemory"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mPerformanceMemory:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;

    .line 150
    return-void
.end method

.method public setPerformanceResourceTiming(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "performanceResourceTimings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;>;"
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mPerformanceResourceTimings:Ljava/util/List;

    .line 154
    return-void
.end method

.method public setPerformanceTiming(Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;)V
    .locals 0
    .param p1, "performanceTiming"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mPerformanceTiming:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;

    .line 146
    return-void
.end method

.method public setReceiverErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mReceiverErrorCode:I

    .line 134
    return-void
.end method

.method public setReceiverErrorDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mReceiverErrorDescription:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setRenderTime(J)V
    .locals 1
    .param p1, "renderTime"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mRenderTime:J

    .line 126
    return-void
.end method

.method public setSSLErrorUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorUrl"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->mSSLErrorUrl:Ljava/lang/String;

    .line 142
    return-void
.end method
