.class public Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;
.super Ljava/lang/Object;
.source "SearchTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/searchengine/models/SearchTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderByClause"
.end annotation


# instance fields
.field public column:Ljava/lang/String;

.field public orderType:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;->column:Ljava/lang/String;

    .line 236
    sget-object v0, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;->ASC:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;->orderType:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    return-void
.end method
