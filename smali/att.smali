.class public final Latt;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceAliMailFolderSelectExtraImpl.java"

# interfaces
.implements Lats;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Latt;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Latt;

    .prologue
    .line 22
    iget-object v0, p0, Latt;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Larp;)I
    .locals 5
    .param p1, "folderExtra"    # Larp;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 38
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[DataSourceAliMailFolderSelectExtra] save "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Larp;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 41
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Latt;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Latt;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Latt$1;

    invoke-direct {v3, p0, p1, v0}, Latt$1;-><init>(Latt;Larp;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 65
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
            "Larp;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 71
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v13, "folderSelectExtraList":Ljava/util/List;, "Ljava/util/List<Larp;>;"
    const/4 v9, 0x0

    .line 74
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Latt;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Latt;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;

    const-string/jumbo v3, "tb_ali_mail_folder_select_extra"

    sget-object v4, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 83
    if-eqz v9, :cond_1

    .line 85
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v11, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;

    invoke-direct {v11}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;-><init>()V

    .line 87
    .local v11, "entry":Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;->fillWithCursor(Landroid/database/Cursor;)V

    .line 89
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;->toFolderSelectExtra()Larp;

    move-result-object v12

    .line 90
    .local v12, "folderSelectExtra":Larp;
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v11    # "entry":Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;
    .end local v12    # "folderSelectExtra":Larp;
    :catch_0
    move-exception v10

    .line 94
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "[DataSourceAliMailFolderSelectExtra]retrieve cursor failed"

    invoke-static {v0, v10}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    if-eqz v9, :cond_0

    .line 97
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 101
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    return-object v13

    .line 96
    :cond_1
    if-eqz v9, :cond_0

    .line 97
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 97
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "DataSourceAliMailFolderSelectExtra"

    return-object v0
.end method
