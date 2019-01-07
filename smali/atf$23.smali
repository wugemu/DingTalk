.class public final Latf$23;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Latf;


# direct methods
.method public constructor <init>(Latf;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 506
    iput-object p1, p0, Latf$23;->a:Latf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 509
    invoke-static {}, Larh;->a()Larh;

    move-result-object v0

    .line 1066
    invoke-static {}, Lavq;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1069
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarReportDataManager] tryUploadReport"

    aput-object v2, v1, v6

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1070
    invoke-static {}, Larh;->b()Lasd;

    move-result-object v1

    .line 1071
    if-eqz v1, :cond_0

    .line 2046
    iget-wide v2, v1, Lasd;->d:J

    .line 1071
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 2082
    :cond_0
    const-string/jumbo v1, "pref_key_calendar_report_config_rpc_request_time"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2083
    invoke-static {v2, v3}, Larh;->a(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2091
    new-instance v1, Larh$1;

    invoke-direct {v1, v0}, Larh$1;-><init>(Larh;)V

    .line 2123
    const-string/jumbo v0, "pref_key_calendar_report_config_rpc_request_time"

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 2124
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    .line 2519
    iget-object v2, v0, Latf;->c:Latf$c;

    new-instance v3, Latf$24;

    invoke-direct {v3, v0, v1}, Latf$24;-><init>(Latf;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Latf$c;->execute(Ljava/lang/Runnable;)V

    .line 1072
    :cond_1
    :goto_0
    return-void

    .line 2086
    :cond_2
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarReportDataManager] checkIfRequestReportConfig request report config is not more than one day."

    aput-object v1, v0, v6

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[CalendarReportDataManager] tryUploadReport reportConfigObject="

    aput-object v3, v2, v6

    invoke-virtual {v1}, Lasd;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 3050
    iget-boolean v2, v1, Lasd;->a:Z

    .line 1075
    if-eqz v2, :cond_1

    .line 4038
    iget v2, v1, Lasd;->b:I

    .line 4042
    iget v1, v1, Lasd;->c:I

    .line 1076
    invoke-virtual {v0, v2, v1}, Larh;->a(II)V

    goto :goto_0
.end method
