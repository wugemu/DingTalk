.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;
.super Ljava/lang/Object;
.source "RuntimeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniAppPrepareData"
.end annotation


# instance fields
.field public checkDBVersionTime:J

.field public errorCode:J

.field public miniAppId:Ljava/lang/String;

.field public offlineMode:J

.field public pageStatus:J

.field public procTimeAll:J

.field public procTimeDownload:J

.field public procTimeReq:J

.field public procTimeUnzip:J

.field public reqMode:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toExtra()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2347
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v2, "miniAppId"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->miniAppId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    const-string/jumbo v2, "procTimeAll"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeAll:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    const-string/jumbo v2, "procTimeReq"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeReq:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    const-string/jumbo v2, "procTimeDownload"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeDownload:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    const-string/jumbo v2, "procTimeUnzip"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeUnzip:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    const-string/jumbo v2, "reqMode"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->reqMode:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2353
    const-string/jumbo v2, "offlineMode"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->offlineMode:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2354
    const-string/jumbo v2, "errorCode"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->errorCode:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    const-string/jumbo v2, "pageStatus"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->pageStatus:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2356
    const-string/jumbo v2, "checkDBVersionTime"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->checkDBVersionTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2362
    :goto_0
    return-object v0

    .line 2358
    :catch_0
    move-exception v1

    .line 2359
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
