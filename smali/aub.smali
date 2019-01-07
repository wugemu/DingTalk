.class public Laub;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceFolderGroupImpl.java"

# interfaces
.implements Laty;


# instance fields
.field private a:Latv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 30
    new-instance v0, Lauc;

    invoke-direct {v0}, Lauc;-><init>()V

    iput-object v0, p0, Laub;->a:Latv;

    return-void
.end method

.method static synthetic a(Laub;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Laub;

    .prologue
    .line 27
    iget-object v0, p0, Laub;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic b(Laub;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Laub;

    .prologue
    .line 27
    iget-object v0, p0, Laub;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic c(Laub;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Laub;

    .prologue
    .line 27
    iget-object v0, p0, Laub;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic d(Laub;)Latv;
    .locals 1
    .param p0, "x0"    # Laub;

    .prologue
    .line 27
    iget-object v0, p0, Laub;->a:Latv;

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
            "Lask;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "folderGroupObjects":Ljava/util/List;, "Ljava/util/List<Lask;>;"
    const/4 v1, 0x0

    .line 39
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return v1

    .line 43
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 45
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Laub;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laub;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laub$1;

    invoke-direct {v3, p0, p1, v0}, Laub$1;-><init>(Laub;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 96
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lask;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 105
    :try_start_0
    iget-object v8, p0, Laub;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laub;->m()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;

    const-string/jumbo v11, "tb_folder_group_extra"

    invoke-virtual {v8, v9, v10, v11}, Lcom/alibaba/bee/DBManager;->createTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v5, "folderGroupObjectList":Ljava/util/List;, "Ljava/util/List<Lask;>;"
    const/4 v0, 0x0

    .line 113
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v8, 0xc

    :try_start_1
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "SELECT * FROM "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "tb_folder_group"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " left join "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "tb_folder_group_extra"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, " ON "

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "tb_folder_group"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "."

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string/jumbo v10, "c_group_id"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, " = "

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string/jumbo v10, "tb_folder_group_extra"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string/jumbo v10, "."

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string/jumbo v10, "e_group_id"

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "sql":Ljava/lang/String;
    iget-object v8, p0, Laub;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laub;->m()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v7, v11}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_2

    .line 126
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 127
    new-instance v2, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;

    invoke-direct {v2}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;-><init>()V

    .line 128
    .local v2, "entryFolderGroup":Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;
    invoke-virtual {v2, v0}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;->fillWithCursor(Landroid/database/Cursor;)V

    .line 130
    new-instance v3, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;

    invoke-direct {v3}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;-><init>()V

    .line 131
    .local v3, "entryFolderGroupExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;
    invoke-virtual {v3, v0}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;->fillWithCursor(Landroid/database/Cursor;)V

    .line 133
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;->toFolderGroupObject()Lask;

    move-result-object v4

    .line 134
    .local v4, "folderGroupObject":Lask;
    iget-boolean v8, v3, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;->mIsFolded:Z

    .line 1104
    iput-boolean v8, v4, Lask;->f:Z

    .line 136
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 137
    iget-object v8, p0, Laub;->a:Latv;

    .line 2084
    iget-wide v10, v4, Lask;->d:J

    .line 137
    invoke-interface {v8, v10, v11}, Latv;->a(J)Ljava/util/List;

    move-result-object v6

    .line 138
    .local v6, "folderObjects":Ljava/util/List;, "Ljava/util/List<Lasl;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 141
    invoke-virtual {v4, v6}, Lask;->a(Ljava/util/List;)V

    .line 142
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 146
    .end local v2    # "entryFolderGroup":Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;
    .end local v3    # "entryFolderGroupExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;
    .end local v4    # "folderGroupObject":Lask;
    .end local v6    # "folderObjects":Ljava/util/List;, "Ljava/util/List<Lasl;>;"
    .end local v7    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v8, 0x2

    :try_start_2
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[DataSourceFolderGroup]retrieve cursor failed"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 148
    const-string/jumbo v8, "[DataSourceFolderGroup]retrieve cursor failed"

    invoke-static {v8, v1}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 155
    return-object v5

    .line 106
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v5    # "folderGroupObjectList":Ljava/util/List;, "Ljava/util/List<Lask;>;"
    :catch_1
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v8, "create FolderGroupExtra table failed"

    invoke-static {v8, v1}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 150
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "folderGroupObjectList":Ljava/util/List;, "Ljava/util/List<Lask;>;"
    .restart local v7    # "sql":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 150
    .end local v7    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_3

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v8
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "DataSourceFolderGroup"

    return-object v0
.end method
