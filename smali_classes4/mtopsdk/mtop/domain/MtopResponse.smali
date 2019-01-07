.class public Lmtopsdk/mtop/domain/MtopResponse;
.super Ljava/lang/Object;
.source "MtopResponse.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;
    }
.end annotation


# static fields
.field private static final SHARP:Ljava/lang/String; = "::"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopResponse"

.field private static final serialVersionUID:J = 0x15bd0e193dcddcdbL


# instance fields
.field private api:Ljava/lang/String;

.field private volatile bParsed:Z

.field private bytedata:[B

.field private data:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private dataJsonObject:Lorg/json/JSONObject;

.field private headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

.field private responseCode:I

.field private responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

.field private ret:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private retCode:Ljava/lang/String;

.field private retMsg:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 97
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "retCode"    # Ljava/lang/String;
    .param p2, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 97
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 106
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "retCode"    # Ljava/lang/String;
    .param p4, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 97
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 113
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private parserRet([Ljava/lang/String;)V
    .locals 5
    .param p1, "ret"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 337
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    aget-object v1, p1, v3

    .line 341
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const-string/jumbo v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "message":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-le v2, v4, :cond_0

    .line 344
    aget-object v2, v0, v3

    iput-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 345
    aget-object v2, v0, v4

    iput-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 157
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getBytedata()[B
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    return-object v0
.end method

.method public getData()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->data:[B

    return-object v0
.end method

.method public getDataJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 224
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFullKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 424
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/common/util/StringUtils;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    return-object v0
.end method

.method public getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    return v0
.end method

.method public getRet()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 190
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 139
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 173
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    return-object v0
.end method

.method public is41XResult()Z
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->is41XResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isApiLockedResult()Z
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isApiLockedResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isApiSuccess()Z
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isSuccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpiredRequest()Z
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isExpiredRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIllegelSign()Z
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isIllegelSign(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMtopSdkError()Z
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isMtopSdkError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMtopServerError()Z
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isMtopServerError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkError()Z
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isNetworkError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNoNetwork()Z
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isNoNetwork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSessionInvalid()Z
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isSessionInvalid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSystemError()Z
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isSystemError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseJsonByte()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 277
    iget-boolean v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-eqz v6, :cond_0

    .line 330
    :goto_0
    return-void

    .line 281
    :cond_0
    monitor-enter p0

    .line 282
    :try_start_0
    iget-boolean v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-eqz v6, :cond_1

    .line 283
    monitor-exit p0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 285
    :cond_1
    :try_start_1
    iget-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    array-length v6, v6

    if-nez v6, :cond_4

    .line 286
    :cond_2
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 287
    const-string/jumbo v6, "mtopsdk.MtopResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[parseJsonByte]bytedata is blank ---api="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_3
    const-string/jumbo v6, "ANDROID_SYS_JSONDATA_BLANK"

    iput-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 290
    const-string/jumbo v6, "\u8fd4\u56deJSONDATA\u4e3a\u7a7a"

    iput-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 291
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 292
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    :cond_4
    :try_start_2
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    .line 297
    .local v4, "jsonStr":Ljava/lang/String;
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 298
    const-string/jumbo v6, "mtopsdk.MtopResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[parseJsonByte]response : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    .local v3, "jsonObject":Lorg/json/JSONObject;
    iget-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 304
    const-string/jumbo v6, "api"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 307
    :cond_6
    iget-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    if-nez v6, :cond_7

    .line 308
    const-string/jumbo v6, "v"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    .line 312
    :cond_7
    const-string/jumbo v6, "ret"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 313
    .local v2, "jsArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 314
    .local v5, "size":I
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_8

    .line 316
    iget-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 320
    :cond_8
    iget-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lmtopsdk/mtop/domain/MtopResponse;->parserRet([Ljava/lang/String;)V

    .line 321
    const-string/jumbo v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    const/4 v6, 0x1

    :try_start_3
    iput-boolean v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 330
    .end local v1    # "i":I
    .end local v2    # "jsArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonStr":Ljava/lang/String;
    .end local v5    # "size":I
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v7, "mtopsdk.MtopResponse"

    iget-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v6}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v6

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[parseJsonByte] parse bytedata error ---api="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",v="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    const-string/jumbo v6, "ANDROID_SYS_JSONDATA_PARSE_ERROR"

    iput-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 326
    const-string/jumbo v6, "\u89e3\u6790JSONDATA\u9519\u8bef"

    iput-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 328
    const/4 v6, 0x1

    :try_start_5
    iput-boolean v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    goto :goto_2

    .line 323
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 328
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v6

    const/4 v7, 0x1

    iput-boolean v7, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setBytedata([B)V
    .locals 0
    .param p1, "bytedata"    # [B

    .prologue
    .line 241
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    .line 242
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->data:[B

    .line 217
    return-void
.end method

.method public setDataJsonObject(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "dataJsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 228
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    .line 229
    return-void
.end method

.method public setHeaderFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 254
    .local p1, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    .line 255
    return-void
.end method

.method public setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V
    .locals 0
    .param p1, "mtopStat"    # Lmtopsdk/mtop/util/MtopStatistics;

    .prologue
    .line 273
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 274
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .prologue
    .line 264
    iput p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    .line 265
    return-void
.end method

.method public setRet([Ljava/lang/String;)V
    .locals 0
    .param p1, "ret"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setRetCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "retCode"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSource(Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;)V
    .locals 0
    .param p1, "source"    # Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .prologue
    .line 394
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 395
    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MtopResponse"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .local v1, "str":Ljava/lang/StringBuilder;
    :try_start_0
    const-string/jumbo v2, "[api="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string/jumbo v2, ",v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string/jumbo v2, ",responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const-string/jumbo v2, ",headerFields="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    const-string/jumbo v2, ",retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string/jumbo v2, ",retMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string/jumbo v2, ",ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string/jumbo v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    const-string/jumbo v2, ",bytedata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    :goto_1
    return-object v2

    .line 414
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 420
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
