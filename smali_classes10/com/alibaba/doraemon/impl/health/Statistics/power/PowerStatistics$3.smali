.class Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$3;
.super Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;
.source "PowerStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$3;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getNewValue()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$3;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$000(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->getCPUTimeByApp(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    move-result-object v0

    .line 188
    .local v0, "timeInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    if-eqz v0, :cond_0

    .line 189
    iget-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J

    add-long/2addr v2, v4

    .line 192
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method protected isValid(J)Z
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 197
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
