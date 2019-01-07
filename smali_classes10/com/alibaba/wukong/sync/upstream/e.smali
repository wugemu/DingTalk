.class public Lcom/alibaba/wukong/sync/upstream/e;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "SyncDBEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_sync"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_sync"


# instance fields
.field public mExtras:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extras"
        sort = 0x6
    .end annotation
.end field

.field public mHeaders:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "headers"
        sort = 0x4
    .end annotation
.end field

.field public mOperation:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "operation"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_sync_operation_tag:1"
    .end annotation
.end field

.field public mPayload:[B
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "payload"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public mRetry:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "retry"
        sort = 0x7
    .end annotation
.end field

.field public mTag:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "tag"
        nullable = false
        sort = 0x3
        uniqueIndexName = "idx_sync_operation_tag:2"
    .end annotation
.end field

.field public mTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "time"
        sort = 0x5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 68
    iput-object v2, p0, Lcom/alibaba/wukong/sync/upstream/e;->mOperation:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/alibaba/wukong/sync/upstream/e;->mPayload:[B

    .line 70
    iput-object v2, p0, Lcom/alibaba/wukong/sync/upstream/e;->mTag:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/alibaba/wukong/sync/upstream/e;->mHeaders:Ljava/lang/String;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/wukong/sync/upstream/e;->mTime:J

    .line 73
    iput-object v2, p0, Lcom/alibaba/wukong/sync/upstream/e;->mExtras:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/wukong/sync/upstream/e;->mRetry:I

    .line 75
    return-void
.end method
