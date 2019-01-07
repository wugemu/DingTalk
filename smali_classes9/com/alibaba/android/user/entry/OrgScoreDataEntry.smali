.class public Lcom/alibaba/android/user/entry/OrgScoreDataEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "OrgScoreDataEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tborgscore"
.end annotation


# static fields
.field public static final NAME_IDX_CARBON:Ljava/lang/String; = "idxCarbon"

.field public static final NAME_IDX_EFFICIENCY:Ljava/lang/String; = "idxEfficiency"

.field public static final NAME_IDX_TOTAL:Ljava/lang/String; = "idxTotal"

.field public static final NAME_INCREMENT:Ljava/lang/String; = "increment"

.field public static final NAME_ORG_ID:Ljava/lang/String; = "orgId"

.field public static final NAME_TIME_TAG:Ljava/lang/String; = "timeTag"

.field public static final TABLE_NAME:Ljava/lang/String; = "tborgscore"


# instance fields
.field public idxCarbon:D
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "idxCarbon"
        sort = 0x4
    .end annotation
.end field

.field public idxEfficiency:D
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "idxEfficiency"
        sort = 0x3
    .end annotation
.end field

.field public idxTotal:D
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "idxTotal"
        sort = 0x2
    .end annotation
.end field

.field public increment:D
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "increment"
        sort = 0x6
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "orgId"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tabmsgactor_uid:1"
    .end annotation
.end field

.field public timeTag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "timeTag"
        sort = 0x5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromDBEntry(Lcom/alibaba/android/user/entry/OrgScoreDataEntry;)Lcom/alibaba/android/user/model/OrgScoreDataObject;
    .locals 4
    .param p0, "entry"    # Lcom/alibaba/android/user/entry/OrgScoreDataEntry;

    .prologue
    .line 73
    new-instance v1, Lcom/alibaba/android/user/model/OrgScoreDataObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/model/OrgScoreDataObject;-><init>()V

    .line 74
    .local v1, "object":Lcom/alibaba/android/user/model/OrgScoreDataObject;
    new-instance v0, Lcom/alibaba/android/user/model/DingIndexObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/DingIndexObject;-><init>()V

    .line 75
    .local v0, "dingIndexObject":Lcom/alibaba/android/user/model/DingIndexObject;
    iput-object v0, v1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    .line 76
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->orgId:J

    iput-wide v2, v1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->orgId:J

    .line 77
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->idxTotal:D

    iput-wide v2, v0, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    .line 78
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->idxEfficiency:D

    iput-wide v2, v0, Lcom/alibaba/android/user/model/DingIndexObject;->idxEfficiency:D

    .line 79
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->idxCarbon:D

    iput-wide v2, v0, Lcom/alibaba/android/user/model/DingIndexObject;->idxCarbon:D

    .line 80
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->timeTag:J

    iput-wide v2, v1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->timeTag:J

    .line 81
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->increment:D

    iput-wide v2, v1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->increment:D

    .line 82
    return-object v1
.end method


# virtual methods
.method public reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->orgId:J

    .line 64
    iput-wide v2, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->idxTotal:D

    .line 65
    iput-wide v2, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->idxEfficiency:D

    .line 66
    iput-wide v2, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->idxCarbon:D

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->timeTag:J

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->increment:D

    .line 69
    return-void
.end method

.method public toDBEntry(Lcom/alibaba/android/user/model/OrgScoreDataObject;)Lcom/alibaba/android/user/entry/OrgScoreDataEntry;
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/user/model/OrgScoreDataObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 87
    new-instance v1, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;

    invoke-direct {v1}, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;-><init>()V

    .line 88
    .local v1, "entry":Lcom/alibaba/android/user/entry/OrgScoreDataEntry;
    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    .line 89
    .local v0, "dingIndexObject":Lcom/alibaba/android/user/model/DingIndexObject;
    iget-wide v2, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->orgId:J

    iput-wide v2, v1, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->orgId:J

    .line 90
    iget-wide v2, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->timeTag:J

    iput-wide v2, v1, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->timeTag:J

    .line 91
    iget-wide v2, v0, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    iput-wide v2, v1, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->idxTotal:D

    .line 92
    iget-wide v2, v0, Lcom/alibaba/android/user/model/DingIndexObject;->idxEfficiency:D

    iput-wide v2, v1, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->idxEfficiency:D

    .line 93
    iget-wide v2, v0, Lcom/alibaba/android/user/model/DingIndexObject;->idxCarbon:D

    iput-wide v2, v1, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->idxCarbon:D

    .line 94
    iget-wide v2, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->increment:D

    iput-wide v2, v1, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->increment:D

    .line 95
    return-object v1
.end method
