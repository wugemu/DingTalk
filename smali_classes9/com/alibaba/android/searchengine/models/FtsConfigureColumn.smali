.class public Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;
.super Ljava/lang/Object;
.source "FtsConfigureColumn.java"


# instance fields
.field public column:[B

.field public tokenizer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromColumn(Lcom/alibaba/android/searchengine/models/ConfigureColumn;)Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;
    .locals 2
    .param p0, "column"    # Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;-><init>()V

    .line 22
    .local v0, "ftsColumn":Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;
    iget-object v1, p0, Lcom/alibaba/android/searchengine/models/ConfigureColumn;->column:Ljava/lang/String;

    invoke-static {v1}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;->column:[B

    .line 23
    iget-object v1, p0, Lcom/alibaba/android/searchengine/models/ConfigureColumn;->tokenizer:Ljava/lang/String;

    invoke-static {v1}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;->tokenizer:[B

    goto :goto_0
.end method
