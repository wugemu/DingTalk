.class public Lcom/alibaba/android/user/entry/SafeOplogEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "SafeOplogEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_safe_oplog"
.end annotation


# static fields
.field public static final NAME_OID:Ljava/lang/String; = "oid"

.field public static final NAME_OP_TIME:Ljava/lang/String; = "op_time"

.field public static final NAME_SOURCE:Ljava/lang/String; = "source"

.field public static final NAME_TYPE:Ljava/lang/String; = "type"

.field public static final NAME_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_safe_oplog"


# instance fields
.field public oid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "oid"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public opTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "op_time"
        sort = 0x5
    .end annotation
.end field

.field public source:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "source"
        sort = 0x4
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "type"
        sort = 0x3
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        nullable = false
        sort = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromSafeOplogModel(Lfqk;)Lcom/alibaba/android/user/entry/SafeOplogEntry;
    .locals 7
    .param p0, "object"    # Lfqk;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/entry/SafeOplogEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/entry/SafeOplogEntry;-><init>()V

    .line 40
    .local v0, "result":Lcom/alibaba/android/user/entry/SafeOplogEntry;
    iget-object v1, p0, Lfqk;->b:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 40
    iput-wide v2, v0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->uid:J

    .line 41
    iget-object v1, p0, Lfqk;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 41
    iput-wide v2, v0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->oid:J

    .line 42
    iget-object v1, p0, Lfqk;->c:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 42
    iput v1, v0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->type:I

    .line 43
    iget-object v1, p0, Lfqk;->d:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 43
    iput v1, v0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->source:I

    .line 44
    iget-object v1, p0, Lfqk;->e:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 44
    iput-wide v2, v0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->opTime:J

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->uid:J

    .line 60
    iput-wide v0, p0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->oid:J

    .line 61
    iput v2, p0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->type:I

    .line 62
    iput v2, p0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->source:I

    .line 63
    iput-wide v0, p0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->opTime:J

    .line 64
    return-void
.end method

.method public toSafeOplogModel()Lfqk;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    new-instance v0, Lfqk;

    invoke-direct {v0}, Lfqk;-><init>()V

    .line 50
    .local v0, "result":Lfqk;
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfqk;->b:Ljava/lang/Long;

    .line 51
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->oid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfqk;->a:Ljava/lang/Long;

    .line 52
    iget v1, p0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfqk;->c:Ljava/lang/Integer;

    .line 53
    iget v1, p0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->source:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfqk;->d:Ljava/lang/Integer;

    .line 54
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/SafeOplogEntry;->opTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfqk;->e:Ljava/lang/Long;

    .line 55
    return-object v0
.end method
