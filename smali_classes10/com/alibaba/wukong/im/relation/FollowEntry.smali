.class public Lcom/alibaba/wukong/im/relation/FollowEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "FollowEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbfollow"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tbfollow"


# instance fields
.field public lastModify:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "lastModify"
        nullable = false
        sort = 0x4
    .end annotation
.end field

.field public openId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "openId"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_follow_openId:1"
    .end annotation
.end field

.field public status:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "status"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public tag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "tag"
        nullable = false
        sort = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 48
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

    .line 41
    iput-wide v2, p0, Lcom/alibaba/wukong/im/relation/FollowEntry;->openId:J

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/wukong/im/relation/FollowEntry;->status:J

    .line 43
    iput-wide v2, p0, Lcom/alibaba/wukong/im/relation/FollowEntry;->tag:J

    .line 44
    iput-wide v2, p0, Lcom/alibaba/wukong/im/relation/FollowEntry;->lastModify:J

    .line 45
    return-void
.end method
