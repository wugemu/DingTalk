.class public Lcom/alibaba/lightapp/runtime/database/StepCountObject;
.super Ljava/lang/Object;
.source "StepCountObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STATUS_LOCAL:I = 0x0

.field public static final STATUS_UPLOADED:I = 0x1


# instance fields
.field public dayYear:I

.field public id:J

.field public status:I

.field public steps:I

.field public timestamp:J

.field public totalSteps:I

.field public uid:J

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .locals 4
    .param p0, "other"    # Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .prologue
    .line 42
    new-instance v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;-><init>()V

    .line 43
    .local v0, "stepCountObject":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->id:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->id:J

    .line 44
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    .line 45
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 46
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->year:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->year:I

    .line 47
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->dayYear:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->dayYear:I

    .line 48
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    .line 49
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    .line 50
    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 51
    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->id:J

    .line 56
    iput v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    .line 57
    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 58
    iput v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->year:I

    .line 59
    iput v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->dayYear:I

    .line 60
    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    .line 61
    iput v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    .line 62
    iput v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "StepCountObject{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dayYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->dayYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", totalSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
