.class public final Larh$1;
.super Ljava/lang/Object;
.source "CalendarReportDataManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lasd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Larh;


# direct methods
.method public constructor <init>(Larh;)V
    .locals 0
    .param p1, "this$0"    # Larh;

    .prologue
    .line 91
    iput-object p1, p0, Larh$1;->a:Larh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarReportDataManager] requestCalendarReportConfig onException code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    check-cast p1, Lasd;

    .line 1094
    if-nez p1, :cond_1

    .line 1095
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarReportDataManager] requestCalendarReportConfig is null"

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1098
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarReportDataManager] requestCalendarReportConfig onSuccess calendarReportConfigObject="

    aput-object v1, v0, v4

    invoke-virtual {p1}, Lasd;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 2046
    iget-wide v0, p1, Lasd;->d:J

    .line 1100
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1101
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarReportDataManager] requestCalendarReportConfig : calendarReportConfigObject is overdue. expires="

    aput-object v1, v0, v4

    .line 3046
    iget-wide v2, p1, Lasd;->d:J

    .line 1102
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, ", lwpOrSystemTime="

    aput-object v1, v0, v6

    const/4 v1, 0x3

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1101
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 1106
    :cond_2
    iget-object v0, p0, Larh$1;->a:Larh;

    invoke-static {v0, p1}, Larh;->a(Larh;Lasd;)V

    .line 3050
    iget-boolean v0, p1, Lasd;->a:Z

    .line 1108
    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Larh$1;->a:Larh;

    .line 4038
    iget v1, p1, Lasd;->b:I

    .line 4042
    iget v2, p1, Lasd;->c:I

    .line 1109
    invoke-static {v0, v1, v2}, Larh;->a(Larh;II)V

    goto :goto_0
.end method
