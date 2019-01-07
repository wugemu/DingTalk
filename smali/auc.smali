.class public Lauc;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceFolderImpl.java"

# interfaces
.implements Latv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lauc;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lauc;

    .prologue
    .line 24
    iget-object v0, p0, Lauc;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(JLjava/util/List;)I
    .locals 9
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lasl;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "folderObjects":Ljava/util/List;, "Ljava/util/List<Lasl;>;"
    const/4 v0, 0x0

    .line 35
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 41
    .local v6, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v0, p0, Lauc;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lauc;->m()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lauc$1;

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lauc$1;-><init>(Lauc;Ljava/util/List;JLjava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v2}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 75
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(J)Ljava/util/List;
    .locals 15
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lasl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v13, "folderObjectList":Ljava/util/List;, "Ljava/util/List<Lasl;>;"
    const/4 v9, 0x0

    .line 84
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lauc;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lauc;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryFolder;

    const-string/jumbo v3, "tb_folder"

    sget-object v4, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "c_group_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "=?"

    aput-object v7, v5, v6

    .line 88
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 89
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 84
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 93
    if-eqz v9, :cond_2

    .line 94
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    new-instance v11, Lcom/alibaba/android/calendar/db/entry/EntryFolder;

    invoke-direct {v11}, Lcom/alibaba/android/calendar/db/entry/EntryFolder;-><init>()V

    .line 96
    .local v11, "entryFolder":Lcom/alibaba/android/calendar/db/entry/EntryFolder;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->fillWithCursor(Landroid/database/Cursor;)V

    .line 98
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->toFolderObject()Lasl;

    move-result-object v12

    .line 99
    .local v12, "folderObject":Lasl;
    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 104
    .end local v11    # "entryFolder":Lcom/alibaba/android/calendar/db/entry/EntryFolder;
    .end local v12    # "folderObject":Lasl;
    :catch_0
    move-exception v10

    .line 105
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "[DataSourceFolder]retrieve cursor failed"

    invoke-static {v0, v10}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    if-eqz v9, :cond_1

    .line 108
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 112
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 113
    return-object v13

    .line 107
    :cond_2
    if-eqz v9, :cond_1

    .line 108
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 108
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "DataSourceFolder"

    return-object v0
.end method
