.class final Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;
.super Ljava/lang/Object;
.source "DataSourceCalendarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;Ljava/util/List;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;->d:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    iput-object p2, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;->b:Ljava/util/Set;

    iput-object p4, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 80
    const/4 v13, 0x0

    .line 82
    .local v13, "statementEntryEvent":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;->d:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v2

    .line 83
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-class v5, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v6, "tb_event_v3"

    .line 85
    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v13

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lasc;

    .line 88
    .local v9, "calendarObject":Lasc;
    if-eqz v9, :cond_0

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;->b:Ljava/util/Set;

    .line 1188
    iget-object v3, v9, Lasc;->n:Ljava/lang/String;

    .line 92
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;->d:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->b(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v5, "tb_event_v3"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v15, "calendar_id"

    aput-object v15, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v15, "=? AND "

    aput-object v15, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v15, "c_folder_id"

    aput-object v15, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v15, "=?"

    aput-object v15, v6, v7

    .line 97
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 98
    invoke-virtual {v9}, Lasc;->b()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v15

    const/4 v15, 0x1

    .line 2188
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 98
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v15

    .line 94
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;->d:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->c(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    const-string/jumbo v5, "tb_instance_v2"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v15, "calendar_id"

    aput-object v15, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v15, "=? AND "

    aput-object v15, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v15, "folder_id"

    aput-object v15, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v15, "=?"

    aput-object v15, v6, v7

    .line 103
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 104
    invoke-virtual {v9}, Lasc;->b()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v15

    const/4 v15, 0x1

    .line 3188
    iget-object v0, v9, Lasc;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 104
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v15

    .line 100
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4188
    iget-object v2, v9, Lasc;->n:Ljava/lang/String;

    .line 108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    const-string/jumbo v2, "save invalid calendar data, folderId is empty"

    invoke-static {v2}, Lawm;->a(Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-virtual {v9}, Lasc;->c()Ljava/util/List;

    move-result-object v12

    .line 113
    .local v12, "events":Ljava/util/List;, "Ljava/util/List<Lasx;>;"
    if-eqz v12, :cond_0

    .line 116
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lasx;

    .line 117
    .local v8, "baseEvent":Lasx;
    instance-of v3, v8, Lary;

    if-eqz v3, :cond_2

    .line 120
    check-cast v8, Lary;

    .end local v8    # "baseEvent":Lasx;
    invoke-static {v9, v8}, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->fromEventObject(Lasc;Lary;)Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    move-result-object v11

    .line 121
    .local v11, "entryEvent":Lcom/alibaba/android/calendar/db/entry/EntryEvent;
    if-eqz v11, :cond_2

    .line 124
    invoke-virtual {v11, v13}, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 125
    invoke-interface {v13}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 126
    invoke-interface {v13}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 130
    .end local v9    # "calendarObject":Lasc;
    .end local v11    # "entryEvent":Lcom/alibaba/android/calendar/db/entry/EntryEvent;
    .end local v12    # "events":Ljava/util/List;, "Ljava/util/List<Lasx;>;"
    :catch_0
    move-exception v10

    .line 131
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v2, "save calendars failed"

    .line 5063
    const-string/jumbo v3, "-1"

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 6054
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, ", code:"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, ", reason:"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v4, v5, v6

    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    .line 6056
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v5, v6, :cond_3

    .line 6059
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v5

    invoke-static {v2, v3, v4}, Lawm;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhzu;

    move-result-object v2

    invoke-virtual {v5, v2}, Lhzr;->b(Lhzu;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_3
    invoke-static {v13}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 134
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-void

    .line 128
    .restart local v9    # "calendarObject":Lasc;
    .restart local v12    # "events":Ljava/util/List;, "Ljava/util/List<Lasx;>;"
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 133
    .end local v9    # "calendarObject":Lasc;
    .end local v12    # "events":Ljava/util/List;, "Ljava/util/List<Lasx;>;"
    :catchall_0
    move-exception v2

    invoke-static {v13}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2

    :cond_5
    invoke-static {v13}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_2
.end method
