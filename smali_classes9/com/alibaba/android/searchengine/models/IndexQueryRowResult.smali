.class public Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;
.super Ljava/lang/Object;
.source "IndexQueryRowResult.java"


# instance fields
.field public colResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rowid:J

.field public tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFtsRowResult(Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;)Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;
    .locals 7
    .param p0, "ftsRowResult"    # Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;

    .prologue
    .line 20
    if-nez p0, :cond_1

    .line 21
    const/4 v1, 0x0

    .line 38
    :cond_0
    return-object v1

    .line 24
    :cond_1
    new-instance v1, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;-><init>()V

    .line 25
    .local v1, "rowResult":Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;
    iget-object v2, p0, Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;->tableName:[B

    invoke-static {v2}, Leui;->a([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;->tableName:Ljava/lang/String;

    .line 26
    iget-wide v2, p0, Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;->rowid:J

    iput-wide v2, v1, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;->rowid:J

    .line 28
    iget-object v2, p0, Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;->colResults:[[B

    if-eqz v2, :cond_0

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;->colResults:Ljava/util/List;

    .line 30
    iget-object v3, p0, Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;->colResults:[[B

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 31
    .local v0, "colResult":[B
    if-eqz v0, :cond_2

    .line 34
    iget-object v5, v1, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;->colResults:Ljava/util/List;

    invoke-static {v0}, Leui;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
