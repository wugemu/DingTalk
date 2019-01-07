.class public final Latr;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceAliMailFolderImpl.java"

# interfaces
.implements Latq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Latr;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Latr;

    .prologue
    .line 21
    iget-object v0, p0, Latr;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic b(Latr;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Latr;

    .prologue
    .line 21
    iget-object v0, p0, Latr;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laro;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    .local p1, "folderObjects":Ljava/util/List;, "Ljava/util/List<Laro;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 39
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Latr;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Latr;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Latr$1;

    invoke-direct {v3, p0, p1, v0}, Latr$1;-><init>(Latr;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public final a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laro;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 81
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v13, "folderSelectExtraList":Ljava/util/List;, "Ljava/util/List<Laro;>;"
    const/4 v10, 0x0

    .line 84
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Latr;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Latr;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;

    const-string/jumbo v3, "tb_ali_mail_folder"

    sget-object v4, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 93
    if-eqz v10, :cond_1

    .line 94
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-instance v12, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;

    invoke-direct {v12}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;-><init>()V

    .line 96
    .local v12, "entry":Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;
    invoke-virtual {v12, v10}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->fillWithCursor(Landroid/database/Cursor;)V

    .line 98
    invoke-virtual {v12}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->toAliMailFolder()Laro;

    move-result-object v9

    .line 99
    .local v9, "aliMailFolder":Laro;
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    .end local v9    # "aliMailFolder":Laro;
    .end local v12    # "entry":Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;
    :catch_0
    move-exception v11

    .line 103
    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "[DataSourceAliMailFolder] queryFolders failed"

    invoke-static {v0, v11}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    if-eqz v10, :cond_0

    .line 106
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 110
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    return-object v13

    .line 105
    :cond_1
    if-eqz v10, :cond_0

    .line 106
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 106
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Latr;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Latr;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;

    const-string/jumbo v3, "tb_ali_mail_folder"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "[DataSourceAliMailFolder] clear failed"

    invoke-static {v0, v6}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "DataSourceAliMailFolder"

    return-object v0
.end method
