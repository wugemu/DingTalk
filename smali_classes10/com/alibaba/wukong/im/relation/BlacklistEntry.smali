.class public Lcom/alibaba/wukong/im/relation/BlacklistEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "BlacklistEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbblacklist"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tbblacklist"


# instance fields
.field public lastModify:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "lastModify"
        nullable = false
        sort = 0x3
    .end annotation
.end field

.field public openId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "openId"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_blacklist_openId:1"
    .end annotation
.end field

.field public status:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "status"
        nullable = false
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 34
    iput-wide v2, p0, Lcom/alibaba/wukong/im/relation/BlacklistEntry;->openId:J

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/wukong/im/relation/BlacklistEntry;->status:J

    .line 36
    iput-wide v2, p0, Lcom/alibaba/wukong/im/relation/BlacklistEntry;->lastModify:J

    .line 37
    return-void
.end method
