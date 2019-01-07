.class public Lmtopsdk/mtop/MtopProxy;
.super Lmtopsdk/mtop/MtopProxyBase;
.source "MtopProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopProxy"


# instance fields
.field private paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

.field private transformer:Lmtopsdk/mtop/transform/MtopTransform;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 1
    .param p1, "mtopRequest"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v0, v0}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1
    .param p1, "mtopRequest"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "callback"    # Lmtopsdk/mtop/common/MtopListener;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v0, p2}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1
    .param p1, "mtopRequest"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "property"    # Lmtopsdk/mtop/common/MtopNetworkProp;
    .param p3, "context"    # Ljava/lang/Object;
    .param p4, "callback"    # Lmtopsdk/mtop/common/MtopListener;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lmtopsdk/mtop/MtopProxyBase;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 46
    new-instance v0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;

    invoke-direct {v0}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    .line 51
    new-instance v0, Lmtopsdk/mtop/transform/MtopTransformImpl;

    invoke-direct {v0}, Lmtopsdk/mtop/transform/MtopTransformImpl;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/transform/MtopTransform;

    .line 83
    return-void
.end method

.method private initCommonConfig()V
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lmtopsdk/mtop/MtopProxy;->checkInit()V

    .line 234
    invoke-direct {p0}, Lmtopsdk/mtop/MtopProxy;->onPrepareStat()V

    .line 236
    invoke-direct {p0}, Lmtopsdk/mtop/MtopProxy;->initUserUnitType()V

    .line 238
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalSpdySslSwitchOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    sget-object v1, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setProtocol(Lmtopsdk/mtop/domain/ProtocolEnum;)V

    .line 241
    :cond_0
    return-void
.end method

.method private initUserUnitType()V
    .locals 8

    .prologue
    .line 206
    iget-object v6, p0, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v3, v6, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    .line 207
    .local v3, "userId":Ljava/lang/String;
    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    const-string/jumbo v6, "uid"

    invoke-static {v6}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    :cond_0
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v6

    invoke-virtual {v6}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalUtdid()Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "utdid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 213
    .local v2, "unitPrefix":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Lka;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 219
    :goto_0
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    new-instance v4, Lmtopsdk/mtop/unit/UserUnit;

    sget-object v6, Lmtopsdk/mtop/unit/UserUnit$UnitType;->CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    const-string/jumbo v7, ""

    invoke-direct {v4, v3, v6, v7}, Lmtopsdk/mtop/unit/UserUnit;-><init>(Ljava/lang/String;Lmtopsdk/mtop/unit/UserUnit$UnitType;Ljava/lang/String;)V

    .line 224
    .local v4, "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    :goto_1
    iget-object v6, p0, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object v4, v6, Lmtopsdk/mtop/common/MtopNetworkProp;->userUnit:Lmtopsdk/mtop/unit/UserUnit;

    .line 225
    return-void

    .line 214
    .end local v4    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v6}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "seqNo":Ljava/lang/String;
    :goto_2
    const-string/jumbo v6, "mtopsdk.MtopProxy"

    const-string/jumbo v7, "get unit prefix error."

    invoke-static {v6, v1, v7, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    .end local v1    # "seqNo":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v4, Lmtopsdk/mtop/unit/UserUnit;

    sget-object v6, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-direct {v4, v3, v6, v2}, Lmtopsdk/mtop/unit/UserUnit;-><init>(Ljava/lang/String;Lmtopsdk/mtop/unit/UserUnit$UnitType;Ljava/lang/String;)V

    .restart local v4    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    goto :goto_1
.end method

.method private onPrepareStat()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 180
    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v2, :cond_0

    .line 181
    new-instance v2, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v2}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v2, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 182
    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v2}, Lmtopsdk/mtop/util/MtopStatistics;->onStart()V

    .line 183
    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v3, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    .line 189
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 190
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalUtdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v3, "0000"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iget v3, v3, Lmtopsdk/mtop/util/MtopStatistics;->intSeqNo:I

    rem-int/lit16 v3, v3, 0x2710

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalProcessId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->clientTraceId:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v3, p0, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v3, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->clientTraceId:Ljava/lang/String;

    iput-object v3, v2, Lmtopsdk/mtop/util/MtopStatistics;->clientTraceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "mtopsdk.MtopProxy"

    iget-object v3, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v3}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "generate client-trace-id failed."

    invoke-static {v2, v3, v4, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public asyncApiCall()Lmtopsdk/mtop/common/ApiID;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;
    .locals 9
    .param p1, "handler"    # Landroid/os/Handler;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 149
    invoke-direct {p0}, Lmtopsdk/mtop/MtopProxy;->initCommonConfig()V

    .line 152
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->validateBusinessInit()Lmtopsdk/mtop/util/Result;

    move-result-object v3

    .line 153
    .local v3, "result":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v4, :cond_0

    .line 155
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v2, "response":Lmtopsdk/mtop/domain/MtopResponse;
    :goto_0
    invoke-virtual {p0, v2}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 160
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v0, v8, p0}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    .line 173
    .end local v2    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :goto_1
    return-object v0

    .line 157
    :cond_0
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    goto :goto_0

    .line 164
    .end local v2    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_1
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    invoke-interface {v4, p0}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;->buildParams(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;

    move-result-object v1

    .line 165
    .local v1, "paramReaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 166
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ANDROID_SYS_GENERATE_MTOP_SIGN_ERROR"

    const-string/jumbo v7, "\u751f\u6210Mtop\u7b7e\u540dsign\u5931\u8d25"

    invoke-direct {v2, v4, v5, v6, v7}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .restart local v2    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {p0, v2}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 168
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v0, v8, p0}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    goto :goto_1

    .line 171
    .end local v2    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_2
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/transform/MtopTransform;

    invoke-interface {v4, p0, v1, p1}, Lmtopsdk/mtop/transform/MtopTransform;->asyncTransform(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    .line 173
    .local v0, "apiId":Lmtopsdk/mtop/common/ApiID;
    goto :goto_1
.end method

.method public getParamBuilder()Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    return-object v0
.end method

.method public getTransformer()Lmtopsdk/mtop/transform/MtopTransform;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/transform/MtopTransform;

    return-object v0
.end method

.method public syncApiCall()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    invoke-direct {p0}, Lmtopsdk/mtop/MtopProxy;->initCommonConfig()V

    .line 105
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->validateBusinessInit()Lmtopsdk/mtop/util/Result;

    move-result-object v3

    .line 106
    .local v3, "result":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v4, :cond_0

    .line 108
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v5, v6, v7}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v1, "response":Lmtopsdk/mtop/domain/MtopResponse;
    :goto_0
    invoke-virtual {p0, v1}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    move-object v2, v1

    .line 129
    .end local v1    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    .local v2, "response":Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 110
    .end local v2    # "response":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    goto :goto_0

    .line 117
    .end local v1    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_1
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    invoke-interface {v4, p0}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;->buildParams(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;

    move-result-object v0

    .line 118
    .local v0, "paramReaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 119
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ANDROID_SYS_GENERATE_MTOP_SIGN_ERROR"

    const-string/jumbo v7, "\u751f\u6210Mtop\u7b7e\u540dsign\u5931\u8d25"

    invoke-direct {v1, v4, v5, v6, v7}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    move-object v2, v1

    .line 120
    .restart local v2    # "response":Ljava/lang/Object;
    goto :goto_1

    .line 124
    .end local v1    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    .end local v2    # "response":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/transform/MtopTransform;

    invoke-interface {v4, p0, v0}, Lmtopsdk/mtop/transform/MtopTransform;->syncTransform(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    .line 125
    .restart local v1    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    .line 126
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "x-s-traceid"

    invoke-static {v5, v6}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    .line 127
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v4}, Lmtopsdk/mtop/util/MtopStatistics;->onStatSum()V

    .line 128
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1, v4}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    move-object v2, v1

    .line 129
    .restart local v2    # "response":Ljava/lang/Object;
    goto :goto_1
.end method
