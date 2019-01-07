.class public Lcom/alibaba/android/searchengine/models/ConfigureTable;
.super Ljava/lang/Object;
.source "ConfigureTable.java"


# instance fields
.field public bizType:Ljava/lang/String;

.field public columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/searchengine/models/ConfigureColumn;",
            ">;"
        }
    .end annotation
.end field

.field public shardingTablePrefix:Ljava/lang/String;

.field public shardingTableRule:Ljava/lang/String;

.field public tableName:Ljava/lang/String;

.field public tablePriority:I

.field public tableVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    return-void
.end method
