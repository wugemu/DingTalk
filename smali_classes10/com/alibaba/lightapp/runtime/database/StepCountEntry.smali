.class public Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "StepCountEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "stepcount"
.end annotation


# static fields
.field public static final DAY_YEAR:Ljava/lang/String; = "dayYear"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STEP_COUNT_NUMBER:Ljava/lang/String; = "stepCountNumber"

.field public static final TABLE_NAME:Ljava/lang/String; = "stepcount"

.field public static final TIME_STAMP:Ljava/lang/String; = "timestamp"

.field public static final TOTAL_STEPS:Ljava/lang/String; = "totalStep"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field public dayYear:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dayYear"
        sort = 0x4
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "status"
        sort = 0x5
    .end annotation
.end field

.field public stepCountNumber:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "stepCountNumber"
        sort = 0x1
    .end annotation
.end field

.field public timestamp:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "timestamp"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public totalSteps:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "totalStep"
        sort = 0x7
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "uid"
        sort = 0x6
    .end annotation
.end field

.field public year:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "year"
        sort = 0x3
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

.method public static fromObject(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .prologue
    .line 68
    new-instance v0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;-><init>()V

    .line 69
    .local v0, "entry":Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->stepCountNumber:I

    .line 70
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->dayYear:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->dayYear:I

    .line 71
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->year:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->year:I

    .line 72
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->timestamp:J

    .line 73
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->status:I

    .line 74
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->id:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->_id:J

    .line 75
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->uid:J

    .line 76
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->totalSteps:I

    .line 77
    return-object v0
.end method


# virtual methods
.method public toObject()Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    new-instance v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;-><init>()V

    .line 82
    .local v0, "stepCountObject":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->stepCountNumber:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    .line 83
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->dayYear:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->dayYear:I

    .line 84
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->year:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->year:I

    .line 85
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->timestamp:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 86
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->status:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    .line 87
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->_id:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->id:J

    .line 88
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->uid:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    .line 89
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->totalSteps:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 90
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "StepCountEntry{stepCountNumber="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->stepCountNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dayYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->dayYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", totalSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->totalSteps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
