.class public Lcom/alibaba/android/searchengine/models/ConfigureColumn;
.super Ljava/lang/Object;
.source "ConfigureColumn.java"


# instance fields
.field public column:Ljava/lang/String;

.field public tokenizer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "tokenizer"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/android/searchengine/models/ConfigureColumn;->column:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/alibaba/android/searchengine/models/ConfigureColumn;->tokenizer:Ljava/lang/String;

    .line 15
    return-void
.end method
