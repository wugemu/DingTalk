.class public final Lapw;
.super Ljava/lang/Object;
.source "CalendarDataCenter.java"


# instance fields
.field public a:Latu;

.field public b:Lauh;

.field public c:Latn;

.field public d:Larn;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Laui;

    invoke-direct {v0}, Laui;-><init>()V

    iput-object v0, p0, Lapw;->b:Lauh;

    .line 83
    new-instance v0, Latn;

    invoke-direct {v0}, Latn;-><init>()V

    iput-object v0, p0, Lapw;->c:Latn;

    .line 84
    new-instance v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;-><init>()V

    iput-object v0, p0, Lapw;->a:Latu;

    .line 85
    new-instance v0, Larn;

    iget-object v1, p0, Lapw;->c:Latn;

    iget-object v2, p0, Lapw;->a:Latu;

    invoke-direct {v0, p0, v1, v2}, Larn;-><init>(Lapw;Latn;Latu;)V

    iput-object v0, p0, Lapw;->d:Larn;

    .line 86
    return-void
.end method

.method private a(JJLjava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V
    .locals 15
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lasl;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p5, "queryFolderIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "queryFolderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lasl;>;"
    .local p7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;>;"
    .local p8, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    if-nez p7, :cond_0

    .line 35579
    :goto_0
    return-void

    .line 483
    :cond_0
    if-eqz p5, :cond_1

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 484
    :cond_1
    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "[CalendarDataCenter]loadCalendarInSectionIfNecessary startTime="

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 485
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string/jumbo v4, ", endTime="

    aput-object v4, v3, v2

    const/4 v2, 0x3

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string/jumbo v4, ", data.size="

    aput-object v4, v3, v2

    const/4 v4, 0x5

    if-eqz p8, :cond_2

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v3, v4

    .line 484
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 486
    invoke-interface/range {p7 .. p8}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 485
    :cond_2
    const-string/jumbo v2, "0"

    goto :goto_1

    .line 490
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 491
    .local v5, "folderId":Ljava/lang/String;
    iget-object v13, p0, Lapw;->d:Larn;

    new-instance v2, Lapw$9;

    move-object v3, p0

    move-object/from16 v4, p6

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lapw$9;-><init>(Lapw;Ljava/util/Map;Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    .line 35564
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 35565
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lapv;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 35569
    :cond_4
    invoke-static {}, Lark;->a()Lark;

    move-result-object v3

    invoke-virtual {v3, v5}, Lark;->c(Ljava/lang/String;)J

    move-result-wide v8

    .line 35570
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "[TooLong2Manager]loadCalendarInSectionIfNecessary folderId:"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v6, ", startTime:"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 35571
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v6, ", endTime:"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    .line 35572
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v6, ", nonRepeatStartAnchor:"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    .line 35573
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 35570
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 35575
    cmp-long v3, v8, p1

    if-gez v3, :cond_5

    .line 35576
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "[TooLong2Manager]loadCalendarInSectionIfNecessary folderId:"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v6, ", nonRepeatStartAnchor < startTime "

    aput-object v6, v3, v4

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 35578
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lapv;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 35582
    :cond_5
    const-wide/32 v6, 0x5265c00

    sub-long v6, p1, v6

    .line 35583
    const-wide/32 v10, 0x5265c00

    add-long v10, v10, p3

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 35584
    new-instance v4, Lasp;

    invoke-direct/range {v4 .. v9}, Lasp;-><init>(Ljava/lang/String;JJ)V

    .line 35585
    new-instance v3, Larn$3;

    invoke-direct {v3, v13, v2}, Larn$3;-><init>(Larn;Lapv;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v13, v4, v3, v2}, Larn;->a(Lasp;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lapw;JJLjava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p0, "x0"    # Lapw;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/util/List;
    .param p6, "x4"    # Ljava/util/Map;
    .param p7, "x5"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 72
    .line 37470
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lapw;->a(JJLjava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lapw;JJLjava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lapw;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/util/List;
    .param p6, "x4"    # Ljava/util/Map;
    .param p7, "x5"    # Lcom/alibaba/wukong/Callback;
    .param p8, "x6"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-direct/range {p0 .. p8}, Lapw;->a(JJLjava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 4
    .param p1, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 520
    iget-object v0, p0, Lapw;->d:Larn;

    .line 36069
    invoke-static {}, Larl;->a()Larl;

    invoke-static {}, Larl;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Larn$1;

    invoke-direct {v2, v0, p1}, Larn$1;-><init>(Larn;Lcom/alibaba/wukong/sync/SyncAck;)V

    invoke-virtual {v0, v1, v2}, Larn;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 36100
    new-instance v1, Larn$5;

    invoke-direct {v1, v0}, Larn$5;-><init>(Larn;)V

    .line 36112
    invoke-static {}, Larl;->a()Larl;

    move-result-object v0

    .line 36121
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    new-instance v3, Larl$10;

    invoke-direct {v3, v0, v1}, Larl$10;-><init>(Larl;Lapv;)V

    invoke-virtual {v2, v3}, Latf;->b(Ljava/lang/Runnable;)V

    .line 521
    return-void
.end method

.method public final a(Ljava/util/List;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lasc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "calendarObjects":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 123
    :cond_0
    const/16 v20, 0x1

    .line 214
    :goto_0
    return v20

    .line 126
    :cond_1
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "[dealWithCalendar]totalSize:"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lavy;->a([Ljava/lang/String;)V

    .line 128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v5, "calendarDBQueryParamList":Ljava/util/List;, "Ljava/util/List<Lauj;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lasc;

    .line 130
    .local v9, "calendarObject":Lasc;
    if-eqz v9, :cond_2

    .line 133
    new-instance v21, Lauj;

    invoke-virtual {v9}, Lasc;->b()J

    move-result-wide v22

    .line 1188
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 133
    invoke-direct/range {v21 .. v24}, Lauj;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    .end local v9    # "calendarObject":Lasc;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lapw;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v16

    .line 136
    .local v16, "oldCalendarMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lfp<Lasc;>;>;"
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v20, 0x0

    const-string/jumbo v22, "[dealWithCalendar]localAllCalendarObjects size:"

    aput-object v22, v21, v20

    const/16 v22, 0x1

    if-nez v16, :cond_5

    const-string/jumbo v20, "0"

    .line 137
    :goto_2
    aput-object v20, v21, v22

    .line 136
    invoke-static/range {v21 .. v21}, Lavy;->a([Ljava/lang/String;)V

    .line 139
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v11, "calendarsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lfp<Lasc;>;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v13, "calendarsToSave":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v8, "calendarIdsToDelete":Ljava/util/List;, "Ljava/util/List<Lauj;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_4
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lasc;

    .line 143
    .restart local v9    # "calendarObject":Lasc;
    if-eqz v9, :cond_4

    .line 147
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "[dealWithCalendar] calendarObject="

    aput-object v23, v20, v22

    const/16 v22, 0x1

    invoke-virtual {v9}, Lasc;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    invoke-static/range {v20 .. v20}, Lavy;->a([Ljava/lang/String;)V

    .line 148
    if-eqz v16, :cond_6

    .line 2188
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 149
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 3188
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 150
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lfp;

    invoke-virtual {v9}, Lasc;->b()J

    move-result-wide v22

    .line 4096
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 150
    if-eqz v20, :cond_6

    .line 4188
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 151
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lfp;

    invoke-virtual {v9}, Lasc;->b()J

    move-result-wide v22

    .line 5096
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 151
    check-cast v20, Lasc;

    .line 6077
    move-object/from16 v0, v20

    iget-wide v0, v0, Lasc;->f:J

    move-wide/from16 v18, v0

    .line 7077
    .local v18, "oldVersion":J
    iget-wide v0, v9, Lasc;->f:J

    move-wide/from16 v22, v0

    .line 152
    cmp-long v20, v18, v22

    if-ltz v20, :cond_6

    .line 153
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "[dealWithCalendar] calendarId:"

    aput-object v23, v20, v22

    const/16 v22, 0x1

    .line 154
    invoke-virtual {v9}, Lasc;->b()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    const/16 v22, 0x2

    const-string/jumbo v23, ",folderId:"

    aput-object v23, v20, v22

    const/16 v22, 0x3

    .line 7188
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 156
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    const/16 v22, 0x4

    const-string/jumbo v23, ",oldVersion:"

    aput-object v23, v20, v22

    const/16 v22, 0x5

    .line 158
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    const/16 v22, 0x6

    const-string/jumbo v23, ">= newVersion:"

    aput-object v23, v20, v22

    const/16 v22, 0x7

    .line 8077
    iget-wide v0, v9, Lasc;->f:J

    move-wide/from16 v24, v0

    .line 160
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    .line 153
    invoke-static/range {v20 .. v20}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 137
    .end local v8    # "calendarIdsToDelete":Ljava/util/List;, "Ljava/util/List<Lauj;>;"
    .end local v9    # "calendarObject":Lasc;
    .end local v11    # "calendarsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lfp<Lasc;>;>;"
    .end local v13    # "calendarsToSave":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    .end local v18    # "oldVersion":J
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 166
    .restart local v8    # "calendarIdsToDelete":Ljava/util/List;, "Ljava/util/List<Lauj;>;"
    .restart local v9    # "calendarObject":Lasc;
    .restart local v11    # "calendarsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lfp<Lasc;>;>;"
    .restart local v13    # "calendarsToSave":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    :cond_6
    invoke-virtual {v9}, Lasc;->b()J

    move-result-wide v6

    .line 8188
    .local v6, "calendarId":J
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 167
    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_7

    .line 9188
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 168
    new-instance v22, Lfp;

    invoke-direct/range {v22 .. v22}, Lfp;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10188
    :cond_7
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 171
    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfp;

    .line 11096
    .local v10, "calendarObjectLongSparseArray":Lfp;, "Lfp<Lasc;>;"
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v10, v6, v7, v0}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 172
    if-nez v20, :cond_8

    .line 173
    invoke-virtual {v10, v6, v7, v9}, Lfp;->b(JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 12096
    :cond_8
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v10, v6, v7, v0}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 175
    check-cast v20, Lasc;

    .line 13077
    move-object/from16 v0, v20

    iget-wide v0, v0, Lasc;->f:J

    move-wide/from16 v22, v0

    .line 14077
    iget-wide v0, v9, Lasc;->f:J

    move-wide/from16 v24, v0

    .line 175
    cmp-long v20, v22, v24

    if-gez v20, :cond_9

    .line 176
    invoke-virtual {v10, v6, v7, v9}, Lfp;->b(JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 178
    :cond_9
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "[dealWithCalendar] calendarId:"

    aput-object v23, v20, v22

    const/16 v22, 0x1

    .line 179
    invoke-virtual {v9}, Lasc;->b()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    const/16 v22, 0x2

    const-string/jumbo v23, ",folderId:"

    aput-object v23, v20, v22

    const/16 v22, 0x3

    .line 14188
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 180
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    const/16 v22, 0x4

    const-string/jumbo v23, ",discard: calendarObject:"

    aput-object v23, v20, v22

    const/16 v22, 0x5

    .line 181
    invoke-virtual {v9}, Lasc;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    .line 178
    invoke-static/range {v20 .. v20}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 187
    .end local v6    # "calendarId":J
    .end local v9    # "calendarObject":Lasc;
    .end local v10    # "calendarObjectLongSparseArray":Lfp;, "Lfp<Lasc;>;"
    :cond_a
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    .line 188
    .local v12, "calendarsMapValue":Ljava/util/Collection;, "Ljava/util/Collection<Lfp<Lasc;>;>;"
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfp;

    .line 189
    .restart local v10    # "calendarObjectLongSparseArray":Lfp;, "Lfp<Lasc;>;"
    if-eqz v10, :cond_b

    .line 193
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    invoke-virtual {v10}, Lfp;->a()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_b

    .line 194
    invoke-virtual {v10, v15}, Lfp;->b(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lasc;

    .line 195
    .restart local v9    # "calendarObject":Lasc;
    if-eqz v9, :cond_c

    .line 15081
    iget v0, v9, Lasc;->g:I

    move/from16 v21, v0

    .line 199
    sget-object v22, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->ADD_OR_UPDATE:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->getValue()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 200
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_c
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 16081
    :cond_d
    iget v0, v9, Lasc;->g:I

    move/from16 v21, v0

    .line 201
    sget-object v22, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->DELETE:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->getValue()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 202
    new-instance v4, Lauj;

    invoke-virtual {v9}, Lasc;->b()J

    move-result-wide v22

    .line 16188
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 202
    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-direct {v4, v0, v1, v2}, Lauj;-><init>(JLjava/lang/String;)V

    .line 203
    .local v4, "calendarDBQueryParam":Lauj;
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 208
    .end local v4    # "calendarDBQueryParam":Lauj;
    .end local v9    # "calendarObject":Lasc;
    .end local v10    # "calendarObjectLongSparseArray":Lfp;, "Lfp<Lasc;>;"
    .end local v15    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lapw;->a:Latu;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Latu;->a(Ljava/util/List;)I

    move-result v17

    .line 209
    .local v17, "saveSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lapw;->a:Latu;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Latu;->b(Ljava/util/List;)I

    move-result v14

    .line 210
    .local v14, "deleteSize":I
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "[dealWithCalendar]calendarsToSave:"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, ", saveSuccessSize:"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    .line 211
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string/jumbo v22, ", calendarIdsToDelete:"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    .line 212
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string/jumbo v22, ", deleteSuccessSize:"

    aput-object v22, v20, v21

    const/16 v21, 0x7

    .line 213
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 210
    invoke-static/range {v20 .. v20}, Lavy;->a([Ljava/lang/String;)V

    .line 214
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ne v14, v0, :cond_f

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lasg;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "calendarShareActionObjectList":Ljava/util/List;, "Ljava/util/List<Lasg;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 278
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "[dealWithCalendarShareActionEvent]totalSize:"

    aput-object v2, v1, v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasg;

    .line 284
    .local v0, "calendarShareActionObject":Lasg;
    if-eqz v0, :cond_2

    .line 17017
    iget v2, v0, Lasg;->a:I

    .line 287
    if-ne v2, v8, :cond_2

    .line 17021
    iget-object v2, v0, Lasg;->b:Ljava/lang/String;

    .line 17549
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17550
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "[clearFolderSelectExtra] folderId is null"

    aput-object v3, v2, v6

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_1

    .line 17553
    :cond_3
    invoke-static {}, Larl;->a()Larl;

    move-result-object v3

    .line 18247
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 18251
    invoke-static {}, Latf;->a()Latf;

    move-result-object v4

    new-instance v5, Larl$16;

    invoke-direct {v5, v3, v2}, Larl$16;-><init>(Larl;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Latf;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 291
    .end local v0    # "calendarShareActionObject":Lasg;
    :cond_4
    new-instance v1, Lapw$1;

    invoke-direct {v1, p0}, Lapw$1;-><init>(Lapw;)V

    .line 18746
    invoke-static {}, Larl;->a()Larl;

    move-result-object v2

    invoke-virtual {v2, v1}, Larl;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public c(Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Larr;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 328
    .local p1, "calendarChangeV2Objects":Ljava/util/List;, "Ljava/util/List<Larr;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 329
    :cond_0
    const/4 v8, 0x1

    .line 376
    :goto_0
    return v8

    .line 332
    :cond_1
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[dealWithCalendarChangeV2Event]totalSize:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v1, "calendarDBQueryParamList":Ljava/util/List;, "Ljava/util/List<Lauj;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larr;

    .line 336
    .local v0, "calendarChangeV2Object":Larr;
    if-eqz v0, :cond_2

    .line 339
    new-instance v9, Lauj;

    .line 19020
    iget-wide v10, v0, Larr;->a:J

    .line 19036
    iget-object v12, v0, Larr;->e:Ljava/lang/String;

    .line 339
    invoke-direct {v9, v10, v11, v12}, Lauj;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    .end local v0    # "calendarChangeV2Object":Larr;
    :cond_3
    invoke-virtual {p0, v1}, Lapw;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 342
    .local v4, "oldCalendarMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lfp<Lasc;>;>;"
    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v10, "[dealWithCalendarChangeV2Event]localAllCalendarObjects size:"

    aput-object v10, v9, v8

    const/4 v10, 0x1

    if-nez v4, :cond_5

    const-string/jumbo v8, "0"

    .line 343
    :goto_2
    aput-object v8, v9, v10

    .line 342
    invoke-static {v9}, Lavy;->a([Ljava/lang/String;)V

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v2, "calendarsToSave":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larr;

    .line 347
    .restart local v0    # "calendarChangeV2Object":Larr;
    if-eqz v0, :cond_4

    .line 350
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[dealWithCalendarChangeV2Event]calendarId:"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    .line 20020
    iget-wide v12, v0, Larr;->a:J

    .line 350
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string/jumbo v11, ", calendar version:"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    .line 20024
    iget-wide v12, v0, Larr;->b:J

    .line 351
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    .line 350
    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 352
    if-eqz v4, :cond_4

    .line 20036
    iget-object v8, v0, Larr;->e:Ljava/lang/String;

    .line 353
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 21036
    iget-object v8, v0, Larr;->e:Ljava/lang/String;

    .line 354
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfp;

    .line 22020
    iget-wide v10, v0, Larr;->a:J

    .line 22096
    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v12}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 354
    if-eqz v8, :cond_4

    .line 23036
    iget-object v8, v0, Larr;->e:Ljava/lang/String;

    .line 355
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfp;

    .line 24020
    iget-wide v10, v0, Larr;->a:J

    .line 24096
    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v12}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 355
    check-cast v8, Lasc;

    .line 25077
    iget-wide v6, v8, Lasc;->f:J

    .line 26036
    .local v6, "oldVersion":J
    iget-object v8, v0, Larr;->e:Ljava/lang/String;

    .line 356
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfp;

    .line 27020
    iget-wide v10, v0, Larr;->a:J

    .line 27096
    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v12}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 356
    check-cast v3, Lasc;

    .line 28024
    .local v3, "localCalendarObject":Lasc;
    iget-wide v10, v0, Larr;->b:J

    .line 357
    cmp-long v8, v6, v10

    if-ltz v8, :cond_6

    .line 358
    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[dealWithCalendarChangeV2Event] calendarId:"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    .line 29020
    iget-wide v12, v0, Larr;->a:J

    .line 359
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string/jumbo v11, ",folderId:"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    .line 29036
    iget-object v11, v0, Larr;->e:Ljava/lang/String;

    .line 361
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x4

    const-string/jumbo v11, ",oldVersion:"

    aput-object v11, v8, v10

    const/4 v10, 0x5

    .line 363
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x6

    const-string/jumbo v11, ",newVersion:"

    aput-object v11, v8, v10

    const/4 v10, 0x7

    .line 30024
    iget-wide v12, v0, Larr;->b:J

    .line 365
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    .line 358
    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 343
    .end local v0    # "calendarChangeV2Object":Larr;
    .end local v2    # "calendarsToSave":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    .end local v3    # "localCalendarObject":Lasc;
    .end local v6    # "oldVersion":J
    :cond_5
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 30276
    .restart local v0    # "calendarChangeV2Object":Larr;
    .restart local v2    # "calendarsToSave":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    .restart local v3    # "localCalendarObject":Lasc;
    .restart local v6    # "oldVersion":J
    :cond_6
    if-eqz v0, :cond_7

    .line 30279
    iget-wide v10, v3, Lasc;->f:J

    .line 31024
    iget-wide v12, v0, Larr;->b:J

    .line 30279
    cmp-long v8, v10, v12

    if-gez v8, :cond_7

    .line 31028
    iget v8, v0, Larr;->c:I

    .line 30282
    iput v8, v3, Lasc;->i:I

    .line 31032
    iget v8, v0, Larr;->d:I

    .line 30283
    iput v8, v3, Lasc;->j:I

    .line 32024
    iget-wide v10, v0, Larr;->b:J

    .line 30284
    iput-wide v10, v3, Lasc;->f:J

    .line 369
    :cond_7
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 373
    .end local v0    # "calendarChangeV2Object":Larr;
    .end local v3    # "localCalendarObject":Lasc;
    .end local v6    # "oldVersion":J
    :cond_8
    iget-object v8, p0, Lapw;->a:Latu;

    invoke-interface {v8, v2}, Latu;->a(Ljava/util/List;)I

    move-result v5

    .line 374
    .local v5, "saveSize":I
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[dealWithCalendarChangeV2Event]calendarsToSave:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", saveSuccessSize:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 375
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 374
    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 376
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v5, v8, :cond_9

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public d(Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lauj;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfp",
            "<",
            "Lasc;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "calendarDBQueryParamList":Ljava/util/List;, "Ljava/util/List<Lauj;>;"
    const/4 v6, 0x0

    .line 380
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v2, v6

    .line 418
    :cond_0
    :goto_0
    return-object v2

    .line 385
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 386
    .local v2, "localMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lfp<Lasc;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x1f4

    if-lt v7, v8, :cond_5

    .line 387
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 388
    .local v1, "folderIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lauj;

    .line 389
    .local v3, "param":Lauj;
    if-eqz v3, :cond_2

    .line 33023
    iget-object v8, v3, Lauj;->b:Ljava/lang/String;

    .line 392
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 34023
    iget-object v8, v3, Lauj;->b:Ljava/lang/String;

    .line 395
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    .end local v3    # "param":Lauj;
    :cond_3
    iget-object v7, p0, Lapw;->a:Latu;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Latu;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    .line 402
    .end local v1    # "folderIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "temp":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    :goto_2
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    move-object v2, v6

    .line 403
    goto :goto_0

    .line 399
    .end local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    :cond_5
    iget-object v7, p0, Lapw;->a:Latu;

    invoke-interface {v7, p1}, Latu;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .restart local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    goto :goto_2

    .line 406
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasc;

    .line 407
    .local v0, "calendarObject":Lasc;
    if-eqz v0, :cond_7

    .line 34188
    iget-object v7, v0, Lasc;->n:Ljava/lang/String;

    .line 410
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfp;

    .line 411
    .local v4, "ret":Lfp;, "Lfp<Lasc;>;"
    if-nez v4, :cond_8

    .line 412
    new-instance v4, Lfp;

    .end local v4    # "ret":Lfp;, "Lfp<Lasc;>;"
    invoke-direct {v4}, Lfp;-><init>()V

    .line 414
    .restart local v4    # "ret":Lfp;, "Lfp<Lasc;>;"
    :cond_8
    invoke-virtual {v0}, Lasc;->b()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9, v0}, Lfp;->b(JLjava/lang/Object;)V

    .line 35188
    iget-object v7, v0, Lasc;->n:Ljava/lang/String;

    .line 415
    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public e(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 951
    .local p1, "originIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 952
    const/4 v3, 0x0

    .line 978
    :cond_0
    :goto_0
    return-object v3

    .line 955
    :cond_1
    iget-object v5, p0, Lapw;->b:Lauh;

    invoke-interface {v5, p1}, Lauh;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 956
    .local v1, "entryVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/db/entry/EntryVerification;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v3, p1

    .line 957
    goto :goto_0

    .line 960
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 962
    .local v4, "verifiedIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    .line 963
    .local v0, "entryVerification":Lcom/alibaba/android/calendar/db/entry/EntryVerification;
    if-eqz v0, :cond_4

    .line 966
    iget-wide v6, v0, Lcom/alibaba/android/calendar/db/entry/EntryVerification;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 969
    .end local v0    # "entryVerification":Lcom/alibaba/android/calendar/db/entry/EntryVerification;
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 970
    .local v2, "id":Ljava/lang/Long;
    if-eqz v2, :cond_6

    .line 973
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 974
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public f(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "originIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 982
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 1014
    :cond_0
    :goto_0
    return-object v4

    .line 986
    :cond_1
    iget-object v6, p0, Lapw;->b:Lauh;

    invoke-interface {v6, p1}, Lauh;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 987
    .local v2, "entryVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/db/entry/EntryVerification;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move-object v4, v5

    .line 988
    goto :goto_0

    .line 991
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Lfp;

    invoke-direct {v1}, Lfp;-><init>()V

    .line 994
    .local v1, "entryVerificationLongSparseArray":Lfp;, "Lfp<Lcom/alibaba/android/calendar/db/entry/EntryVerification;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    .line 995
    .local v0, "entryVerification":Lcom/alibaba/android/calendar/db/entry/EntryVerification;
    if-eqz v0, :cond_4

    .line 998
    iget-wide v8, v0, Lcom/alibaba/android/calendar/db/entry/EntryVerification;->mId:J

    invoke-virtual {v1, v8, v9, v0}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_1

    .line 1001
    .end local v0    # "entryVerification":Lcom/alibaba/android/calendar/db/entry/EntryVerification;
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1002
    .local v3, "id":Ljava/lang/Long;
    if-eqz v3, :cond_6

    .line 1005
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 37096
    invoke-virtual {v1, v8, v9, v5}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1005
    check-cast v0, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    .line 1006
    .restart local v0    # "entryVerification":Lcom/alibaba/android/calendar/db/entry/EntryVerification;
    if-eqz v0, :cond_6

    .line 1009
    iget-boolean v7, v0, Lcom/alibaba/android/calendar/db/entry/EntryVerification;->mIsValid:Z

    if-nez v7, :cond_6

    .line 1010
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
