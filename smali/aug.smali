.class public Laug;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceHolidayArrangementImpl.java"

# interfaces
.implements Lauf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Laug;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Laug;

    .prologue
    .line 17
    iget-object v0, p0, Laug;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Lasn;)I
    .locals 6
    .param p1, "holidayArrangementResultObject"    # Lasn;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 28
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return v2

    .line 31
    :cond_0
    new-instance v0, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;-><init>()V

    .line 32
    .local v0, "entryHolidayArrangements":Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;->fromHolidayArrangementResultObject(Lasn;)V

    .line 33
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 34
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Laug;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laug;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Laug$1;

    invoke-direct {v4, p0, v0, v1}, Laug$1;-><init>(Laug;Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public final a()Lasn;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 59
    iget-object v0, p0, Laug;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laug;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;

    const-string/jumbo v3, "tb_ding_holiday_arrangement"

    sget-object v4, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;->ALL_COLUMNS:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 67
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 69
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v11, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;

    invoke-direct {v11}, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;-><init>()V

    .line 71
    .local v11, "entryHolidayArrangements":Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;->fillWithCursor(Landroid/database/Cursor;)V

    .line 72
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;->toHolidayArrangementResultObject()Lasn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 77
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 80
    .end local v11    # "entryHolidayArrangements":Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;
    :cond_0
    :goto_0
    return-object v5

    .line 77
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 74
    :catch_0
    move-exception v10

    .line 75
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "query holiday failed"

    invoke-static {v0, v10}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "DataSourceHolidayArrangement"

    return-object v0
.end method
