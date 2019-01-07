.class public Lmtopsdk/mtop/common/MtopNetworkProp;
.super Ljava/lang/Object;
.source "MtopNetworkProp.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# static fields
.field private static final serialVersionUID:J = -0x30f72c8a3cbdabccL


# instance fields
.field public accessToken:Ljava/lang/String;

.field protected autoRedirect:Z

.field public bizId:I

.field public cacheKeyBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public clientTraceId:Ljava/lang/String;

.field public connTimeout:I

.field private correctTimeStamp:Z

.field public envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field public forceRefreshCache:Z

.field protected method:Lmtopsdk/mtop/domain/MethodEnum;

.field public mtopSignAppkey:Ljava/lang/String;

.field public netParam:I

.field public openAppKey:Ljava/lang/String;

.field protected protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

.field public queryParameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reqBizExt:Ljava/lang/String;

.field public reqUserId:Ljava/lang/String;

.field protected requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected retryTime:I

.field public socketTimeout:I

.field public ttid:Ljava/lang/String;

.field public useCache:Z

.field public useOpenApi:Z

.field public userUnit:Lmtopsdk/mtop/unit/UserUnit;

.field public wuaFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTPSECURE:Lmtopsdk/mtop/domain/ProtocolEnum;

    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    .line 35
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->autoRedirect:Z

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTime:I

    .line 55
    iput-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->correctTimeStamp:Z

    .line 66
    iput-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    .line 71
    iput-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    .line 114
    iput v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    .line 119
    iput v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    .line 129
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-void
.end method


# virtual methods
.method public getMethod()Lmtopsdk/mtop/domain/MethodEnum;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    return-object v0
.end method

.method public getProtocol()Lmtopsdk/mtop/domain/ProtocolEnum;
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalSpdySslSwitchOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    goto :goto_0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 224
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTime:I

    return v0
.end method

.method public isAutoRedirect()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->autoRedirect:Z

    return v0
.end method

.method public isCorrectTimeStamp()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->correctTimeStamp:Z

    return v0
.end method

.method public setAutoRedirect(Z)V
    .locals 0
    .param p1, "autoRedirect"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->autoRedirect:Z

    .line 206
    return-void
.end method

.method public setCorrectTimeStamp(Z)V
    .locals 0
    .param p1, "correctTimeStamp"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->correctTimeStamp:Z

    .line 237
    return-void
.end method

.method public setMethod(Lmtopsdk/mtop/domain/MethodEnum;)V
    .locals 0
    .param p1, "method"    # Lmtopsdk/mtop/domain/MethodEnum;

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_0
.end method

.method public setProtocol(Lmtopsdk/mtop/domain/ProtocolEnum;)V
    .locals 0
    .param p1, "protocol"    # Lmtopsdk/mtop/domain/ProtocolEnum;

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    goto :goto_0
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 0
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

    .prologue
    .line 228
    .local p1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    .line 229
    return-void
.end method

.method public setRetryTime(I)V
    .locals 0
    .param p1, "retryTime"    # I

    .prologue
    .line 219
    iput p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTime:I

    .line 220
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MtopNetworkProp ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string/jumbo v1, ", autoRedirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->autoRedirect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    const-string/jumbo v1, ", retryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string/jumbo v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    const-string/jumbo v1, ", correctTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->correctTimeStamp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 248
    const-string/jumbo v1, ", ttid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string/jumbo v1, ", useCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v1, ", forceRefreshCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v1, ", cacheKeyBlackList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    iget-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->useOpenApi:Z

    if-eqz v1, :cond_0

    .line 253
    const-string/jumbo v1, ", useOpenApi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->useOpenApi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    const-string/jumbo v1, ", openAppKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string/jumbo v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    const-string/jumbo v1, ", queryParameterMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v1, ", mtopSignAppkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->mtopSignAppkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string/jumbo v1, ", connTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string/jumbo v1, ", socketTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v1, ", bizId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->bizId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string/jumbo v1, ", envMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    const-string/jumbo v1, ", userUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->userUnit:Lmtopsdk/mtop/unit/UserUnit;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    const-string/jumbo v1, ", reqBizExt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
