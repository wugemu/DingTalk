.class public abstract Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;
.super Ljava/lang/Object;
.source "StatisticsUnit.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIncValue:J

.field private mPrefKey:Ljava/lang/String;

.field private mRecordValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mContext:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mPrefKey:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mPrefKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getLongValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mRecordValue:J

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mIncValue:J

    .line 20
    return-void
.end method


# virtual methods
.method public doStatOnce()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mIncValue:J

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->getNewValue()J

    move-result-wide v0

    .line 32
    .local v0, "newValue":J
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->isValid(J)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mRecordValue:J

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->isValid(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mRecordValue:J

    sub-long v2, v0, v4

    .line 34
    .local v2, "tmpValue":J
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->isValid(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mIncValue:J

    .line 39
    .end local v2    # "tmpValue":J
    :cond_0
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mRecordValue:J

    .line 40
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mPrefKey:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mRecordValue:J

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putLongValue(Landroid/content/Context;Ljava/lang/String;J)V

    .line 41
    return-void
.end method

.method public getLatestIncValue()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->mIncValue:J

    return-wide v0
.end method

.method public abstract getNewValue()J
.end method

.method public abstract isValid(J)Z
.end method
