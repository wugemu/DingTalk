.class final Latf$6;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latf;->a(JLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Latf;


# direct methods
.method constructor <init>(Latf;JLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 362
    iput-object p1, p0, Latf$6;->c:Latf;

    iput-wide p2, p0, Latf$6;->a:J

    iput-object p4, p0, Latf$6;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 365
    iget-object v0, p0, Latf$6;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-wide v2, p0, Latf$6;->a:J

    iget-object v1, p0, Latf$6;->b:Lcom/alibaba/wukong/Callback;

    .line 1679
    iget-object v4, v0, Lapw;->c:Latn;

    new-instance v5, Lapw$13;

    invoke-direct {v5, v0, v1}, Lapw$13;-><init>(Lapw;Lcom/alibaba/wukong/Callback;)V

    .line 2132
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 2134
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    const-string/jumbo v0, "delete calendar failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "calendarId <= 0"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    :goto_0
    return-void

    .line 2140
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2142
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->dt_errmsg_network_abnormal:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2147
    :cond_1
    new-instance v0, Latn$32;

    invoke-direct {v0, v4, v5}, Latn$32;-><init>(Latn;Lcma;)V

    .line 2163
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[CalendarDataSourceRemote] deleteCalendar calendarId:"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2164
    invoke-static {}, Latp;->a()Latp;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Latn$33;

    invoke-direct {v3, v4, v0}, Latn$33;-><init>(Latn;Lcmi;)V

    .line 3095
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Latp;->a(Ljava/lang/String;)V

    .line 3096
    iget-object v0, v1, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->deleteCalendar(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
