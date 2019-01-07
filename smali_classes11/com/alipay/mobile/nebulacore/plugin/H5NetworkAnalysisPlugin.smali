.class public Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;
.super Lipd;
.source "H5NetworkAnalysisPlugin.java"


# static fields
.field private static final NETWORK_ANALYSIS:Ljava/lang/String; = "ping"

.field public static final TAG:Ljava/lang/String; = "H5NetworkAnalysisPlugin"

.field private static final sCachedPingResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->sCachedPingResults:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "x3"    # Liny;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->deliverPingResult(Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->sCachedPingResults:Ljava/util/HashMap;

    return-object v0
.end method

.method private deliverPingResult(Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 12
    .param p1, "result"    # Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    .param p2, "resultJson"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 85
    if-eqz p1, :cond_3

    .line 86
    const-string/jumbo v8, "avgConsumedTimeMs"

    iget v9, p1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->avgConsumedTimeMs:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v3, 0x0

    .line 90
    .local v3, "loss":F
    :try_start_0
    iget-object v8, p1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->loss:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->loss:Ljava/lang/String;

    const-string/jumbo v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 91
    iget-object v8, p1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->loss:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->loss:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "tmp":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float v3, v8, v9

    .line 98
    .end local v6    # "tmp":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v8, "##0.00"

    invoke-direct {v1, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "decimalFormat":Ljava/text/DecimalFormat;
    const-string/jumbo v8, "loss"

    float-to-double v10, v3

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v8, p1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->timePerRound:[Ljava/lang/Float;

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->timePerRound:[Ljava/lang/Float;

    array-length v8, v8

    if-lez v8, :cond_2

    .line 101
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 102
    .local v5, "timePerRound":Lcom/alibaba/fastjson/JSONArray;
    iget-object v8, p1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->timePerRound:[Ljava/lang/Float;

    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v4, v8, v7

    .line 103
    .local v4, "time":Ljava/lang/Float;
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 94
    .end local v1    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v4    # "time":Ljava/lang/Float;
    .end local v5    # "timePerRound":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "H5NetworkAnalysisPlugin"

    const-string/jumbo v9, "exception detail"

    invoke-static {v8, v9, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "decimalFormat":Ljava/text/DecimalFormat;
    .restart local v5    # "timePerRound":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v7, "timePerRound"

    invoke-virtual {p2, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v7, "networkType"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v7, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v3    # "loss":F
    .end local v5    # "timePerRound":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    :goto_2
    invoke-interface {p3, p2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 114
    return-void

    .line 111
    :cond_3
    const-string/jumbo v7, "error"

    sget-object v8, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 43
    .line 1065
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 44
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "ping"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1121
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 46
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v7, :cond_3

    .line 47
    const-string/jumbo v0, "host"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "host":Ljava/lang/String;
    const-string/jumbo v0, "numOfRound"

    const/4 v1, 0x3

    invoke-static {v7, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v3

    .line 49
    .local v3, "numOfRound":I
    const-string/jumbo v0, "useCached"

    invoke-static {v7, v0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    .line 50
    .local v8, "useCached":Z
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 51
    .local v4, "resultJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gtz v3, :cond_1

    .line 52
    :cond_0
    const-string/jumbo v0, "H5NetworkAnalysisPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "illegal arguments(host:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " numOfRound:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    move v0, v9

    .line 80
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "numOfRound":I
    .end local v4    # "resultJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "useCached":Z
    :goto_0
    return v0

    .line 57
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "numOfRound":I
    .restart local v4    # "resultJson":Lcom/alibaba/fastjson/JSONObject;
    .restart local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v8    # "useCached":Z
    :cond_1
    if-eqz v8, :cond_2

    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->sCachedPingResults:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->sCachedPingResults:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p2, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    move v0, v9

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    const-string/jumbo v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v10

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;Liny;)V

    invoke-virtual {v10, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "numOfRound":I
    .end local v4    # "resultJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "useCached":Z
    :cond_3
    move v0, v9

    .line 78
    goto :goto_0

    .line 80
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 38
    const-string/jumbo v0, "ping"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method
