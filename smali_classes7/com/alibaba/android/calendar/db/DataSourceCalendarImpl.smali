.class public Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceCalendarImpl.java"

# interfaces
.implements Latu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;Ljava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->d(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method private static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "uniqueId"    # Ljava/lang/String;
    .param p1, "startTimeMillis"    # J

    .prologue
    .line 454
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;JJLcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;)Ljava/util/List;
    .locals 7
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "expandMode"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lasc;",
            ">;JJ",
            "Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;",
            ")",
            "Ljava/util/List",
            "<",
            "Lasy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "calendarObjects":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 579
    :cond_0
    const/4 v2, 0x0

    .line 611
    :cond_1
    return-object v2

    .line 582
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v2, "baseInstancesToSave":Ljava/util/List;, "Ljava/util/List<Lasy;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lasc;

    .line 585
    .local v3, "calendarObject":Lasc;
    if-eqz v3, :cond_3

    .line 589
    sget-object v5, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ONLY_EXPANDED:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    if-ne p5, v5, :cond_4

    .line 10025
    iget-boolean v5, v3, Lasw;->r:Z

    .line 589
    if-eqz v5, :cond_3

    .line 593
    :cond_4
    sget-object v5, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ONLY_NOT_EXPANDED:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    if-ne p5, v5, :cond_5

    .line 11025
    iget-boolean v5, v3, Lasw;->r:Z

    .line 593
    if-nez v5, :cond_3

    .line 597
    :cond_5
    invoke-static {v3, p1, p2, p3, p4}, Lasz;->a(Lasw;JJ)Ljava/util/List;

    move-result-object v1

    .line 599
    .local v1, "baseInstances":Ljava/util/List;, "Ljava/util/List<Lasy;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 603
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasy;

    .line 604
    .local v0, "baseInstance":Lasy;
    if-eqz v0, :cond_6

    .line 607
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p2, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 315
    .local p1, "uniqueIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit16 v6, v5, 0x1f4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit16 v5, v5, 0x1f4

    if-lez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    add-int v1, v6, v5

    .line 317
    .local v1, "groupSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 318
    mul-int/lit16 v5, v2, 0x1f4

    add-int/lit8 v6, v2, 0x1

    mul-int/lit16 v6, v6, 0x1f4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 319
    .local v3, "queryUniqueIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v3, p2}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 320
    .local v0, "groupInstances":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    .end local v0    # "groupInstances":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    .end local v1    # "groupSize":I
    .end local v2    # "i":I
    .end local v3    # "queryUniqueIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 324
    .restart local v1    # "groupSize":I
    .restart local v2    # "i":I
    :cond_2
    return-object v4
.end method

.method private a(Ljava/util/Set;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 406
    .local p1, "instanceShowObjects":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 450
    :goto_0
    return-object v4

    .line 410
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v2, "notExceptionInstanceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v0, "exceptionInstances":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 415
    .local v1, "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 421
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 425
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 427
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    .line 426
    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 430
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 434
    .end local v1    # "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 435
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 439
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 440
    .restart local v1    # "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v1, :cond_6

    .line 443
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceId()Ljava/lang/String;

    move-result-object v8

    .line 9109
    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 444
    .local v6, "startTimeMillis":J
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6, v7}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 447
    .end local v1    # "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    .end local v6    # "startTimeMillis":J
    :cond_7
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 448
    .local v3, "notExceptionInstances":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private static a(Lasl;Ljava/util/List;)V
    .locals 4
    .param p0, "folderObject"    # Lasl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasl;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "instanceShowObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    if-nez p0, :cond_1

    .line 312
    :cond_0
    return-void

    .line 297
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7074
    iget-object v2, p0, Lasl;->e:Ljava/lang/String;

    .line 301
    sget v3, Laow$a;->ui_common_safe_bg_color:I

    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    invoke-static {v2, v3}, Lavj;->a(Ljava/lang/String;I)I

    move-result v0

    .line 303
    .local v0, "folderColor":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 304
    .local v1, "showObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v1, :cond_2

    .line 8050
    iget-object v3, p0, Lasl;->b:Ljava/lang/String;

    .line 307
    invoke-virtual {v1, v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setFolderName(Ljava/lang/String;)V

    .line 8090
    iget-boolean v3, p0, Lasl;->g:Z

    .line 308
    invoke-virtual {v1, v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setShare(Z)V

    .line 9066
    iget-object v3, p0, Lasl;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 309
    invoke-virtual {v1, v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setPrivilege(Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V

    .line 310
    invoke-virtual {v1, v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setColor(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;Ljava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->e(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p2, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "uniqueIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    :cond_0
    const/4 v15, 0x0

    .line 402
    :cond_1
    :goto_0
    return-object v15

    .line 331
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_3

    .line 332
    const-string/jumbo v1, "[DataSourceCalendar]queryExceptionInstancesByUniqueIdByLimit exception"

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "to many ids"

    invoke-static {v1, v2, v3}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v1, 0x0

    const/16 v2, 0x1f4

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 336
    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v15, "instanceShowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    const/4 v10, 0x0

    .line 339
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v17, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "unique_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string/jumbo v1, " IN ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const/16 v16, 0x1

    .line 344
    .local v16, "isFirst":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_6

    .line 345
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 348
    if-eqz v16, :cond_5

    .line 349
    const/16 v16, 0x0

    .line 354
    :goto_2
    const-string/jumbo v1, "\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string/jumbo v1, "\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 351
    :cond_5
    const-string/jumbo v1, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 395
    .end local v13    # "i":I
    .end local v16    # "isFirst":Z
    .end local v17    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    .line 396
    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v1, "queryInstance failed"

    invoke-static {v1, v11}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    if-eqz v10, :cond_1

    .line 399
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 358
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v13    # "i":I
    .restart local v16    # "isFirst":Z
    .restart local v17    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_2
    const-string/jumbo v1, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string/jumbo v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string/jumbo v1, "folder_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string/jumbo v1, " = ? "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string/jumbo v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string/jumbo v1, "e_recurrence_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string/jumbo v1, " IS NOT NULL "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string/jumbo v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string/jumbo v1, "c_is_deleted"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string/jumbo v1, " = 0 "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    const-string/jumbo v4, "tb_instance_v2"

    sget-object v5, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->ALL_COLUMNS:[Ljava/lang/String;

    .line 377
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 373
    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 382
    if-nez v10, :cond_8

    .line 398
    if-eqz v10, :cond_7

    .line 399
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 386
    :cond_8
    :goto_3
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 387
    new-instance v12, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    invoke-direct {v12}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;-><init>()V

    .line 388
    .local v12, "entryInstance":Lcom/alibaba/android/calendar/db/entry/EntryInstance;
    invoke-virtual {v12, v10}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->fillWithCursor(Landroid/database/Cursor;)V

    .line 390
    invoke-static {v12}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->from(Lcom/alibaba/android/calendar/db/entry/EntryInstance;)Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    move-result-object v14

    .line 391
    .local v14, "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v14, :cond_8

    .line 392
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 398
    .end local v12    # "entryInstance":Lcom/alibaba/android/calendar/db/entry/EntryInstance;
    .end local v13    # "i":I
    .end local v14    # "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    .end local v16    # "isFirst":Z
    .end local v17    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_9

    .line 399
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 398
    .restart local v13    # "i":I
    .restart local v16    # "isFirst":Z
    .restart local v17    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_a
    if-eqz v10, :cond_1

    .line 399
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private b()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 977
    const/4 v1, 0x0

    .line 979
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v8, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'tb_calendar\'"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 980
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 981
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 982
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 989
    if-eqz v1, :cond_0

    .line 990
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 994
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return v3

    .line 989
    :cond_1
    if-eqz v1, :cond_2

    .line 990
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v3, v4

    .line 994
    goto :goto_0

    .line 986
    :catch_0
    move-exception v2

    .line 987
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[DataSourceCalendarImpl] isPreCalendarTableExists e="

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    if-eqz v1, :cond_2

    .line 990
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 989
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 990
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method private d(Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lauj;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "calendarDBQueryParamListShouldMarkExpanded":Ljava/util/List;, "Ljava/util/List<Lauj;>;"
    const/4 v9, 0x0

    .line 615
    if-nez p1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v9

    .line 619
    :cond_1
    const/4 v9, 0x0

    .line 621
    .local v9, "ret":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lauj;

    .line 622
    .local v7, "calendarDBQueryParam":Lauj;
    if-eqz v7, :cond_2

    .line 626
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 627
    .local v4, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v0, "has_expand"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    .line 629
    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v3, "tb_event_v3"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v11, "calendar_id"

    aput-object v11, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v11, "=? AND "

    aput-object v11, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v11, "c_folder_id"

    aput-object v11, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v11, "=?"

    aput-object v11, v5, v6

    .line 633
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 12019
    iget-wide v12, v7, Lauj;->a:J

    .line 634
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    const/4 v11, 0x1

    .line 12023
    iget-object v12, v7, Lauj;->b:Ljava/lang/String;

    .line 634
    aput-object v12, v6, v11

    .line 628
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    add-int/lit8 v9, v9, 0x1

    .line 637
    goto :goto_1

    .line 638
    .end local v4    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "calendarDBQueryParam":Lauj;
    :catch_0
    move-exception v8

    .line 639
    .local v8, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "markCalendarExpanded failed:"

    invoke-static {v0, v8}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method private d()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 999
    const/4 v1, 0x0

    .line 1001
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v8, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'tb_event\'"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1002
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1003
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1004
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 1011
    if-eqz v1, :cond_0

    .line 1012
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1016
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return v3

    .line 1011
    :cond_1
    if-eqz v1, :cond_2

    .line 1012
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v3, v4

    .line 1016
    goto :goto_0

    .line 1008
    :catch_0
    move-exception v2

    .line 1009
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[DataSourceCalendarImpl] isPreCalendarEventTableExists e="

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    if-eqz v1, :cond_2

    .line 1012
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1011
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 1012
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private e(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lasy;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 645
    .local p1, "baseInstances":Ljava/util/List;, "Ljava/util/List<Lasy;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 646
    :cond_0
    const/4 v3, 0x0

    .line 675
    :goto_0
    return v3

    .line 649
    :cond_1
    const/4 v3, 0x0

    .line 650
    .local v3, "ret":I
    const/4 v4, 0x0

    .line 652
    .local v4, "statementEntryInstance":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    .line 653
    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    const-class v8, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    const-string/jumbo v9, "tb_instance_v2"

    .line 655
    invoke-static {v8, v9}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 652
    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v4

    .line 657
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasy;

    .line 658
    .local v0, "baseInstance":Lasy;
    instance-of v6, v0, Larz;

    if-eqz v6, :cond_2

    .line 662
    check-cast v0, Larz;

    .end local v0    # "baseInstance":Lasy;
    invoke-static {v0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->fromBaseInstance(Larz;)Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    move-result-object v2

    .line 663
    .local v2, "entryInstance":Lcom/alibaba/android/calendar/db/entry/EntryInstance;
    invoke-virtual {v2, v4}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 664
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 665
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    add-int/lit8 v3, v3, 0x1

    .line 668
    goto :goto_1

    .line 673
    .end local v2    # "entryInstance":Lcom/alibaba/android/calendar/db/entry/EntryInstance;
    :cond_3
    invoke-static {v4}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .line 669
    :catch_0
    move-exception v1

    .line 670
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v5, "saveInstance failed"

    invoke-static {v5, v1}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    invoke-static {v4}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v5
.end method

.method static synthetic e(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method private e()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1021
    const/4 v1, 0x0

    .line 1023
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v8, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'tb_event_v2\'"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1024
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1025
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1026
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 1033
    if-eqz v1, :cond_0

    .line 1034
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1038
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return v3

    .line 1033
    :cond_1
    if-eqz v1, :cond_2

    .line 1034
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v3, v4

    .line 1038
    goto :goto_0

    .line 1030
    :catch_0
    move-exception v2

    .line 1031
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[DataSourceCalendarImpl] isPreCalendarEventV2TableExists e="

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    if-eqz v1, :cond_2

    .line 1034
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1033
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 1034
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method static synthetic f(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method private f()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1042
    const/4 v1, 0x0

    .line 1044
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    const-string/jumbo v8, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'tb_instance\'"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1045
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1046
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1047
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 1054
    if-eqz v1, :cond_0

    .line 1055
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1059
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return v3

    .line 1054
    :cond_1
    if-eqz v1, :cond_2

    .line 1055
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v3, v4

    .line 1059
    goto :goto_0

    .line 1051
    :catch_0
    move-exception v2

    .line 1052
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[DataSourceCalendarImpl] isPreCalendarInstanceTableExists e="

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    if-eqz v1, :cond_2

    .line 1055
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1054
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 1055
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method static synthetic g(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic r(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lasc;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "calendarObjects":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    const/4 v4, 0x0

    .line 70
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    :goto_0
    return v4

    .line 74
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    .local v2, "startTime":J
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 76
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    .local v0, "relatedFolderIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;

    invoke-direct {v7, p0, p1, v0, v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;-><init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;Ljava/util/List;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 138
    invoke-static {}, Lapy;->a()Lapy;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v6}, Lapy;->a(Ljava/util/List;)V

    .line 139
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[DataSourceCalendarImpl] saveCalendars size="

    aput-object v6, v5, v4

    const/4 v4, 0x1

    .line 140
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const-string/jumbo v6, ", costTime="

    aput-object v6, v5, v4

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 139
    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    goto :goto_0
.end method

.method public final a(Lasl;JJ)Ljava/util/List;
    .locals 32
    .param p1, "folderObject"    # Lasl;
    .param p2, "beginTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasl;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    if-nez p1, :cond_1

    .line 201
    const/16 v23, 0x0

    .line 289
    :cond_0
    :goto_0
    return-object v23

    .line 204
    :cond_1
    cmp-long v4, p2, p4

    if-ltz v4, :cond_2

    .line 205
    const/16 v23, 0x0

    goto :goto_0

    .line 2042
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lasl;->a:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 209
    .local v21, "folderId":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 210
    const/16 v23, 0x0

    goto :goto_0

    .line 213
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 2458
    .local v26, "startTime":J
    invoke-static {}, Lark;->a()Lark;

    move-result-object v4

    .line 3145
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v4

    .line 3147
    if-nez v4, :cond_5

    const-wide/16 v6, 0x0

    .line 2459
    :goto_1
    invoke-static {}, Lark;->a()Lark;

    move-result-object v4

    .line 4162
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v4

    .line 4164
    if-nez v4, :cond_6

    const-wide/16 v8, 0x0

    .line 2461
    :goto_2
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v11, "[expandInstancesIfNecessary]folderId="

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object v21, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v11, ", regionStart="

    aput-object v11, v4, v5

    const/4 v5, 0x3

    .line 2462
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v11, ", regionEnd="

    aput-object v11, v4, v5

    const/4 v5, 0x5

    .line 2463
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    .line 2461
    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 2465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 2467
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2468
    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2469
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    .line 2470
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2471
    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[expandInstancesIfNecessary]calendarObjects isEmpty."

    aput-object v6, v4, v5

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 218
    :goto_3
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v23, "instanceShowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    const/16 v17, 0x0

    .line 221
    .local v17, "cursor":Landroid/database/Cursor;
    const/16 v4, 0xd

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "(("

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "i_begin"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " > ? AND "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "i_begin"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " < ? ) OR ("

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "i_end"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, " > ? AND "

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "i_end"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, " < ? )) AND "

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "c_is_deleted"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, " = 0 AND "

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "folder_id"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, " = ? "

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "selection":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 232
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x1

    .line 233
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x2

    .line 234
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x3

    .line 235
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x4

    .line 236
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    .line 239
    .local v10, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    const-string/jumbo v7, "tb_instance_v2"

    sget-object v8, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 248
    if-nez v17, :cond_17

    .line 264
    if-eqz v17, :cond_0

    .line 265
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4098
    .end local v9    # "selection":Ljava/lang/String;
    .end local v10    # "args":[Ljava/lang/String;
    .end local v17    # "cursor":Landroid/database/Cursor;
    .end local v23    # "instanceShowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    :cond_5
    iget-wide v6, v4, Lasj;->g:J

    goto/16 :goto_1

    .line 5106
    :cond_6
    iget-wide v8, v4, Lasj;->h:J

    goto/16 :goto_2

    .line 2475
    :cond_7
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 2476
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lasc;

    .line 2477
    if-eqz v4, :cond_8

    .line 6025
    iget-boolean v12, v4, Lasw;->r:Z

    .line 2480
    if-nez v12, :cond_8

    .line 2481
    new-instance v12, Lauj;

    invoke-virtual {v4}, Lasc;->b()J

    move-result-wide v14

    .line 6188
    iget-object v4, v4, Lasc;->n:Ljava/lang/String;

    .line 2481
    invoke-direct {v12, v14, v15, v4}, Lauj;-><init>(JLjava/lang/String;)V

    .line 2482
    move-object/from16 v0, v29

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2486
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2489
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-nez v11, :cond_b

    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_b

    .line 2490
    sget-object v10, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ALL:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-static/range {v5 .. v10}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;JJLcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;)Ljava/util/List;

    move-result-object v5

    .line 2491
    if-eqz v5, :cond_a

    .line 2492
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2495
    :cond_a
    invoke-static {}, Lark;->a()Lark;

    move-result-object v5

    move-object/from16 v0, v21

    move-wide/from16 v1, p2

    invoke-virtual {v5, v0, v1, v2}, Lark;->c(Ljava/lang/String;J)V

    .line 2496
    invoke-static {}, Lark;->a()Lark;

    move-result-object v5

    move-object/from16 v0, v21

    move-wide/from16 v1, p4

    invoke-virtual {v5, v0, v1, v2}, Lark;->d(Ljava/lang/String;J)V

    .line 2497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v7, v0, v1, v4}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$3;-><init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;Ljava/util/List;Ljava/util/List;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 2505
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[DataSourceCalendarImpl] queryInstances size="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 2506
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const-string/jumbo v6, ", costTime="

    aput-object v6, v5, v4

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v30

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 2505
    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2513
    :cond_b
    cmp-long v11, p2, v6

    if-ltz v11, :cond_d

    cmp-long v11, p4, v8

    if-gtz v11, :cond_d

    .line 2515
    sget-object v10, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ONLY_NOT_EXPANDED:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    invoke-static/range {v5 .. v10}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;JJLcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;)Ljava/util/List;

    move-result-object v5

    .line 2516
    if-eqz v5, :cond_c

    .line 2517
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2565
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v7, v0, v1, v4}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$4;-><init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;Ljava/util/List;Ljava/util/List;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 2573
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[DataSourceCalendarImpl] expandInstancesIfNecessary size="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 2574
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const-string/jumbo v6, ", costTime="

    aput-object v6, v5, v4

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v30

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 2573
    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2519
    :cond_d
    cmp-long v11, p2, v6

    if-gez v11, :cond_10

    cmp-long v11, p4, v8

    if-gtz v11, :cond_10

    .line 2522
    sget-object v16, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ONLY_NOT_EXPANDED:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    move-object v11, v5

    move-wide/from16 v12, p2

    move-wide v14, v8

    invoke-static/range {v11 .. v16}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;JJLcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;)Ljava/util/List;

    move-result-object v8

    .line 2523
    if-eqz v8, :cond_e

    .line 2524
    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2526
    :cond_e
    sget-object v14, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ONLY_EXPANDED:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    move-object v9, v5

    move-wide/from16 v10, p2

    move-wide v12, v6

    invoke-static/range {v9 .. v14}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;JJLcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;)Ljava/util/List;

    move-result-object v5

    .line 2527
    if-eqz v5, :cond_f

    .line 2528
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2530
    :cond_f
    invoke-static {}, Lark;->a()Lark;

    move-result-object v5

    move-object/from16 v0, v21

    move-wide/from16 v1, p2

    invoke-virtual {v5, v0, v1, v2}, Lark;->c(Ljava/lang/String;J)V

    goto :goto_5

    .line 2531
    :cond_10
    cmp-long v11, p2, v6

    if-ltz v11, :cond_13

    cmp-long v11, p4, v8

    if-lez v11, :cond_13

    .line 2534
    sget-object v16, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ONLY_NOT_EXPANDED:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    move-object v11, v5

    move-wide v12, v6

    move-wide/from16 v14, p4

    invoke-static/range {v11 .. v16}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;JJLcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;)Ljava/util/List;

    move-result-object v6

    .line 2535
    if-eqz v6, :cond_11

    .line 2536
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2538
    :cond_11
    sget-object v12, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ONLY_EXPANDED:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    move-object v7, v5

    move-wide/from16 v10, p4

    invoke-static/range {v7 .. v12}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;JJLcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;)Ljava/util/List;

    move-result-object v5

    .line 2539
    if-eqz v5, :cond_12

    .line 2540
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2543
    :cond_12
    invoke-static {}, Lark;->a()Lark;

    move-result-object v5

    move-object/from16 v0, v21

    move-wide/from16 v1, p4

    invoke-virtual {v5, v0, v1, v2}, Lark;->d(Ljava/lang/String;J)V

    goto/16 :goto_5

    .line 2548
    :cond_13
    sget-object v16, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ONLY_NOT_EXPANDED:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    move-object v11, v5

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-static/range {v11 .. v16}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;JJLcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;)Ljava/util/List;

    move-result-object v11

    .line 2549
    if-eqz v11, :cond_14

    .line 2550
    invoke-interface {v4, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2552
    :cond_14
    sget-object v16, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ONLY_EXPANDED:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    move-object v11, v5

    move-wide/from16 v12, p2

    move-wide v14, v6

    invoke-static/range {v11 .. v16}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;JJLcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;)Ljava/util/List;

    move-result-object v6

    .line 2553
    if-eqz v6, :cond_15

    .line 2554
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2556
    :cond_15
    sget-object v12, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;->ONLY_EXPANDED:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;

    move-object v7, v5

    move-wide/from16 v10, p4

    invoke-static/range {v7 .. v12}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;JJLcom/alibaba/android/calendar/db/DataSourceCalendarImpl$EXPAND_MODE;)Ljava/util/List;

    move-result-object v5

    .line 2557
    if-eqz v5, :cond_16

    .line 2558
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2561
    :cond_16
    invoke-static {}, Lark;->a()Lark;

    move-result-object v5

    move-object/from16 v0, v21

    move-wide/from16 v1, p2

    invoke-virtual {v5, v0, v1, v2}, Lark;->c(Ljava/lang/String;J)V

    .line 2562
    invoke-static {}, Lark;->a()Lark;

    move-result-object v5

    move-object/from16 v0, v21

    move-wide/from16 v1, p4

    invoke-virtual {v5, v0, v1, v2}, Lark;->d(Ljava/lang/String;J)V

    goto/16 :goto_5

    .line 252
    .restart local v9    # "selection":Ljava/lang/String;
    .restart local v10    # "args":[Ljava/lang/String;
    .restart local v17    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "instanceShowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    :cond_17
    :goto_6
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 253
    new-instance v19, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    invoke-direct/range {v19 .. v19}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;-><init>()V

    .line 254
    .local v19, "entryInstance":Lcom/alibaba/android/calendar/db/entry/EntryInstance;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->fillWithCursor(Landroid/database/Cursor;)V

    .line 256
    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->from(Lcom/alibaba/android/calendar/db/entry/EntryInstance;)Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    move-result-object v22

    .line 257
    .local v22, "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v22, :cond_17

    .line 258
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 261
    .end local v9    # "selection":Ljava/lang/String;
    .end local v10    # "args":[Ljava/lang/String;
    .end local v19    # "entryInstance":Lcom/alibaba/android/calendar/db/entry/EntryInstance;
    .end local v22    # "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    :catch_0
    move-exception v18

    .line 262
    .local v18, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v4, "queryInstances failed"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    if-eqz v17, :cond_18

    .line 265
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 269
    .end local v18    # "e":Ljava/lang/RuntimeException;
    :cond_18
    :goto_7
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 270
    .local v28, "uniqueIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 271
    .restart local v22    # "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v22, :cond_19

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 274
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 264
    .end local v22    # "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    .end local v28    # "uniqueIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "selection":Ljava/lang/String;
    .restart local v10    # "args":[Ljava/lang/String;
    :cond_1a
    if-eqz v17, :cond_18

    .line 265
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 264
    .end local v9    # "selection":Ljava/lang/String;
    .end local v10    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v17, :cond_1b

    .line 265
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1b
    throw v4

    .line 277
    .restart local v28    # "uniqueIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1c
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 279
    .local v20, "exceptionInstances":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    new-instance v24, Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 281
    .local v24, "instancesSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v25

    .line 285
    .local v25, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Lasl;Ljava/util/List;)V

    .line 287
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[DataSourceCalendarImpl] queryInstances size="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 288
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", costTime="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 287
    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    move-object/from16 v23, v25

    .line 289
    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;Z)Ljava/util/List;
    .locals 25
    .param p2, "onlyNonDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lasc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, "folderIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    const/16 v20, 0x0

    .line 767
    :goto_0
    return-object v20

    .line 684
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    .line 685
    .local v21, "size":I
    const/16 v2, 0x1f4

    move/from16 v0, v21

    if-lt v0, v2, :cond_2

    .line 686
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 687
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "sql params folderId is over 500 num."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 689
    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    .line 692
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 693
    .local v22, "startTime":J
    new-instance v13, Lfp;

    invoke-direct {v13}, Lfp;-><init>()V

    .line 694
    .local v13, "calendarObjectSparseArray":Lfp;, "Lfp<Lasc;>;"
    const/4 v14, 0x0

    .line 696
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v24

    .line 697
    .local v24, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/16 v19, 0x1

    .line 698
    .local v19, "isFirst":Z
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 699
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 700
    .local v17, "folderId":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 704
    if-eqz v19, :cond_4

    .line 705
    const/16 v19, 0x0

    .line 709
    :goto_2
    const-string/jumbo v2, "\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 710
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 711
    const-string/jumbo v2, "\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 698
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 707
    :cond_4
    const-string/jumbo v2, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 752
    .end local v17    # "folderId":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v19    # "isFirst":Z
    .end local v24    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v15

    .line 753
    .local v15, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v2, "queryInstance failed"

    invoke-static {v2, v15}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    if-eqz v14, :cond_5

    .line 756
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 760
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_3
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v20, "ret":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_4
    invoke-virtual {v13}, Lfp;->a()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_d

    .line 762
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lfp;->b(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 714
    .end local v20    # "ret":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    .restart local v19    # "isFirst":Z
    .restart local v24    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_6
    const/4 v2, 0x5

    :try_start_2
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz p2, :cond_8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "c_is_deleted"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " = 0 AND "

    aput-object v6, v2, v5

    .line 715
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    aput-object v2, v3, v4

    const/4 v2, 0x1

    const-string/jumbo v4, "c_folder_id"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string/jumbo v4, " IN ("

    aput-object v4, v3, v2

    const/4 v2, 0x3

    .line 718
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string/jumbo v4, ")"

    aput-object v4, v3, v2

    .line 714
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 722
    .local v7, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v5, "tb_event_v3"

    sget-object v6, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 731
    if-nez v14, :cond_9

    .line 755
    if-eqz v14, :cond_7

    .line 756
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 715
    .end local v7    # "selection":Ljava/lang/String;
    :cond_8
    :try_start_3
    const-string/jumbo v2, ""

    goto :goto_5

    .line 735
    .restart local v7    # "selection":Ljava/lang/String;
    :cond_9
    :goto_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 736
    new-instance v16, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/android/calendar/db/entry/EntryEvent;-><init>()V

    .line 737
    .local v16, "entryEvent":Lcom/alibaba/android/calendar/db/entry/EntryEvent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->fillWithCursor(Landroid/database/Cursor;)V

    .line 739
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mCalendarId:J

    .line 12096
    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 739
    check-cast v12, Lasc;

    .line 740
    .local v12, "calendarObject":Lasc;
    if-nez v12, :cond_a

    .line 741
    invoke-static/range {v16 .. v16}, Lasc;->a(Lcom/alibaba/android/calendar/db/entry/EntryEvent;)Lasc;

    move-result-object v12

    .line 742
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mCalendarId:J

    invoke-virtual {v13, v2, v3, v12}, Lfp;->b(JLjava/lang/Object;)V

    .line 745
    :cond_a
    invoke-static/range {v16 .. v16}, Lary;->a(Lcom/alibaba/android/calendar/db/entry/EntryEvent;)Lary;

    move-result-object v11

    .line 746
    .local v11, "calendarEventObject":Lary;
    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    .line 748
    invoke-virtual {v12}, Lasc;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 749
    invoke-virtual {v12}, Lasc;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 755
    .end local v7    # "selection":Ljava/lang/String;
    .end local v11    # "calendarEventObject":Lary;
    .end local v12    # "calendarObject":Lasc;
    .end local v16    # "entryEvent":Lcom/alibaba/android/calendar/db/entry/EntryEvent;
    .end local v18    # "i":I
    .end local v19    # "isFirst":Z
    .end local v24    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_b

    .line 756
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 755
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v19    # "isFirst":Z
    .restart local v24    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_c
    if-eqz v14, :cond_5

    .line 756
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 765
    .end local v7    # "selection":Ljava/lang/String;
    .end local v19    # "isFirst":Z
    .end local v24    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v20    # "ret":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    :cond_d
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceCalendarImpl] queryCalendars size="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 766
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", costTime="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 765
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 942
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;-><init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 972
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceCalendarImpl] dropCalendarPreTableIfExists costTime="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public final a(Z)V
    .locals 8
    .param p1, "retry"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 876
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 877
    .local v2, "startTime":J
    invoke-static {}, Lapy;->a()Lapy;

    move-result-object v1

    invoke-virtual {v1}, Lapy;->b()V

    .line 878
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$5;

    invoke-direct {v5, p0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$5;-><init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    move-result v0

    .line 886
    .local v0, "ret":Z
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 887
    const/4 p1, 0x0

    goto :goto_0

    .line 890
    :cond_0
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    .line 892
    const-string/jumbo v1, "[calendar] clear all tables failed"

    const-string/jumbo v4, "-1"

    const-string/jumbo v5, ""

    invoke-static {v1, v4, v5}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceCalendarImpl] clearAllTables costTime="

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 10
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 900
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v1

    .line 904
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 905
    .local v2, "startTime":J
    invoke-static {}, Lapy;->a()Lapy;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    aput-object p1, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lapy;->a(Ljava/util/List;)V

    .line 906
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 907
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v5, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;

    invoke-direct {v7, p0, p1, v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;-><init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 928
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[DataSourceCalendarImpl] deleteCalendarByFolderId folderId="

    aput-object v6, v5, v1

    aput-object p1, v5, v4

    const/4 v6, 0x2

    const-string/jumbo v7, ", costTime="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-lez v5, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lauj;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "calendarDBQueryParamList":Ljava/util/List;, "Ljava/util/List<Lauj;>;"
    const/4 v4, 0x0

    .line 147
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v4

    .line 151
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 152
    .local v2, "startTime":J
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 153
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 154
    .local v0, "relatedFolderIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;

    invoke-direct {v7, p0, p1, v0, v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;-><init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;Ljava/util/List;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 191
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[DataSourceCalendarImpl] deleteCalendarByCalendarDBQueryParam size="

    aput-object v6, v5, v4

    const/4 v4, 0x1

    .line 192
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const-string/jumbo v6, ", costTime="

    aput-object v6, v5, v4

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 191
    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lapy;->a()Lapy;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Lapy;->a(Ljava/util/List;)V

    .line 195
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lauj;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lasc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    .local p1, "calendarDBQueryParamList":Ljava/util/List;, "Ljava/util/List<Lauj;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 778
    :cond_0
    const/16 v19, 0x0

    .line 870
    :goto_0
    return-object v19

    .line 781
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    .line 782
    .local v20, "size":I
    const/16 v2, 0x1f4

    move/from16 v0, v20

    if-lt v0, v2, :cond_3

    .line 783
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 784
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "sql params is over 500 num."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 786
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 789
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 791
    .local v22, "startTime":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .local v21, "whereInCalendarIds":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 793
    .local v24, "whereInFolderIds":Ljava/lang/StringBuilder;
    const/16 v18, 0x1

    .line 794
    .local v18, "isFirst":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 795
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 796
    if-eqz v18, :cond_5

    .line 797
    const/16 v18, 0x0

    .line 803
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lauj;

    .line 13019
    iget-wide v2, v2, Lauj;->a:J

    .line 803
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 805
    const-string/jumbo v2, "\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lauj;

    .line 13023
    iget-object v2, v2, Lauj;->b:Ljava/lang/String;

    .line 806
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    const-string/jumbo v2, "\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 799
    :cond_5
    const-string/jumbo v2, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    const-string/jumbo v2, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 811
    :cond_6
    new-instance v13, Lfp;

    invoke-direct {v13}, Lfp;-><init>()V

    .line 812
    .local v13, "calendarObjectSparseArray":Lfp;, "Lfp<Lasc;>;"
    const/4 v14, 0x0

    .line 814
    .local v14, "cursor":Landroid/database/Cursor;
    const/16 v2, 0x9

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "calendar_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " IN ("

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 817
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " AND "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "c_folder_id"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, " in ("

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 822
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    .line 814
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 825
    .local v7, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v5, "tb_event_v3"

    sget-object v6, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 834
    if-nez v14, :cond_8

    .line 858
    if-eqz v14, :cond_7

    .line 859
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 838
    :cond_8
    :goto_3
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 839
    new-instance v16, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/android/calendar/db/entry/EntryEvent;-><init>()V

    .line 840
    .local v16, "entryEvent":Lcom/alibaba/android/calendar/db/entry/EntryEvent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->fillWithCursor(Landroid/database/Cursor;)V

    .line 842
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mCalendarId:J

    .line 13096
    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 842
    if-nez v2, :cond_9

    .line 843
    invoke-static/range {v16 .. v16}, Lasc;->a(Lcom/alibaba/android/calendar/db/entry/EntryEvent;)Lasc;

    move-result-object v12

    .line 844
    .local v12, "calendarObject":Lasc;
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mCalendarId:J

    invoke-virtual {v13, v2, v3, v12}, Lfp;->b(JLjava/lang/Object;)V

    .line 847
    .end local v12    # "calendarObject":Lasc;
    :cond_9
    invoke-static/range {v16 .. v16}, Lary;->a(Lcom/alibaba/android/calendar/db/entry/EntryEvent;)Lary;

    move-result-object v11

    .line 849
    .local v11, "calendarEventObject":Lary;
    if-eqz v11, :cond_8

    .line 850
    invoke-virtual {v11}, Lary;->c()J

    move-result-wide v2

    .line 14096
    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 850
    if-eqz v2, :cond_8

    .line 851
    invoke-virtual {v11}, Lary;->c()J

    move-result-wide v2

    .line 15096
    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 851
    check-cast v2, Lasc;

    invoke-virtual {v2}, Lasc;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 852
    invoke-virtual {v11}, Lary;->c()J

    move-result-wide v2

    .line 16096
    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 852
    check-cast v2, Lasc;

    invoke-virtual {v2}, Lasc;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 855
    .end local v7    # "selection":Ljava/lang/String;
    .end local v11    # "calendarEventObject":Lary;
    .end local v16    # "entryEvent":Lcom/alibaba/android/calendar/db/entry/EntryEvent;
    :catch_0
    move-exception v15

    .line 856
    .local v15, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v2, "queryInstance failed"

    invoke-static {v2, v15}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 858
    if-eqz v14, :cond_a

    .line 859
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 863
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :cond_a
    :goto_4
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v19, "ret":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v13}, Lfp;->a()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_d

    .line 865
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lfp;->b(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 858
    .end local v19    # "ret":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    .restart local v7    # "selection":Ljava/lang/String;
    :cond_b
    if-eqz v14, :cond_a

    .line 859
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 858
    .end local v7    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_c

    .line 859
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 868
    .restart local v19    # "ret":Ljava/util/List;, "Ljava/util/List<Lasc;>;"
    :cond_d
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceCalendarImpl] queryCalendarByCalendarDBQueryParam size="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 869
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", costTime="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 868
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "DataSourceCalendarV2"

    return-object v0
.end method
