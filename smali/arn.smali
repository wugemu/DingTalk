.class public final Larn;
.super Ljava/lang/Object;
.source "TooLong2Manager.java"


# instance fields
.field a:Lapw;

.field private b:Latn;

.field private c:Latu;


# direct methods
.method public constructor <init>(Lapw;Latn;Latu;)V
    .locals 0
    .param p1, "calendarDataCenter"    # Lapw;
    .param p2, "calendarDataSourceRemote"    # Latn;
    .param p3, "dataSourceCalendar"    # Latu;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Larn;->a:Lapw;

    .line 60
    iput-object p2, p0, Larn;->b:Latn;

    .line 61
    iput-object p3, p0, Larn;->c:Latu;

    .line 62
    return-void
.end method

.method static synthetic a(Larn;Ljava/util/List;)J
    .locals 8
    .param p0, "x0"    # Larn;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 42
    .line 13746
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 13748
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasc;

    .line 13749
    if-eqz v0, :cond_2

    .line 13750
    invoke-virtual {v0}, Lasc;->c()Ljava/util/List;

    move-result-object v0

    .line 13751
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13752
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasx;

    .line 13753
    if-eqz v0, :cond_2

    .line 13754
    invoke-virtual {v0}, Lasx;->e()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 13755
    invoke-virtual {v0}, Lasx;->e()J

    move-result-wide v2

    move-wide v0, v2

    :goto_1
    move-wide v2, v0

    .line 13760
    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 13761
    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method static synthetic a(Larn;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Larn;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 42
    invoke-static {p1, p2, p3}, Larn;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private static a(Ljava/lang/String;J)V
    .locals 11
    .param p0, "folderId"    # Ljava/lang/String;
    .param p1, "version"    # J

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 733
    invoke-static {}, Lark;->a()Lark;

    move-result-object v5

    invoke-virtual {v5, p0}, Lark;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 734
    .local v2, "isNoHasGap":Z
    :goto_0
    invoke-static {}, Lark;->a()Lark;

    move-result-object v5

    invoke-virtual {v5, p0}, Lark;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 735
    .local v0, "currentFolderMaxVersion":J
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[TooLong2Manager]trySaveVersion folderId="

    aput-object v6, v5, v4

    aput-object p0, v5, v3

    const-string/jumbo v6, ", isNoHasGap="

    aput-object v6, v5, v8

    .line 736
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, ", currentFolderMaxVersion="

    aput-object v6, v5, v10

    const/4 v6, 0x5

    .line 737
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, ", version="

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 738
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 735
    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    .line 739
    if-eqz v2, :cond_0

    cmp-long v5, p1, v0

    if-lez v5, :cond_0

    .line 740
    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "[TooLong2Manager]trySaveVersion folderId="

    aput-object v6, v5, v4

    aput-object p0, v5, v3

    const-string/jumbo v6, ", maxVersion="

    aput-object v6, v5, v8

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    .line 741
    invoke-static {}, Lark;->a()Lark;

    move-result-object v5

    .line 13049
    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v7, "[FolderExtraManager]setMaxVersion, folderId:"

    aput-object v7, v6, v4

    aput-object p0, v6, v3

    const-string/jumbo v3, ", maxVersion:"

    aput-object v3, v6, v8

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v6}, Lavy;->a([Ljava/lang/String;)V

    .line 13050
    invoke-virtual {v5, p0}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v3

    .line 13051
    if-eqz v3, :cond_0

    .line 13062
    iput-wide p1, v3, Lasj;->b:J

    .line 13055
    invoke-virtual {v5, v3}, Lark;->a(Lasj;)V

    .line 743
    :cond_0
    return-void

    .end local v0    # "currentFolderMaxVersion":J
    .end local v2    # "isNoHasGap":Z
    :cond_1
    move v2, v4

    .line 733
    goto :goto_0
.end method

.method static synthetic b(Larn;Ljava/util/List;)J
    .locals 8
    .param p0, "x0"    # Larn;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 42
    .line 13767
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13769
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasc;

    .line 13770
    if-eqz v0, :cond_0

    .line 14073
    iget-wide v6, v0, Lasc;->e:J

    .line 13773
    cmp-long v1, v6, v2

    if-gez v1, :cond_3

    .line 15073
    iget-wide v0, v0, Lasc;->e:J

    :goto_1
    move-wide v2, v0

    .line 13776
    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 13777
    :cond_2
    return-wide v2

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 12
    .param p1, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 191
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {}, Lavu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 192
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 193
    const/4 v1, 0x2

    const/4 v2, -0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 194
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 195
    .local v4, "startTime":J
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[TooLong2Manager]listCalendarNewest folderId:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", startTime:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 196
    new-instance v7, Laso;

    invoke-direct {v7, p1, v4, v5}, Laso;-><init>(Ljava/lang/String;J)V

    .line 197
    .local v7, "reqNewestObject":Laso;
    iget-object v8, p0, Larn;->b:Latn;

    new-instance v1, Larn$9;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Larn$9;-><init>(Larn;Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    .line 2030
    iget-object v2, v7, Laso;->a:Ljava/lang/String;

    invoke-static {v2}, Lavz;->a(Ljava/lang/String;)Z

    move-result v2

    .line 1553
    if-nez v2, :cond_0

    .line 1555
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v6, Laow$f;->unknown_error:I

    invoke-virtual {v3, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    const-string/jumbo v1, "listCalendarNewestByNewestModel "

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "reqNewestObject is null"

    invoke-static {v1, v2, v3}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :goto_0
    return-void

    .line 1561
    :cond_0
    new-instance v2, Latn$20;

    invoke-direct {v2, v8, v1}, Latn$20;-><init>(Latn;Lcma;)V

    .line 1578
    invoke-static {}, Latp;->a()Latp;

    move-result-object v1

    .line 3022
    new-instance v3, Laql;

    invoke-direct {v3}, Laql;-><init>()V

    .line 3023
    iget-object v6, v7, Laso;->a:Ljava/lang/String;

    iput-object v6, v3, Laql;->a:Ljava/lang/String;

    .line 3024
    iget-wide v10, v7, Laso;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Laql;->b:Ljava/lang/Long;

    .line 1578
    new-instance v6, Latn$21;

    invoke-direct {v6, v8, v2}, Latn$21;-><init>(Latn;Lcmi;)V

    .line 3145
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Latp;->a(Ljava/lang/String;)V

    .line 3146
    iget-object v1, v1, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v1, v3, v6}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->listCalendarNewestByNewestModel(Laql;Liyv;)V

    .line 1580
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[CalendarDataSourceRemote] listCalendarNewestByFolderId reqNewestObject="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v7}, Laso;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "refreshIfNoNewData"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 414
    invoke-static {}, Lavu;->a()Ljava/util/Calendar;

    move-result-object v7

    .line 415
    .local v7, "calendar":Ljava/util/Calendar;
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 416
    const/4 v0, -0x6

    invoke-virtual {v7, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 417
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 418
    .local v2, "curTime":J
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    invoke-virtual {v0, p1}, Lark;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 419
    .local v4, "dateAnchor":J
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v1, v0, v10

    aput-object p1, v0, v11

    const-string/jumbo v1, ", curTime="

    aput-object v1, v0, v8

    .line 420
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string/jumbo v6, ",dateAnchor="

    aput-object v6, v0, v1

    const/4 v1, 0x5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 419
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 421
    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 422
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v1, v0, v10

    aput-object p1, v0, v11

    const-string/jumbo v1, ", curTime > dateAnchor"

    aput-object v1, v0, v8

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 423
    if-eqz p2, :cond_0

    .line 424
    invoke-static {}, Lavh;->a()V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Larn;->a(Ljava/lang/String;JJLjava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "refreshIfNoNewData"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 497
    invoke-static {}, Lark;->a()Lark;

    move-result-object v2

    .line 6106
    invoke-virtual {v2, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v2

    .line 6108
    if-eqz v2, :cond_0

    .line 7082
    iget-boolean v2, v2, Lasj;->e:Z

    .line 6108
    if-eqz v2, :cond_2

    :cond_0
    move v2, v4

    .line 497
    :goto_0
    if-nez v2, :cond_3

    .line 498
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "[TooLong2Manager]makeUpRepeatCalendar folderId:"

    aput-object v5, v2, v3

    aput-object p1, v2, v4

    const/4 v3, 0x2

    const-string/jumbo v4, ", has no more repeat calendar"

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 499
    if-eqz p2, :cond_1

    .line 500
    invoke-static {}, Lavh;->a()V

    .line 506
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 6108
    goto :goto_0

    .line 504
    :cond_3
    invoke-static {}, Lark;->a()Lark;

    move-result-object v2

    .line 7090
    invoke-virtual {v2, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v2

    .line 7092
    if-nez v2, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    .line 505
    .local v0, "repeatCreateAnchor":J
    :goto_2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1, v2}, Larn;->a(Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_1

    .line 8074
    .end local v0    # "repeatCreateAnchor":J
    :cond_4
    iget-wide v0, v2, Lasj;->d:J

    goto :goto_2
.end method


# virtual methods
.method public a(Lasp;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4
    .param p1, "reqNonRepeatObject"    # Lasp;
    .param p3, "counter"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasp;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 605
    if-nez p1, :cond_1

    .line 606
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager] loadCalendarInSectionIfNecessary reqNonRepeatObject is null"

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_2

    .line 610
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]loadCalendarInSectionIfNecessary counter < 0, reqNonRepeatObject="

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lasp;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 611
    if-eqz p2, :cond_0

    .line 612
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Larn;->b:Latn;

    new-instance v1, Larn$4;

    invoke-direct {v1, p0, p3, p2, p1}, Larn$4;-><init>(Larn;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/wukong/Callback;Lasp;)V

    invoke-virtual {v0, p1, v1}, Latn;->a(Lasp;Lcma;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 379
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[TooLong2Manager]clearAllCalendarDataAndReFetch folderId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Larn;->c:Latu;

    invoke-interface {v0, p1}, Latu;->a(Ljava/lang/String;)Z

    .line 381
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    invoke-virtual {v0, p1}, Lark;->e(Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Larn;->b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 383
    return-void
.end method

.method a(Ljava/lang/String;JJLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 8
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "counter"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 432
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const-string/jumbo v2, ", counter="

    aput-object v2, v1, v6

    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string/jumbo v3, ", startTime:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 433
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", endTime:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 432
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 434
    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-gez v1, :cond_0

    .line 435
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const-string/jumbo v2, ", load data 3 times, has more data."

    aput-object v2, v1, v6

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lavh;->a()V

    .line 494
    :goto_0
    return-void

    .line 440
    :cond_0
    new-instance v0, Lasp;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lasp;-><init>(Ljava/lang/String;JJ)V

    .line 441
    .local v0, "reqNonRepeatObject":Lasp;
    iget-object v7, p0, Larn;->b:Latn;

    new-instance v1, Larn$12;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Larn$12;-><init>(Larn;Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v0, v1}, Latn;->a(Lasp;Lcma;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 14
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "createAnchor"    # J
    .param p4, "counter"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v5, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 509
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[TooLong2Manager]makeUpRepeatCalendar folderId:"

    aput-object v4, v3, v10

    aput-object p1, v3, v11

    const-string/jumbo v4, ", counter="

    aput-object v4, v3, v12

    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-gez v3, :cond_0

    .line 511
    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "[TooLong2Manager]makeUpRepeatCalendar folderId:"

    aput-object v4, v3, v10

    aput-object p1, v3, v11

    const-string/jumbo v4, ", load data 3 times, has more data."

    aput-object v4, v3, v12

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lavh;->a()V

    .line 8515
    :goto_0
    return-void

    .line 516
    :cond_0
    new-instance v2, Lasq;

    move-wide/from16 v0, p2

    invoke-direct {v2, p1, v0, v1}, Lasq;-><init>(Ljava/lang/String;J)V

    .line 517
    .local v2, "reqRepeatObject":Lasq;
    iget-object v3, p0, Larn;->b:Latn;

    new-instance v4, Larn$2;

    move-object/from16 v0, p4

    invoke-direct {v4, p0, p1, v0}, Larn$2;-><init>(Larn;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 9030
    iget-object v5, v2, Lasq;->a:Ljava/lang/String;

    invoke-static {v5}, Lavz;->a(Ljava/lang/String;)Z

    move-result v5

    .line 8510
    if-nez v5, :cond_1

    .line 8512
    const-string/jumbo v3, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Laow$f;->unknown_error:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 8514
    const-string/jumbo v3, "listRepeatCalendarByRepeatModel "

    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "reqRepeatObject is null"

    invoke-static {v3, v4, v5}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8518
    :cond_1
    new-instance v5, Latn$18;

    invoke-direct {v5, v3, v4}, Latn$18;-><init>(Latn;Lcma;)V

    .line 8543
    invoke-static {}, Latp;->a()Latp;

    move-result-object v4

    .line 10022
    new-instance v6, Laqn;

    invoke-direct {v6}, Laqn;-><init>()V

    .line 10023
    iget-object v7, v2, Lasq;->a:Ljava/lang/String;

    iput-object v7, v6, Laqn;->a:Ljava/lang/String;

    .line 10024
    iget-wide v8, v2, Lasq;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Laqn;->b:Ljava/lang/Long;

    .line 8543
    new-instance v7, Latn$19;

    invoke-direct {v7, v3, v5}, Latn$19;-><init>(Latn;Lcmi;)V

    .line 10140
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Latp;->a(Ljava/lang/String;)V

    .line 10141
    iget-object v3, v4, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v3, v6, v7}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->listRepeatCalendarByRepeatModel(Laqn;Liyv;)V

    .line 8546
    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "[CalendarDataSourceRemote] listRepeatCalenderByFolderId reqRepeatObject="

    aput-object v4, v3, v10

    invoke-virtual {v2}, Lasq;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v5, 0x1

    .line 141
    invoke-static {}, Lark;->a()Lark;

    move-result-object v2

    invoke-virtual {v2, p1}, Lark;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 142
    .local v0, "maxVersion":J
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[TooLong2Manager]fetchCalendarAfterTl2 folderId:"

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, ", maxVersion:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 143
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 144
    new-instance v2, Larn$7;

    invoke-direct {v2, p0, p2}, Larn$7;-><init>(Larn;Lcom/alibaba/wukong/Callback;)V

    invoke-direct {p0, p1, v2}, Larn;->b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 185
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v2, Larn$8;

    invoke-direct {v2, p0, p2}, Larn$8;-><init>(Larn;Lcom/alibaba/wukong/Callback;)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {p0, p1, v2, v3}, Larn;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 10
    .param p1, "folderId"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 301
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[TooLong2Manager]listCalendarByMaxVersion folderId:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", num="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-gez v3, :cond_1

    .line 303
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[TooLong2Manager]listCalendarByMaxVersion folderId:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", atomicCount==0, client lost data."

    aput-object v5, v3, v4

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, p1}, Larn;->a(Ljava/lang/String;)V

    .line 305
    if-eqz p2, :cond_0

    .line 306
    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "[TooLong2Manager]listCalendarByMaxVersion  atomicCount==0, client lost data."

    invoke-interface {p2, v3, v4}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3200
    :cond_0
    const-string/jumbo v3, "tooLong2_load_2_has_more_data"

    invoke-static {v3}, Lavw;->a(Ljava/lang/String;)V

    .line 3592
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-static {}, Lark;->a()Lark;

    move-result-object v3

    invoke-virtual {v3, p1}, Lark;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 313
    .local v0, "maxVersion":J
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[TooLong2Manager]listCalendarByMaxVersion folderId:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", maxVersion="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 314
    new-instance v2, Lasr;

    invoke-direct {v2, p1, v0, v1}, Lasr;-><init>(Ljava/lang/String;J)V

    .line 315
    .local v2, "reqVersionObject":Lasr;
    iget-object v3, p0, Larn;->b:Latn;

    new-instance v4, Larn$10;

    invoke-direct {v4, p0, p1, p2, p3}, Larn$10;-><init>(Larn;Ljava/lang/String;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 4030
    iget-object v5, v2, Lasr;->a:Ljava/lang/String;

    invoke-static {v5}, Lavz;->a(Ljava/lang/String;)Z

    move-result v5

    .line 3587
    if-nez v5, :cond_2

    .line 3589
    const-string/jumbo v3, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Laow$f;->unknown_error:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3591
    const-string/jumbo v3, "listCalendarByVersionModel "

    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "reqVersionObject is null"

    invoke-static {v3, v4, v5}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3595
    :cond_2
    new-instance v5, Latn$22;

    invoke-direct {v5, v3, v4}, Latn$22;-><init>(Latn;Lcma;)V

    .line 3612
    invoke-static {}, Latp;->a()Latp;

    move-result-object v4

    .line 5022
    new-instance v6, Laqo;

    invoke-direct {v6}, Laqo;-><init>()V

    .line 5023
    iget-object v7, v2, Lasr;->a:Ljava/lang/String;

    iput-object v7, v6, Laqo;->a:Ljava/lang/String;

    .line 5024
    iget-wide v8, v2, Lasr;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Laqo;->b:Ljava/lang/Long;

    .line 3612
    new-instance v7, Latn$24;

    invoke-direct {v7, v3, v5}, Latn$24;-><init>(Latn;Lcmi;)V

    .line 5150
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Latp;->a(Ljava/lang/String;)V

    .line 5151
    iget-object v3, v4, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v3, v6, v7}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->listCalendarByVersionModel(Laqo;Liyv;)V

    .line 3615
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[CalendarDataSourceRemote] listCalenderByFolderId reqVersionObject="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "refreshIfNoNewData"    # Z

    .prologue
    .line 386
    invoke-static {}, Larl;->a()Larl;

    invoke-static {}, Larl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-static {}, Larl;->a()Larl;

    invoke-static {}, Larl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    invoke-direct {p0, p1, p2}, Larn;->c(Ljava/lang/String;Z)V

    .line 389
    invoke-direct {p0, p1, p2}, Larn;->b(Ljava/lang/String;Z)V

    .line 411
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    invoke-virtual {v0, p1}, Lark;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    new-instance v0, Larn$11;

    invoke-direct {v0, p0}, Larn$11;-><init>(Larn;)V

    invoke-virtual {p0, p1, v0}, Larn;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 407
    :cond_2
    invoke-direct {p0, p1, p2}, Larn;->c(Ljava/lang/String;Z)V

    .line 408
    invoke-direct {p0, p1, p2}, Larn;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lasc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Larq;",
            ">;",
            "Ljava/util/List",
            "<",
            "Larr;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 682
    .local p1, "calendarObjects":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    .local p2, "calendarChangeObjectList":Ljava/util/List;, "Ljava/util/List<Larq;>;"
    .local p3, "calendarChangeV2ObjectList":Ljava/util/List;, "Ljava/util/List<Larr;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 684
    .local v5, "folderIdMaxVersionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 685
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lasc;

    .line 686
    .local v2, "calendarObject":Lasc;
    if-eqz v2, :cond_0

    .line 11077
    iget-wide v6, v2, Lasc;->f:J

    .line 11188
    .local v6, "version":J
    iget-object v4, v2, Lasc;->n:Ljava/lang/String;

    .line 691
    .local v4, "folderId":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v6, v10

    if-lez v8, :cond_0

    .line 692
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 697
    .end local v2    # "calendarObject":Lasc;
    .end local v4    # "folderId":Ljava/lang/String;
    .end local v6    # "version":J
    :cond_2
    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 698
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larq;

    .line 699
    .local v0, "calendarChangeObject":Larq;
    if-eqz v0, :cond_3

    .line 12035
    iget-wide v6, v0, Larq;->c:J

    .line 12039
    .restart local v6    # "version":J
    iget-object v4, v0, Larq;->d:Ljava/lang/String;

    .line 704
    .restart local v4    # "folderId":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v6, v10

    if-lez v8, :cond_3

    .line 705
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 710
    .end local v0    # "calendarChangeObject":Larq;
    .end local v4    # "folderId":Ljava/lang/String;
    .end local v6    # "version":J
    :cond_5
    if-eqz p3, :cond_8

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 711
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Larr;

    .line 712
    .local v1, "calendarChangeV2Object":Larr;
    if-eqz v1, :cond_6

    .line 13024
    iget-wide v6, v1, Larr;->b:J

    .line 13036
    .restart local v6    # "version":J
    iget-object v4, v1, Larr;->e:Ljava/lang/String;

    .line 717
    .restart local v4    # "folderId":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v6, v10

    if-lez v8, :cond_6

    .line 718
    :cond_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 723
    .end local v1    # "calendarChangeV2Object":Larr;
    .end local v4    # "folderId":Ljava/lang/String;
    .end local v6    # "version":J
    :cond_8
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "trySaveVersion  folderIdMaxVersionMap size="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 724
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 725
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 728
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v8, v12, v13}, Larn;->a(Ljava/lang/String;J)V

    goto :goto_3

    .line 730
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_a
    return-void
.end method
