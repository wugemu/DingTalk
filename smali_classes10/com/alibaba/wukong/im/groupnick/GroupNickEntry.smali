.class public Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "GroupNickEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_group_nick"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_group_nick"


# instance fields
.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_group_nick_cid:1"
        name = "cid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_group_nick_cid_uid:1"
    .end annotation
.end field

.field public groupNick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "groupNick"
        nullable = true
        sort = 0x3
    .end annotation
.end field

.field public groupNickPinyin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "groupNickPinyin"
        nullable = true
        sort = 0x4
    .end annotation
.end field

.field public modifyTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "modifyTime"
        nullable = false
        sort = 0x6
    .end annotation
.end field

.field public tag:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "tag"
        nullable = false
        sort = 0x5
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        nullable = false
        sort = 0x2
        uniqueIndexName = "idx_group_nick_cid_uid:2"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 79
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

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->cid:Ljava/lang/String;

    .line 72
    iput-wide v2, p0, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->uid:J

    .line 73
    iput-object v0, p0, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->groupNick:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->groupNickPinyin:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->tag:I

    .line 76
    iput-wide v2, p0, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->modifyTime:J

    .line 77
    return-void
.end method
