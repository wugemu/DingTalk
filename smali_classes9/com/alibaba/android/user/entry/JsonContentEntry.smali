.class public Lcom/alibaba/android/user/entry/JsonContentEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "JsonContentEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_org_contact"
.end annotation


# static fields
.field public static final NAME_JSON_KEY:Ljava/lang/String; = "json_key"

.field public static final NAME_JSON_TEXT:Ljava/lang/String; = "json_text"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_org_contact"


# instance fields
.field public jsonKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "json_key"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_org_contact_json_key:1"
    .end annotation
.end field

.field public jsonText:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "json_text"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/alibaba/android/user/entry/JsonContentEntry;->jsonKey:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/alibaba/android/user/entry/JsonContentEntry;->jsonText:Ljava/lang/String;

    .line 29
    return-void
.end method
