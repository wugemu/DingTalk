.class public Lcom/alibaba/android/searchengine/models/IndexQuery;
.super Ljava/lang/Object;
.source "IndexQuery.java"


# instance fields
.field public asc:Z

.field public bizType:Ljava/lang/String;

.field public commonCondition:Ljava/lang/String;

.field public highLightColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public limitOffset:I

.field public limitSize:I

.field public matchCondition:Ljava/lang/String;

.field public orderByColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public relationType:I

.field public returnColumns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->relationType:I

    return-void
.end method
