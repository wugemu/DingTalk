.class public Lcom/alibaba/android/searchengine/models/SearchTask;
.super Ljava/lang/Object;
.source "SearchTask.java"


# instance fields
.field public bizType:Ljava/lang/String;

.field public group:Ljava/lang/String;

.field public indexWhereCondition:Ljava/lang/String;

.field public searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    return-void
.end method
