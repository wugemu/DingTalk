.class public Lcom/alibaba/android/searchengine/models/FtsConfigure;
.super Ljava/lang/Object;
.source "FtsConfigure.java"


# instance fields
.field public dbConfs:[Lcom/alibaba/android/searchengine/models/FtsDBConfigure;

.field public logLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromConfigure(Lcom/alibaba/android/searchengine/models/Configure;)Lcom/alibaba/android/searchengine/models/FtsConfigure;
    .locals 7
    .param p0, "configure"    # Lcom/alibaba/android/searchengine/models/Configure;

    .prologue
    .line 16
    if-nez p0, :cond_1

    .line 17
    const/4 v1, 0x0

    .line 35
    :cond_0
    return-object v1

    .line 20
    :cond_1
    new-instance v1, Lcom/alibaba/android/searchengine/models/FtsConfigure;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/FtsConfigure;-><init>()V

    .line 21
    .local v1, "ftsConfigure":Lcom/alibaba/android/searchengine/models/FtsConfigure;
    iget v4, p0, Lcom/alibaba/android/searchengine/models/Configure;->logLevel:I

    iput v4, v1, Lcom/alibaba/android/searchengine/models/FtsConfigure;->logLevel:I

    .line 24
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/Configure;->dbConfs:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 25
    const/4 v2, 0x0

    .line 26
    .local v2, "i":I
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/Configure;->dbConfs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/android/searchengine/models/FtsDBConfigure;

    iput-object v4, v1, Lcom/alibaba/android/searchengine/models/FtsConfigure;->dbConfs:[Lcom/alibaba/android/searchengine/models/FtsDBConfigure;

    .line 27
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/Configure;->dbConfs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/searchengine/models/DBConfigure;

    .line 28
    .local v0, "dbConfigure":Lcom/alibaba/android/searchengine/models/DBConfigure;
    if-eqz v0, :cond_2

    .line 31
    iget-object v5, v1, Lcom/alibaba/android/searchengine/models/FtsConfigure;->dbConfs:[Lcom/alibaba/android/searchengine/models/FtsDBConfigure;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-static {v0}, Lcom/alibaba/android/searchengine/models/FtsDBConfigure;->fromDBConfigure(Lcom/alibaba/android/searchengine/models/DBConfigure;)Lcom/alibaba/android/searchengine/models/FtsDBConfigure;

    move-result-object v6

    aput-object v6, v5, v2

    move v2, v3

    .line 32
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method
