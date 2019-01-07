.class final Latf$7;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latf;->a(JJJLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/wukong/Callback;

.field final synthetic e:Latf;


# direct methods
.method constructor <init>(Latf;JJJLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 371
    iput-object p1, p0, Latf$7;->e:Latf;

    iput-wide p2, p0, Latf$7;->a:J

    iput-wide p4, p0, Latf$7;->b:J

    iput-wide p6, p0, Latf$7;->c:J

    iput-object p8, p0, Latf$7;->d:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 374
    iget-object v0, p0, Latf$7;->e:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-wide v2, p0, Latf$7;->a:J

    iget-wide v4, p0, Latf$7;->b:J

    iget-wide v6, p0, Latf$7;->c:J

    iget-object v1, p0, Latf$7;->d:Lcom/alibaba/wukong/Callback;

    .line 1699
    iget-object v8, v0, Lapw;->c:Latn;

    new-instance v9, Lapw$14;

    invoke-direct {v9, v0, v1}, Lapw$14;-><init>(Lapw;Lcom/alibaba/wukong/Callback;)V

    .line 2172
    cmp-long v0, v2, v10

    if-lez v0, :cond_0

    cmp-long v0, v4, v10

    if-lez v0, :cond_0

    cmp-long v0, v6, v10

    if-gtz v0, :cond_1

    .line 2174
    :cond_0
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    const-string/jumbo v0, "update exception date failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "calendarId <= 0 || eventId <= 0 || time <= 0"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    :goto_0
    return-void

    .line 2180
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2182
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->dt_errmsg_network_abnormal:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2187
    :cond_2
    new-instance v0, Latn$34;

    invoke-direct {v0, v8, v9}, Latn$34;-><init>(Latn;Lcma;)V

    .line 2203
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[CalendarDataSourceRemote] updateExceptionDate calendarId:"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    .line 2204
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", eventId:"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    const/4 v9, 0x4

    const-string/jumbo v10, ", time:"

    aput-object v10, v1, v9

    const/4 v9, 0x5

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 2203
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2205
    invoke-static {}, Latp;->a()Latp;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Latn$35;

    invoke-direct {v5, v8, v0}, Latn$35;-><init>(Latn;Lcmi;)V

    .line 3100
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Latp;->a(Ljava/lang/String;)V

    .line 3101
    iget-object v0, v1, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->updateExceptionDate(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
