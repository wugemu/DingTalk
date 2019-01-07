.class public final Latn;
.super Ljava/lang/Object;
.source "CalendarDataSourceRemote.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lasp;Lcma;)V
    .locals 6
    .param p1, "reqNonRepeatObject"    # Lasp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasp;",
            "Lcma",
            "<",
            "Lasa;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 468
    .local p2, "listener":Lcma;, "Lcma<Lasa;>;"
    if-eqz p1, :cond_0

    .line 1045
    iget-object v1, p1, Lasp;->a:Ljava/lang/String;

    invoke-static {v1}, Lavz;->a(Ljava/lang/String;)Z

    move-result v1

    .line 468
    if-nez v1, :cond_1

    .line 470
    :cond_0
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laow$f;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string/jumbo v1, "listNonRepeatCalendarByNonRepeatModel "

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "reqNonRepeatObject is null"

    invoke-static {v1, v2, v3}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :goto_0
    return-void

    .line 476
    :cond_1
    new-instance v0, Latn$16;

    invoke-direct {v0, p0, p2}, Latn$16;-><init>(Latn;Lcma;)V

    .line 501
    .local v0, "callback":Lcmi;, "Lcmi<Laqf;>;"
    invoke-static {}, Latp;->a()Latp;

    move-result-object v1

    .line 2024
    new-instance v2, Laqm;

    invoke-direct {v2}, Laqm;-><init>()V

    .line 2025
    iget-object v3, p1, Lasp;->a:Ljava/lang/String;

    iput-object v3, v2, Laqm;->a:Ljava/lang/String;

    .line 2026
    iget-wide v4, p1, Lasp;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Laqm;->b:Ljava/lang/Long;

    .line 2027
    iget-wide v4, p1, Lasp;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Laqm;->c:Ljava/lang/Long;

    .line 501
    new-instance v3, Latn$17;

    invoke-direct {v3, p0, v0}, Latn$17;-><init>(Latn;Lcmi;)V

    .line 2135
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Latp;->a(Ljava/lang/String;)V

    .line 2136
    iget-object v1, v1, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->listNonRepeatCalendarByNonRepeatModel(Laqm;Liyv;)V

    .line 503
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[CalendarDataSourceRemote] listNonRepeatCalendarByFolderId reqNonRepeatObject="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lasp;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method
