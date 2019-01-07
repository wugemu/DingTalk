.class public final Latf$21;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/alibaba/wukong/Callback;

.field final synthetic f:Latf;


# direct methods
.method public constructor <init>(Latf;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 156
    iput-object p1, p0, Latf$21;->f:Latf;

    iput-object p2, p0, Latf$21;->a:Ljava/util/List;

    iput-object p3, p0, Latf$21;->b:Ljava/util/List;

    iput-object p4, p0, Latf$21;->c:Ljava/util/List;

    iput-object p5, p0, Latf$21;->d:Ljava/util/List;

    iput-object p6, p0, Latf$21;->e:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Latf$21;->f:Latf;

    invoke-static {v2}, Latf;->a(Latf;)Lapw;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Latf$21;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Latf$21;->b:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Latf$21;->c:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Latf$21;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Latf$21;->e:Lcom/alibaba/wukong/Callback;

    .line 1094
    invoke-virtual {v4, v5}, Lapw;->a(Ljava/util/List;)Z

    move-result v10

    .line 1222
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1223
    :cond_0
    const/4 v2, 0x1

    .line 1096
    :goto_0
    invoke-virtual {v4, v7}, Lapw;->c(Ljava/util/List;)Z

    move-result v3

    .line 1097
    invoke-virtual {v4, v8}, Lapw;->b(Ljava/util/List;)V

    .line 1098
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "[dealWithCalendarsAndCalendarChangeEvent]retCalendar:"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string/jumbo v12, ", retCalendarChange="

    aput-object v12, v8, v11

    const/4 v11, 0x3

    .line 1099
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x4

    const-string/jumbo v12, ",retCalendarChangeV2="

    aput-object v12, v8, v11

    const/4 v11, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    .line 1098
    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 1100
    if-eqz v10, :cond_d

    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    .line 1101
    iget-object v2, v4, Lapw;->d:Larn;

    invoke-virtual {v2, v5, v6, v7}, Larn;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1102
    const/4 v2, 0x0

    invoke-static {v9, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1103
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v6, :cond_2

    .line 1104
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v7, :cond_4

    .line 1105
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1106
    :cond_3
    invoke-static {}, Lavh;->a()V

    :cond_4
    :goto_1
    return-void

    .line 1226
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v11, "[dealWithCalendarChangeEvent]totalSize:"

    aput-object v11, v2, v3

    const/4 v3, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 1228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Larq;

    .line 1230
    if-eqz v2, :cond_6

    .line 1233
    new-instance v12, Lauj;

    .line 2027
    iget-wide v14, v2, Larq;->a:J

    .line 2039
    iget-object v2, v2, Larq;->d:Ljava/lang/String;

    .line 1233
    invoke-direct {v12, v14, v15, v2}, Lauj;-><init>(JLjava/lang/String;)V

    .line 1234
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1236
    :cond_7
    invoke-virtual {v4, v3}, Lapw;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v11

    .line 1237
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v12, "[dealWithCalendarChangeEvent]localAllCalendarObjects size:"

    aput-object v12, v3, v2

    const/4 v12, 0x1

    if-nez v11, :cond_9

    const-string/jumbo v2, "0"

    .line 1238
    :goto_3
    aput-object v2, v3, v12

    .line 1237
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 1240
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Larq;

    .line 1242
    if-eqz v2, :cond_8

    .line 1245
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "[dealWithCalendarChangeEvent]calendarId:"

    aput-object v15, v3, v14

    const/4 v14, 0x1

    .line 3027
    iget-wide v0, v2, Larq;->a:J

    move-wide/from16 v16, v0

    .line 1245
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    const/4 v14, 0x2

    const-string/jumbo v15, ", folderId="

    aput-object v15, v3, v14

    const/4 v14, 0x3

    .line 3039
    iget-object v15, v2, Larq;->d:Ljava/lang/String;

    .line 1246
    aput-object v15, v3, v14

    const/4 v14, 0x4

    const-string/jumbo v15, ", calendar version:"

    aput-object v15, v3, v14

    const/4 v14, 0x5

    .line 4035
    iget-wide v0, v2, Larq;->c:J

    move-wide/from16 v16, v0

    .line 1247
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    .line 1245
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 1248
    if-eqz v11, :cond_a

    .line 4039
    iget-object v3, v2, Larq;->d:Ljava/lang/String;

    .line 1249
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 5039
    iget-object v3, v2, Larq;->d:Ljava/lang/String;

    .line 1250
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfp;

    .line 6027
    iget-wide v14, v2, Larq;->a:J

    .line 6096
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1250
    if-eqz v3, :cond_a

    .line 7039
    iget-object v3, v2, Larq;->d:Ljava/lang/String;

    .line 1251
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfp;

    .line 8027
    iget-wide v14, v2, Larq;->a:J

    .line 8096
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1251
    check-cast v3, Lasc;

    .line 9077
    iget-wide v14, v3, Lasc;->f:J

    .line 10035
    iget-wide v0, v2, Larq;->c:J

    move-wide/from16 v16, v0

    .line 1252
    cmp-long v3, v14, v16

    if-ltz v3, :cond_a

    .line 1253
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "[dealWithCalendarChangeEvent] calendarId:"

    aput-object v17, v3, v16

    const/16 v16, 0x1

    .line 11027
    iget-wide v0, v2, Larq;->a:J

    move-wide/from16 v18, v0

    .line 1254
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0x2

    const-string/jumbo v17, ",folderId:"

    aput-object v17, v3, v16

    const/16 v16, 0x3

    .line 11039
    iget-object v0, v2, Larq;->d:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1256
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0x4

    const-string/jumbo v17, ",oldVersion:"

    aput-object v17, v3, v16

    const/16 v16, 0x5

    .line 1258
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v16

    const/4 v14, 0x6

    const-string/jumbo v15, ">= newVersion:"

    aput-object v15, v3, v14

    const/4 v14, 0x7

    .line 12035
    iget-wide v0, v2, Larq;->c:J

    move-wide/from16 v16, v0

    .line 1260
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v14

    .line 1253
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1238
    :cond_9
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 13031
    :cond_a
    iget v3, v2, Larq;->b:I

    .line 1264
    sget-object v14, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->DELETE:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    invoke-virtual {v14}, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->getValue()I

    move-result v14

    if-ne v3, v14, :cond_8

    .line 1267
    new-instance v3, Lauj;

    .line 14027
    iget-wide v14, v2, Larq;->a:J

    .line 14039
    iget-object v2, v2, Larq;->d:Ljava/lang/String;

    .line 1267
    invoke-direct {v3, v14, v15, v2}, Lauj;-><init>(JLjava/lang/String;)V

    .line 1268
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1272
    :cond_b
    iget-object v2, v4, Lapw;->a:Latu;

    invoke-interface {v2, v12}, Latu;->b(Ljava/util/List;)I

    move-result v2

    .line 1273
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v13, "[dealWithCalendarChangeEvent]toDeleteIdList size="

    aput-object v13, v3, v11

    const/4 v11, 0x1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v11

    const/4 v11, 0x2

    const-string/jumbo v13, ", deleteSize="

    aput-object v13, v3, v11

    const/4 v11, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v11

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 1274
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1109
    :cond_d
    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "[dealWithCalendarsAndCalendarChangeEvent]failed"

    invoke-static {v9, v4, v5}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string/jumbo v4, "deal with calendars and change events failed"

    const-string/jumbo v5, "-1"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "retCalendar:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 1112
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", retCalendarChange:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 1113
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x4

    const-string/jumbo v7, ", retCalendarChangeV2:"

    aput-object v7, v6, v2

    const/4 v2, 0x5

    .line 1114
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1112
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1110
    invoke-static {v4, v5, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
