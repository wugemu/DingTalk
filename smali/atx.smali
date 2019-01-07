.class public Latx;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceFolderExtraImpl.java"

# interfaces
.implements Latw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Latx;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Latx;

    .prologue
    .line 23
    iget-object v0, p0, Latx;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;)I
    .locals 5
    .param p1, "entryFolderExtra"    # Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 68
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return v1

    .line 72
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[DataSourceFolderExtra] save "

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 75
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Latx;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Latx;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Latx$1;

    invoke-direct {v3, p0, p1, v0}, Latx$1;-><init>(Latx;Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    .locals 13
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v11

    .line 38
    :cond_1
    const/4 v11, 0x0

    .line 39
    .local v11, "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    const/4 v9, 0x0

    .line 41
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Latx;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Latx;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    const-string/jumbo v3, "tb_folder_extra_v2"

    sget-object v4, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "e_folder_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, " = ? "

    aput-object v7, v5, v6

    .line 45
    invoke-static {v5}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 41
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 50
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    new-instance v12, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    invoke-direct {v12}, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v11    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    .local v12, "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    :try_start_1
    invoke-virtual {v12, v9}, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->fillWithCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v12

    .line 57
    .end local v12    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    .restart local v11    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    :cond_2
    if-eqz v9, :cond_0

    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 54
    :catch_0
    move-exception v10

    .line 55
    .local v10, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_2
    const-string/jumbo v0, "[DataSourceFolderExtra]query failed"

    invoke-static {v0, v10}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    if-eqz v9, :cond_0

    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 57
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_3

    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 57
    .end local v11    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    .restart local v12    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    .restart local v11    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    goto :goto_2

    .line 54
    .end local v11    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    .restart local v12    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    .restart local v11    # "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 10
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DataSourceFolderExtra] delete "

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 103
    .local v6, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "e_folder_id"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 104
    const-string/jumbo v0, " = ? "

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 106
    const/4 v8, 0x0

    .line 108
    .local v8, "ret":I
    :try_start_0
    iget-object v0, p0, Latx;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Latx;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    const-string/jumbo v3, "tb_folder_extra_v2"

    .line 111
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 116
    :goto_0
    return v8

    .line 113
    :catch_0
    move-exception v7

    .line 114
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "[DataSourceFolderExtra]delete failed"

    invoke-static {v0, v7}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "DataSourceFolderExtra"

    return-object v0
.end method
