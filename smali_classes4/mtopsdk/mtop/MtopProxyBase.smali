.class public Lmtopsdk/mtop/MtopProxyBase;
.super Ljava/lang/Object;
.source "MtopProxyBase.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopProxyBase"

.field public static antiAttackHandler:Lmtopsdk/mtop/antiattack/AntiAttackHandler;

.field public static envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field private static volatile isInit:Z


# instance fields
.field public callback:Lmtopsdk/mtop/common/MtopListener;

.field public context:Ljava/lang/Object;

.field private customDomain:Ljava/lang/String;

.field private entrance:Lmtopsdk/mtop/domain/EntranceEnum;

.field private fullBaseUrl:Ljava/lang/String;

.field public mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

.field public property:Lmtopsdk/mtop/common/MtopNetworkProp;

.field public stat:Lmtopsdk/mtop/util/MtopStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 45
    new-instance v0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-direct {v0}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;-><init>()V

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->antiAttackHandler:Lmtopsdk/mtop/antiattack/AntiAttackHandler;

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/mtop/MtopProxyBase;->isInit:Z

    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 1
    .param p1, "mtopRequest"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0, v0, v0}, Lmtopsdk/mtop/MtopProxyBase;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1
    .param p1, "mtopRequest"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "property"    # Lmtopsdk/mtop/common/MtopNetworkProp;
    .param p3, "context"    # Ljava/lang/Object;
    .param p4, "callback"    # Lmtopsdk/mtop/common/MtopListener;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->GW:Lmtopsdk/mtop/domain/EntranceEnum;

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 70
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 126
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 127
    if-eqz p2, :cond_0

    .line 128
    iput-object p2, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 130
    :cond_0
    iput-object p3, p0, Lmtopsdk/mtop/MtopProxyBase;->context:Ljava/lang/Object;

    .line 131
    iput-object p4, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    .line 133
    return-void
.end method

.method protected static checkInit()V
    .locals 2

    .prologue
    .line 110
    sget-boolean v0, Lmtopsdk/mtop/MtopProxyBase;->isInit:Z

    if-nez v0, :cond_1

    .line 111
    const-class v1, Lmtopsdk/mtop/MtopProxyBase;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-boolean v0, Lmtopsdk/mtop/MtopProxyBase;->isInit:Z

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lmtopsdk/mtop/MtopProxyBase;->init()V

    .line 115
    :cond_0
    monitor-exit v1

    .line 117
    :cond_1
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static init()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v0

    .line 96
    .local v0, "env":Lmtopsdk/mtop/domain/EnvModeEnum;
    if-eqz v0, :cond_0

    .line 97
    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 99
    :cond_0
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->checkMtopSDKInit()V

    .line 100
    const/4 v1, 0x1

    sput-boolean v1, Lmtopsdk/mtop/MtopProxyBase;->isInit:Z

    .line 101
    return-void
.end method

.method public static isInit()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lmtopsdk/mtop/MtopProxyBase;->isInit:Z

    return v0
.end method


# virtual methods
.method public getCallback()Lmtopsdk/mtop/common/MtopListener;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    return-object v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public getEntrance()Lmtopsdk/mtop/domain/EntranceEnum;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    return-object v0
.end method

.method public getFullBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "unitPrefix"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    :try_start_0
    sget-object v1, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 175
    .local v1, "envMode":Lmtopsdk/mtop/domain/EnvModeEnum;
    iget-object v3, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object v1, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 176
    iget-object v3, p0, Lmtopsdk/mtop/MtopProxyBase;->customDomain:Ljava/lang/String;

    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 178
    .local v2, "url":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v3}, Lmtopsdk/mtop/common/MtopNetworkProp;->getProtocol()Lmtopsdk/mtop/domain/ProtocolEnum;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    iget-object v3, p0, Lmtopsdk/mtop/MtopProxyBase;->customDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v3, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/EntranceEnum;->getEntrance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    .end local v1    # "envMode":Lmtopsdk/mtop/domain/EnvModeEnum;
    .end local v2    # "url":Ljava/lang/StringBuilder;
    :goto_0
    return-object v3

    .line 185
    .restart local v1    # "envMode":Lmtopsdk/mtop/domain/EnvModeEnum;
    :cond_1
    iget-object v3, p0, Lmtopsdk/mtop/MtopProxyBase;->fullBaseUrl:Ljava/lang/String;

    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    .restart local v2    # "url":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v3}, Lmtopsdk/mtop/common/MtopNetworkProp;->getProtocol()Lmtopsdk/mtop/domain/ProtocolEnum;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_2
    sget-object v3, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v3, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/EntranceEnum;->getEntrance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 195
    .end local v1    # "envMode":Lmtopsdk/mtop/domain/EnvModeEnum;
    .end local v2    # "url":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.MtopProxyBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[getFullBaseUrl] create MtopProxyBase fullbaseurl error ---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lmtopsdk/mtop/MtopProxyBase;->fullBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    return-object v0
.end method

.method public getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    return-object v0
.end method

.method public handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 3
    .param p1, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 286
    if-eqz p1, :cond_0

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    instance-of v1, v1, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-nez v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    new-instance v0, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v0, p1}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 291
    .local v0, "mtopEvent":Lmtopsdk/mtop/common/MtopFinishEvent;
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    check-cast v1, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxyBase;->context:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCallback(Lmtopsdk/mtop/common/MtopListener;)V
    .locals 0
    .param p1, "callback"    # Lmtopsdk/mtop/common/MtopListener;

    .prologue
    .line 258
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    .line 259
    return-void
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 243
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->context:Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public setCustomDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "customDomain"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->customDomain:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setEntrance(Lmtopsdk/mtop/domain/EntranceEnum;)V
    .locals 0
    .param p1, "entrance"    # Lmtopsdk/mtop/domain/EntranceEnum;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 212
    :cond_0
    return-void
.end method

.method public setFullBaseUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fullBaseUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->fullBaseUrl:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setMtopRequest(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 0
    .param p1, "mtopRequest"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 223
    :cond_0
    return-void
.end method

.method public setProperty(Lmtopsdk/mtop/common/MtopNetworkProp;)V
    .locals 0
    .param p1, "property"    # Lmtopsdk/mtop/common/MtopNetworkProp;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 235
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 264
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MtopProxyBase [entrance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    const-string/jumbo v1, ", fullBaseUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxyBase;->fullBaseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string/jumbo v1, ", customDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxyBase;->customDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string/jumbo v1, ", mtopRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    const-string/jumbo v1, ", property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxyBase;->context:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected validateBusinessInit()Lmtopsdk/mtop/util/Result;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 302
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxyBase;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v4}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "seqNo":Ljava/lang/String;
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->isLegalRequest()Z

    move-result v4

    if-nez v4, :cond_2

    .line 307
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mtopRequest is invalid."

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "logStr":Ljava/lang/String;
    const-string/jumbo v4, "mtopsdk.MtopProxyBase"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[validateBusinessInit]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v1, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v4, "ANDROID_SYS_MTOPPROXYBASE_INIT_ERROR"

    invoke-direct {v1, v7, v4, v0}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .local v1, "result":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    move-object v2, v1

    .line 323
    .end local v0    # "logStr":Ljava/lang/String;
    .end local v1    # "result":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    .local v2, "result":Ljava/lang/Object;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    :goto_1
    return-object v2

    .line 307
    .end local v2    # "result":Ljava/lang/Object;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    :cond_1
    const-string/jumbo v4, "mtopRequest=null"

    goto :goto_0

    .line 312
    :cond_2
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    const-string/jumbo v4, "mtopsdk.MtopProxyBase"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[validateBusinessInit]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v6}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_3
    iget-object v4, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    if-nez v4, :cond_4

    .line 317
    const-string/jumbo v0, "MtopNetworkProp is invalid."

    .line 318
    .restart local v0    # "logStr":Ljava/lang/String;
    const-string/jumbo v4, "mtopsdk.MtopProxyBase"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[validateBusinessInit]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v1, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v4, "ANDROID_SYS_MTOPPROXYBASE_INIT_ERROR"

    invoke-direct {v1, v7, v4, v0}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "result":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    move-object v2, v1

    .line 320
    .restart local v2    # "result":Ljava/lang/Object;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    goto :goto_1

    .line 322
    .end local v0    # "logStr":Ljava/lang/String;
    .end local v1    # "result":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    .end local v2    # "result":Ljava/lang/Object;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    :cond_4
    new-instance v1, Lmtopsdk/mtop/util/Result;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v4}, Lmtopsdk/mtop/util/Result;-><init>(Ljava/lang/Object;)V

    .restart local v1    # "result":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    move-object v2, v1

    .line 323
    .restart local v2    # "result":Ljava/lang/Object;, "Lmtopsdk/mtop/util/Result<Ljava/lang/Boolean;>;"
    goto :goto_1
.end method
