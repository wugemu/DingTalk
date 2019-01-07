.class final Larh$3$1;
.super Ljava/lang/Object;
.source "CalendarReportDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larh$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Larh$3;


# direct methods
.method constructor <init>(Larh$3;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Larh$3;

    .prologue
    .line 252
    iput-object p1, p0, Larh$3$1;->b:Larh$3;

    iput-object p2, p0, Larh$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Larh$3$1;->a:Ljava/util/List;

    if-nez v2, :cond_0

    .line 256
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "[CalendarReportDataManager] queryCalendarInstancesAndUpload is null"

    aput-object v6, v2, v4

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 259
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "[CalendarReportDataManager] queryCalendarInstancesAndUpload size="

    aput-object v6, v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Larh$3$1;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 261
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v22, "reportMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lasf;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Larh$3$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 263
    .local v3, "showObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v3, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Larh$3$1;->b:Larh$3;

    iget-object v2, v2, Larh$3;->d:Larh;

    move-object/from16 v0, p0

    iget-object v4, v0, Larh$3$1;->b:Larh$3;

    iget-wide v4, v4, Larh$3;->a:J

    move-object/from16 v0, p0

    iget-object v6, v0, Larh$3$1;->b:Larh$3;

    iget-wide v6, v6, Larh$3;->b:J

    invoke-static/range {v2 .. v7}, Larh;->a(Larh;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getFolderId()Ljava/lang/String;

    move-result-object v21

    .line 270
    .local v21, "folderId":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    new-instance v5, Lasf;

    .line 274
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getCalendarId()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRealInstanceStartTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getVersion()J

    move-result-wide v12

    invoke-direct/range {v5 .. v13}, Lasf;-><init>(JJJJ)V

    .line 275
    .local v5, "calendarReportDataObject":Lasf;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    .end local v3    # "showObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    .end local v5    # "calendarReportDataObject":Lasf;
    .end local v21    # "folderId":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "[CalendarReportDataManager] queryCalendarInstancesAndUpload reportMap.size="

    aput-object v6, v2, v4

    const/4 v4, 0x1

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcms;->u()J

    move-result-wide v10

    .line 284
    .local v10, "systemTime":J
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    .line 285
    .local v20, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lasf;>;>;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 286
    .local v19, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lasf;>;>;"
    if-eqz v19, :cond_4

    .line 289
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 290
    .local v8, "folderId":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 291
    .local v9, "calendarReportDataObjectList":Ljava/util/List;, "Ljava/util/List<Lasf;>;"
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 294
    new-instance v7, Lase;

    move-object/from16 v0, p0

    iget-object v4, v0, Larh$3$1;->b:Larh$3;

    iget-wide v12, v4, Larh$3;->a:J

    move-object/from16 v0, p0

    iget-object v4, v0, Larh$3$1;->b:Larh$3;

    iget-wide v14, v4, Larh$3;->b:J

    .line 295
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lark;->a()Lark;

    move-result-object v4

    invoke-virtual {v4, v8}, Lark;->a(Ljava/lang/String;)J

    move-result-wide v17

    invoke-direct/range {v7 .. v18}, Lase;-><init>(Ljava/lang/String;Ljava/util/List;JJJLjava/lang/String;J)V

    .line 297
    .local v7, "calendarReportDataListObject":Lase;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v12, "[CalendarReportDataManager] tryUploadCalendarReport calendarReportDataListObject="

    aput-object v12, v4, v6

    const/4 v6, 0x1

    invoke-virtual {v7}, Lase;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v6

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Larh$3$1;->b:Larh$3;

    iget-object v4, v4, Larh$3;->c:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 301
    .end local v7    # "calendarReportDataListObject":Lase;
    .end local v8    # "folderId":Ljava/lang/String;
    .end local v9    # "calendarReportDataObjectList":Ljava/util/List;, "Ljava/util/List<Lasf;>;"
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lasf;>;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Larh$3$1;->b:Larh$3;

    iget-object v2, v2, Larh$3;->d:Larh;

    move-object/from16 v0, p0

    iget-object v4, v0, Larh$3$1;->b:Larh$3;

    iget-object v4, v4, Larh$3;->c:Ljava/util/List;

    invoke-static {v2, v4}, Larh;->a(Larh;Ljava/util/List;)V

    goto/16 :goto_0
.end method
