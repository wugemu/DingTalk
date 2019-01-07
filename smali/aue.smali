.class public Laue;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceFolderSelectExtraImpl.java"

# interfaces
.implements Laud;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Laue;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Laue;

    .prologue
    .line 24
    iget-object v0, p0, Laue;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic b(Laue;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Laue;

    .prologue
    .line 24
    iget-object v0, p0, Laue;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Lasm;)I
    .locals 5
    .param p1, "folderExtra"    # Lasm;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 40
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[DataSourceFolderSelectExtra] save "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Lasm;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 43
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Laue;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laue;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laue$1;

    invoke-direct {v3, p0, p1, v0}, Laue$1;-><init>(Laue;Lasm;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 67
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
            "Lasm;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 72
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v13, "folderSelectExtraList":Ljava/util/List;, "Ljava/util/List<Lasm;>;"
    const/4 v9, 0x0

    .line 75
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Laue;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laue;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;

    const-string/jumbo v3, "tb_folder_select_extra"

    sget-object v4, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 84
    if-eqz v9, :cond_1

    .line 86
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v11, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;

    invoke-direct {v11}, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;-><init>()V

    .line 88
    .local v11, "entry":Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;->fillWithCursor(Landroid/database/Cursor;)V

    .line 90
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;->toFolderSelectExtra()Lasm;

    move-result-object v12

    .line 91
    .local v12, "folderSelectExtra":Lasm;
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    .end local v11    # "entry":Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;
    .end local v12    # "folderSelectExtra":Lasm;
    :catch_0
    move-exception v10

    .line 95
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "[DataSourceFolderSelectExtra]retrieve cursor failed"

    invoke-static {v0, v10}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v9, :cond_0

    .line 98
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 102
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    return-object v13

    .line 97
    :cond_1
    if-eqz v9, :cond_0

    .line 98
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 98
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DataSourceFolderSelectExtra] clear folderId :"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Laue;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laue;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laue$2;

    invoke-direct {v2, p0, p1}, Laue$2;-><init>(Laue;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    goto :goto_0
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "DataSourceFolderSelectExtra"

    return-object v0
.end method
