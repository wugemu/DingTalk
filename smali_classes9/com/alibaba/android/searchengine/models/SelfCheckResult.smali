.class public Lcom/alibaba/android/searchengine/models/SelfCheckResult;
.super Ljava/lang/Object;
.source "SelfCheckResult.java"


# instance fields
.field public bizCnt:J

.field public bizTblName:Ljava/lang/String;

.field public bizTypeName:Ljava/lang/String;

.field public ftsCnt:J

.field public rowidEnd:J

.field public rowidStart:J

.field public tblBatchSync:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFtsSelfCheckResult(Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;)Lcom/alibaba/android/searchengine/models/SelfCheckResult;
    .locals 4
    .param p0, "ftsSelfCheckResult"    # Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/alibaba/android/searchengine/models/SelfCheckResult;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/SelfCheckResult;-><init>()V

    .line 49
    .local v0, "selfCheckResult":Lcom/alibaba/android/searchengine/models/SelfCheckResult;
    iget-object v1, p0, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;->bizTypeName:[B

    invoke-static {v1}, Leui;->a([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->bizTypeName:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;->bizTblName:[B

    invoke-static {v1}, Leui;->a([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->bizTblName:Ljava/lang/String;

    .line 51
    iget-wide v2, p0, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;->rowidStart:J

    iput-wide v2, v0, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->rowidStart:J

    .line 52
    iget-wide v2, p0, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;->rowidEnd:J

    iput-wide v2, v0, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->rowidEnd:J

    .line 53
    iget-wide v2, p0, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;->bizCnt:J

    iput-wide v2, v0, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->bizCnt:J

    .line 54
    iget-wide v2, p0, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;->ftsCnt:J

    iput-wide v2, v0, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->ftsCnt:J

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;->tblBatchSync:[B

    invoke-static {v1}, Leui;->a([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->tblBatchSync:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromFtsSelfCheckResults(Lcom/alibaba/android/searchengine/models/FtsSelfCheckResults;)Ljava/util/List;
    .locals 6
    .param p0, "ftsSelfCheckResults"    # Lcom/alibaba/android/searchengine/models/FtsSelfCheckResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/searchengine/models/FtsSelfCheckResults;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/searchengine/models/SelfCheckResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v1, "selfCheckResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/searchengine/models/SelfCheckResult;>;"
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResults;->ftsSelfCheckResults:[Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;

    if-nez v2, :cond_1

    .line 39
    :cond_0
    return-object v1

    .line 31
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResults;->ftsSelfCheckResults:[Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 32
    .local v0, "ftsSelfCheckResult":Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;
    if-eqz v0, :cond_2

    .line 36
    invoke-static {v0}, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->fromFtsSelfCheckResult(Lcom/alibaba/android/searchengine/models/FtsSelfCheckResult;)Lcom/alibaba/android/searchengine/models/SelfCheckResult;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
