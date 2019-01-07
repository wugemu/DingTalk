.class public Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;
.super Ljava/lang/Object;
.source "SearchTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/searchengine/models/SearchTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitClause"
.end annotation


# instance fields
.field public size:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;->start:I

    .line 228
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;->size:I

    return-void
.end method
