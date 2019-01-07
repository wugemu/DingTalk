.class public Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;
.super Ljava/lang/Object;
.source "StatisticsIncUnit.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/health/utils/IncTrigger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIncPrefKey:Ljava/lang/String;

.field private mIncValues:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefKey"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mContext:Landroid/content/Context;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_inc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncPrefKey:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncPrefKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getLongValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncValues:J

    .line 19
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncValues:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 20
    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncValues:J

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public clearIncvaluesSum()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncValues:J

    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncPrefKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->removeValue(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public getIncValuesSum()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncValues:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public onValueInc(J)V
    .locals 5
    .param p1, "incValue"    # J

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncValues:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncValues:J

    .line 36
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncPrefKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsIncUnit;->mIncValues:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putLongValue(Landroid/content/Context;Ljava/lang/String;J)V

    .line 37
    return-void
.end method
