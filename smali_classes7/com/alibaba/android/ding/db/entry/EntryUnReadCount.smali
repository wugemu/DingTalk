.class public Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryUnReadCount.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_ding_unread_count"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final NAME_DING_COMMENT_UNREAD_COUNT:Ljava/lang/String; = "commentUnreadCount"

.field public static final NAME_DING_UNREAD_COUNT:Ljava/lang/String; = "dingUnreadCount"

.field public static final NAME_VERSION:Ljava/lang/String; = "c_version"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_ding_unread_count"


# instance fields
.field public commentUnreadCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "commentUnreadCount"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public dingUnreadCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingUnreadCount"
        nullable = false
        sort = 0x1
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_version"
        sort = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "dingUnreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "commentUnreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "c_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static from(Lbfb;)Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;
    .locals 4
    .param p0, "unreadCountObject"    # Lbfb;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;

    invoke-direct {v0}, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;-><init>()V

    .line 1017
    .local v0, "entryUnReadCount":Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;
    iget v1, p0, Lbfb;->a:I

    .line 49
    iput v1, v0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->dingUnreadCount:I

    .line 1021
    iget v1, p0, Lbfb;->b:I

    .line 50
    iput v1, v0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->commentUnreadCount:I

    .line 1025
    iget-wide v2, p0, Lbfb;->c:J

    .line 51
    iput-wide v2, v0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->version:J

    goto :goto_0
.end method


# virtual methods
.method public toDingUnReadCountObject()Lbfb;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    new-instance v0, Lbfb;

    invoke-direct {v0}, Lbfb;-><init>()V

    .line 59
    .local v0, "dingUnreadCountObject":Lbfb;
    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->dingUnreadCount:I

    .line 1029
    iput v1, v0, Lbfb;->a:I

    .line 60
    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->commentUnreadCount:I

    .line 1033
    iput v1, v0, Lbfb;->b:I

    .line 61
    iget-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->version:J

    .line 1037
    iput-wide v2, v0, Lbfb;->c:J

    .line 62
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EntryUnReadCount{dingUnreadCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->dingUnreadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", commentUnreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->commentUnreadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->version:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
