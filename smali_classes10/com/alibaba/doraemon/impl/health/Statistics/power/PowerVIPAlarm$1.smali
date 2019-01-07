.class Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm$1;
.super Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;
.source "PowerVIPAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm$1;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getNewValue()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    const-wide/16 v2, -0x1

    .line 67
    .local v2, "value":J
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->getCPUTotalTime()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 72
    :goto_0
    return-wide v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected isValid(J)Z
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 77
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
