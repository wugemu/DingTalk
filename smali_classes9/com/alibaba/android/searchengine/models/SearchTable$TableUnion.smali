.class public Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;
.super Ljava/lang/Object;
.source "SearchTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/searchengine/models/SearchTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableUnion"
.end annotation


# instance fields
.field public onColumn:Ljava/lang/String;

.field public onOtherColumn:Ljava/lang/String;

.field public onTable:Lcom/alibaba/android/searchengine/models/SearchTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 209
    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onColumn:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onOtherColumn:Ljava/lang/String;

    return-void
.end method
