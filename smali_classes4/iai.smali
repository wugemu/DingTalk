.class public Liai;
.super Ljava/lang/Object;
.source "WKConfEntry.java"

# interfaces
.implements Lcom/alibaba/bee/impl/table/TableEntry;


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbwkconf"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tbwkconf"


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "name"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_wkconf_name:1"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_wkconf_type"
        name = "type"
        nullable = false
        sort = 0x3
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "val"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Liai;->type:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Liai;->name:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Liai;->value:Ljava/lang/String;

    .line 36
    return-void
.end method
