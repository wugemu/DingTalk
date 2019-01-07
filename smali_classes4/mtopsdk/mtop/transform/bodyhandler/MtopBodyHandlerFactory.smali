.class public Lmtopsdk/mtop/transform/bodyhandler/MtopBodyHandlerFactory;
.super Ljava/lang/Object;
.source "MtopBodyHandlerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopBodyHandlerFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGzipBodyHandler([BILjava/util/Map;)Lld;
    .locals 6
    .param p0, "bodydata"    # [B
    .param p1, "gzipThreshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lld;"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_2

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 47
    :cond_1
    :goto_0
    return-object v0

    .line 24
    :cond_2
    array-length v1, p0

    .line 25
    .local v1, "bodylength":I
    if-lez p1, :cond_3

    if-eqz p2, :cond_3

    if-ge v1, p1, :cond_4

    .line 26
    :cond_3
    new-instance v0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;-><init>([B)V

    .line 27
    .local v0, "bodyHandler":Lld;
    goto :goto_0

    .line 31
    .end local v0    # "bodyHandler":Lld;
    :cond_4
    invoke-static {p0}, Lmtopsdk/common/util/MtopUtils;->gzip([B)[B

    move-result-object v2

    .line 32
    .local v2, "gizpedBodyData":[B
    if-eqz v2, :cond_5

    .line 33
    const-string/jumbo v3, "content-length"

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v3, "content-encoding"

    const-string/jumbo v4, "gzip"

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;

    invoke-direct {v0, v2}, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;-><init>([B)V

    .line 36
    .restart local v0    # "bodyHandler":Lld;
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    const-string/jumbo v3, "mtopsdk.MtopBodyHandlerFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[createBodyHandler]bodydata length="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";gziped bodylength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v0    # "bodyHandler":Lld;
    :cond_5
    new-instance v0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;-><init>([B)V

    .line 42
    .restart local v0    # "bodyHandler":Lld;
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    const-string/jumbo v3, "mtopsdk.MtopBodyHandlerFactory"

    const-string/jumbo v4, "[createBodyHandler] gzip bodydata failed. "

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
