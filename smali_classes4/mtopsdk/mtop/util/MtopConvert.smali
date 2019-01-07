.class public Lmtopsdk/mtop/util/MtopConvert;
.super Ljava/lang/Object;
.source "MtopConvert.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopConvert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inputDoToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1
    .param p0, "input"    # Ljava/lang/Object;

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-static {p0}, Lmtopsdk/mtop/util/ReflectUtil;->convertToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    .line 101
    .local v0, "request":Lmtopsdk/mtop/domain/MtopRequest;
    goto :goto_0
.end method

.method public static inputDoToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1
    .param p0, "inputDO"    # Lmtopsdk/mtop/domain/IMTOPDataObject;

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-static {p0}, Lmtopsdk/mtop/util/ReflectUtil;->convertToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    .line 86
    .local v0, "request":Lmtopsdk/mtop/domain/MtopRequest;
    goto :goto_0
.end method

.method public static jsonToOutputDO([BLjava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;
    .locals 6
    .param p0, "jsondata"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Class",
            "<*>;)",
            "Lmtopsdk/mtop/domain/BaseOutDo;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "outClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 38
    :cond_0
    const-string/jumbo v3, "mtopsdk.MtopConvert"

    const-string/jumbo v4, "[jsonToOutputDO]outClass is null or jsondata is blank"

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 44
    .local v1, "baseOutDo":Lmtopsdk/mtop/domain/BaseOutDo;
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v3}, Lgxk;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmtopsdk/mtop/domain/BaseOutDo;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "mtopsdk.MtopConvert"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[jsonToOutputDO]invoke JSON.parseObject error ---Class="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;
    .locals 4
    .param p0, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lmtopsdk/mtop/domain/BaseOutDo;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "outClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 64
    :cond_0
    const-string/jumbo v2, "mtopsdk.MtopConvert"

    const-string/jumbo v3, "outClass is null or response is null"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    .line 68
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    .line 70
    .local v0, "byteData":[B
    invoke-static {v0, p1}, Lmtopsdk/mtop/util/MtopConvert;->jsonToOutputDO([BLjava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v1

    .line 71
    .local v1, "outputDo":Lmtopsdk/mtop/domain/BaseOutDo;
    goto :goto_0
.end method

.method public static parseNetworkRlt(Llk;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 1
    .param p0, "response"    # Llk;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0, v0}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseNetworkRlt(Llk;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    return-object v0
.end method
