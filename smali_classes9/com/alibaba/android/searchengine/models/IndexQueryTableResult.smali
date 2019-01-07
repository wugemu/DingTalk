.class public Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
.super Ljava/lang/Object;
.source "IndexQueryTableResult.java"


# instance fields
.field public dbName:Ljava/lang/String;

.field public keyField:Ljava/lang/String;

.field public pkeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, "rowid"

    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->keyField:Ljava/lang/String;

    return-void
.end method
