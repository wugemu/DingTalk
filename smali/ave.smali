.class final Lave;
.super Lcom/alibaba/wukong/sync/SyncPackageDataHandler;
.source "CalendarSyncDataHandler.java"


# static fields
.field private static a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v2, 0x1b58

    const-class v3, Laqg;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/reflect/Type;)V

    .line 40
    sput-object v0, Lave;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x1b59

    const-class v2, Laqb;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 41
    sget-object v0, Lave;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x1b5b

    const-class v2, Laqc;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 42
    sget-object v0, Lave;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x1b5a

    const-class v2, Laqa;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 43
    sget-object v0, Lave;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x36b0

    const-class v2, Laqy;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 44
    sget-object v0, Lave;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x1b63

    const-class v2, Laqq;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 45
    sget-object v0, Lave;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x1b64

    const-class v2, Laqg;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 46
    sget-object v0, Lave;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x1b65

    const-class v2, Laqb;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lave;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/sync/SyncPackageDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 24
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/sync/SyncData;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/sync/SyncData;>;"
    const/16 v19, 0x0

    .line 58
    .local v19, "trace":Lavx;
    :try_start_0
    const-string/jumbo v2, "[TAG] SyncCalendar"

    invoke-static {v2}, Lavy;->a(Ljava/lang/String;)Lavx;

    move-result-object v19

    .line 59
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v8, "CalendarSyncDataHandler onReceived list is null or empty."

    aput-object v8, v2, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    .line 61
    const-string/jumbo v2, "[CalendarSyncDataHandler] nReceived list is null or empty. ack success."

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lavf;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-static/range {v19 .. v19}, Lavy;->a(Lavx;)V

    .line 164
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v8, "data size="

    aput-object v8, v2, v3

    const/4 v3, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v4, "calendarObjectList":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v5, "calendarChangeObjectList":Ljava/util/List;, "Ljava/util/List<Larq;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v6, "calendarChangeV2ObjectList":Ljava/util/List;, "Ljava/util/List<Larr;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v17, "safeCalendarDeleteObjectList":Ljava/util/List;, "Ljava/util/List<Lass;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v7, "calendarShareActionObjectList":Ljava/util/List;, "Ljava/util/List<Lasg;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/wukong/sync/SyncData;

    .line 72
    .local v15, "o":Lcom/alibaba/wukong/sync/SyncData;
    if-nez v15, :cond_3

    .line 73
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v21, "o is null"

    aput-object v21, v2, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 160
    .end local v4    # "calendarObjectList":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    .end local v5    # "calendarChangeObjectList":Ljava/util/List;, "Ljava/util/List<Larq;>;"
    .end local v6    # "calendarChangeV2ObjectList":Ljava/util/List;, "Ljava/util/List<Larr;>;"
    .end local v7    # "calendarShareActionObjectList":Ljava/util/List;, "Ljava/util/List<Lasg;>;"
    .end local v15    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .end local v17    # "safeCalendarDeleteObjectList":Ljava/util/List;, "Ljava/util/List<Lass;>;"
    :catch_0
    move-exception v14

    .line 161
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "calendar sync failed"

    invoke-static {v2, v14}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    invoke-static/range {v19 .. v19}, Lavy;->a(Lavx;)V

    goto :goto_0

    .line 77
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v4    # "calendarObjectList":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    .restart local v5    # "calendarChangeObjectList":Ljava/util/List;, "Ljava/util/List<Larq;>;"
    .restart local v6    # "calendarChangeV2ObjectList":Ljava/util/List;, "Ljava/util/List<Larr;>;"
    .restart local v7    # "calendarShareActionObjectList":Ljava/util/List;, "Ljava/util/List<Lasg;>;"
    .restart local v15    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .restart local v17    # "safeCalendarDeleteObjectList":Ljava/util/List;, "Ljava/util/List<Lass;>;"
    :cond_3
    :try_start_3
    iget v0, v15, Lcom/alibaba/wukong/sync/SyncData;->type:I

    move/from16 v20, v0

    .line 78
    .local v20, "type":I
    const/16 v2, 0x1b58

    move/from16 v0, v20

    if-eq v0, v2, :cond_4

    const/16 v2, 0x1b64

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    :cond_4
    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    instance-of v2, v2, Laqg;

    if-eqz v2, :cond_6

    .line 80
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v21, "type is calendarType and calendarModel type="

    aput-object v21, v2, v8

    const/4 v8, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v2, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    .line 82
    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v2, Laqg;

    invoke-static {v2}, Lasc;->a(Laqg;)Lasc;

    move-result-object v12

    .line 83
    .local v12, "calendarObject":Lasc;
    if-nez v12, :cond_5

    .line 84
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v21, "calendarModel to calendarObject null."

    aput-object v21, v2, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 163
    .end local v4    # "calendarObjectList":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    .end local v5    # "calendarChangeObjectList":Ljava/util/List;, "Ljava/util/List<Larq;>;"
    .end local v6    # "calendarChangeV2ObjectList":Ljava/util/List;, "Ljava/util/List<Larr;>;"
    .end local v7    # "calendarShareActionObjectList":Ljava/util/List;, "Ljava/util/List<Lasg;>;"
    .end local v12    # "calendarObject":Lasc;
    .end local v15    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .end local v17    # "safeCalendarDeleteObjectList":Ljava/util/List;, "Ljava/util/List<Lass;>;"
    .end local v20    # "type":I
    :catchall_0
    move-exception v2

    invoke-static/range {v19 .. v19}, Lavy;->a(Lavx;)V

    throw v2

    .line 88
    .restart local v4    # "calendarObjectList":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    .restart local v5    # "calendarChangeObjectList":Ljava/util/List;, "Ljava/util/List<Larq;>;"
    .restart local v6    # "calendarChangeV2ObjectList":Ljava/util/List;, "Ljava/util/List<Larr;>;"
    .restart local v7    # "calendarShareActionObjectList":Ljava/util/List;, "Ljava/util/List<Lasg;>;"
    .restart local v12    # "calendarObject":Lasc;
    .restart local v15    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .restart local v17    # "safeCalendarDeleteObjectList":Ljava/util/List;, "Ljava/util/List<Lass;>;"
    .restart local v20    # "type":I
    :cond_5
    :try_start_4
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v12    # "calendarObject":Lasc;
    :cond_6
    const/16 v2, 0x1b59

    move/from16 v0, v20

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1b65

    move/from16 v0, v20

    if-ne v0, v2, :cond_9

    :cond_7
    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    instance-of v2, v2, Laqb;

    if-eqz v2, :cond_9

    .line 91
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v21, "type is calendarChangeType and calendarChangeModel type="

    aput-object v21, v2, v8

    const/4 v8, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v2, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    .line 93
    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v2, Laqb;

    invoke-static {v2}, Larq;->a(Laqb;)Larq;

    move-result-object v10

    .line 94
    .local v10, "calendarChangeObject":Larq;
    if-nez v10, :cond_8

    .line 95
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v21, "calendarChangeModel to CalendarChangeObject null."

    aput-object v21, v2, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    :cond_8
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 99
    .end local v10    # "calendarChangeObject":Larq;
    :cond_9
    const/16 v2, 0x1b5b

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    instance-of v2, v2, Laqc;

    if-eqz v2, :cond_c

    .line 100
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v21, "type is calendarChangeV2Type and calendarChangeV2Model type="

    aput-object v21, v2, v8

    const/4 v8, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v2, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    .line 102
    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v2, Laqc;

    .line 1040
    if-nez v2, :cond_a

    .line 1041
    const/4 v11, 0x0

    .line 103
    .local v11, "calendarChangeV2Object":Larr;
    :goto_2
    if-nez v11, :cond_b

    .line 104
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v21, "calendarChangeV2Model to CalendarChangeV2Object null"

    aput-object v21, v2, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1044
    .end local v11    # "calendarChangeV2Object":Larr;
    :cond_a
    new-instance v11, Larr;

    invoke-direct {v11}, Larr;-><init>()V

    .line 1045
    iget-object v8, v2, Laqc;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-static {v8, v0, v1}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v22

    .line 1045
    move-wide/from16 v0, v22

    iput-wide v0, v11, Larr;->a:J

    .line 1046
    iget-object v8, v2, Laqc;->b:Ljava/lang/Long;

    .line 3044
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-static {v8, v0, v1}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v22

    .line 1046
    move-wide/from16 v0, v22

    iput-wide v0, v11, Larr;->b:J

    .line 1047
    iget-object v8, v2, Laqc;->c:Ljava/lang/Integer;

    .line 4033
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v8, v0}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 1047
    iput v8, v11, Larr;->c:I

    .line 1048
    iget-object v8, v2, Laqc;->d:Ljava/lang/Integer;

    .line 5033
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v8, v0}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 1048
    iput v8, v11, Larr;->d:I

    .line 1049
    iget-object v2, v2, Laqc;->e:Ljava/lang/String;

    iput-object v2, v11, Larr;->e:Ljava/lang/String;

    goto :goto_2

    .line 107
    .restart local v11    # "calendarChangeV2Object":Larr;
    :cond_b
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 108
    .end local v11    # "calendarChangeV2Object":Larr;
    :cond_c
    const/16 v2, 0x1b5a

    move/from16 v0, v20

    if-ne v0, v2, :cond_f

    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    instance-of v2, v2, Laqa;

    if-eqz v2, :cond_f

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/sync/SyncAck;->getReconnectType()I

    move-result v2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_d

    const/16 v18, 0x1

    .line 111
    .local v18, "showNotificationIfBackground":Z
    :goto_3
    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v2, Laqa;

    .line 5040
    if-nez v2, :cond_e

    .line 5041
    const/4 v9, 0x0

    .line 112
    .local v9, "calendarAlertObject":Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;
    :goto_4
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    .line 9263
    iget-object v8, v2, Latf;->a:Latf$b;

    new-instance v21, Latf$3;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-direct {v0, v2, v9, v1}, Latf$3;-><init>(Latf;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Z)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 113
    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v21, "onCalendarAlert, calendarId:"

    aput-object v21, v8, v2

    const/16 v21, 0x1

    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v2, Laqa;

    iget-object v2, v2, Laqa;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v21

    const/4 v2, 0x2

    const-string/jumbo v21, ",type="

    aput-object v21, v8, v2

    const/4 v2, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lavx;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 110
    .end local v9    # "calendarAlertObject":Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;
    .end local v18    # "showNotificationIfBackground":Z
    :cond_d
    const/16 v18, 0x0

    goto :goto_3

    .line 5043
    .restart local v18    # "showNotificationIfBackground":Z
    :cond_e
    new-instance v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    invoke-direct {v9}, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;-><init>()V

    .line 5045
    iget-object v8, v2, Laqa;->a:Ljava/lang/Long;

    .line 6044
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-static {v8, v0, v1}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v22

    .line 5045
    move-wide/from16 v0, v22

    iput-wide v0, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->a:J

    .line 5046
    iget-object v8, v2, Laqa;->b:Ljava/lang/Integer;

    .line 7033
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v8, v0}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 5046
    iput v8, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->b:I

    .line 5047
    iget-object v8, v2, Laqa;->c:Ljava/lang/String;

    iput-object v8, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->c:Ljava/lang/String;

    .line 5048
    iget-object v8, v2, Laqa;->d:Ljava/lang/String;

    iput-object v8, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->d:Ljava/lang/String;

    .line 5049
    iget-object v8, v2, Laqa;->e:Ljava/lang/Integer;

    .line 8033
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v8, v0}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 5049
    iput v8, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->e:I

    .line 5050
    iget-object v8, v2, Laqa;->f:Ljava/lang/String;

    iput-object v8, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->f:Ljava/lang/String;

    .line 5051
    iget-object v8, v2, Laqa;->g:Ljava/lang/String;

    iput-object v8, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->g:Ljava/lang/String;

    .line 5052
    iget-object v8, v2, Laqa;->h:Ljava/lang/String;

    iput-object v8, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->h:Ljava/lang/String;

    .line 5053
    iget-object v8, v2, Laqa;->i:Ljava/lang/String;

    iput-object v8, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 5054
    iget-object v8, v2, Laqa;->j:Ljava/lang/String;

    iput-object v8, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->j:Ljava/lang/String;

    .line 5055
    iget-object v8, v2, Laqa;->k:Ljava/lang/Long;

    .line 8044
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-static {v8, v0, v1}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v22

    .line 5055
    move-wide/from16 v0, v22

    iput-wide v0, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->k:J

    .line 5056
    iget-object v8, v2, Laqa;->l:Ljava/lang/Long;

    .line 9044
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-static {v8, v0, v1}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v22

    .line 5056
    move-wide/from16 v0, v22

    iput-wide v0, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->l:J

    .line 5057
    iget-object v2, v2, Laqa;->m:Ljava/lang/String;

    iput-object v2, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->m:Ljava/lang/String;

    goto/16 :goto_4

    .line 114
    .end local v18    # "showNotificationIfBackground":Z
    :cond_f
    const/16 v2, 0x36b0

    move/from16 v0, v20

    if-ne v0, v2, :cond_11

    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    instance-of v2, v2, Laqy;

    if-eqz v2, :cond_11

    .line 115
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v21, "type is safeCheckType and safeCalendarDeleteModel type="

    aput-object v21, v2, v8

    const/4 v8, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v2, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    .line 116
    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v2, Laqy;

    .line 10017
    if-nez v2, :cond_10

    .line 10018
    const/16 v16, 0x0

    .line 117
    .local v16, "safeCalendarDeleteObject":Lass;
    :goto_5
    if-eqz v16, :cond_2

    .line 118
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 10021
    .end local v16    # "safeCalendarDeleteObject":Lass;
    :cond_10
    new-instance v16, Lass;

    invoke-direct/range {v16 .. v16}, Lass;-><init>()V

    .line 10022
    iget-object v2, v2, Laqy;->a:Ljava/util/List;

    move-object/from16 v0, v16

    iput-object v2, v0, Lass;->a:Ljava/util/List;

    goto :goto_5

    .line 120
    :cond_11
    const/16 v2, 0x1b63

    move/from16 v0, v20

    if-ne v0, v2, :cond_13

    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    instance-of v2, v2, Laqq;

    if-eqz v2, :cond_13

    .line 121
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v21, "type CALENDAR_SHARE_CHANGE type="

    aput-object v21, v2, v8

    const/4 v8, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v2, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    .line 122
    iget-object v2, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v2, Laqq;

    .line 10026
    if-nez v2, :cond_12

    .line 10027
    const/4 v13, 0x0

    .line 123
    .local v13, "calendarShareActionObject":Lasg;
    :goto_6
    if-eqz v13, :cond_2

    .line 124
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 10030
    .end local v13    # "calendarShareActionObject":Lasg;
    :cond_12
    new-instance v13, Lasg;

    invoke-direct {v13}, Lasg;-><init>()V

    .line 10031
    iget-object v8, v2, Laqq;->a:Ljava/lang/Integer;

    .line 11033
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v8, v0}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 10031
    iput v8, v13, Lasg;->a:I

    .line 10032
    iget-object v2, v2, Laqq;->b:Ljava/lang/String;

    iput-object v2, v13, Lasg;->b:Ljava/lang/String;

    goto :goto_6

    .line 127
    :cond_13
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v21, "type invalid, server bug. type="

    aput-object v21, v2, v8

    const/4 v8, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v2, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 131
    .end local v15    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .end local v20    # "type":I
    :cond_14
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 132
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    .line 11398
    iget-object v3, v2, Latf;->a:Latf$b;

    new-instance v8, Latf$10;

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v8, v2, v0, v1}, Latf$10;-><init>(Latf;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v3, v8}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 135
    :cond_15
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v8, "calendarObjectList size="

    aput-object v8, v2, v3

    const/4 v3, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v8, "; calendarChangeObjectList size="

    aput-object v8, v2, v3

    const/4 v3, 0x3

    .line 136
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v8, "; calendarChangeV2ObjectList size="

    aput-object v8, v2, v3

    const/4 v3, 0x5

    .line 137
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v8, "; calendarShareActionObjectList size="

    aput-object v8, v2, v3

    const/4 v3, 0x7

    .line 138
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    .line 135
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lavx;->a([Ljava/lang/String;)V

    .line 140
    invoke-static {}, Latf;->a()Latf;

    move-result-object v3

    new-instance v8, Lave$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lave$1;-><init>(Lave;Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 12156
    iget-object v0, v3, Latf;->a:Latf$b;

    move-object/from16 v21, v0

    new-instance v2, Latf$21;

    invoke-direct/range {v2 .. v8}, Latf$21;-><init>(Latf;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Latf$b;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    invoke-static/range {v19 .. v19}, Lavy;->a(Lavx;)V

    goto/16 :goto_0
.end method
