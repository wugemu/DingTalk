.class final Laub$1;
.super Ljava/lang/Object;
.source "DataSourceFolderGroupImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laub;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Laub;


# direct methods
.method constructor <init>(Laub;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Laub;

    .prologue
    .line 45
    iput-object p1, p0, Laub$1;->c:Laub;

    iput-object p2, p0, Laub$1;->a:Ljava/util/List;

    iput-object p3, p0, Laub$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 48
    const/4 v12, 0x0

    .line 50
    .local v12, "statementEntryFolderGroup":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v0, p0, Laub$1;->c:Laub;

    invoke-static {v0}, Laub;->a(Laub;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;

    const-class v3, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;

    const-string/jumbo v4, "tb_folder_group"

    .line 53
    invoke-static {v3, v4}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v12

    .line 56
    iget-object v0, p0, Laub$1;->c:Laub;

    invoke-static {v0}, Laub;->b(Laub;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;

    const-string/jumbo v3, "tb_folder_group"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Laub$1;->c:Laub;

    invoke-static {v0}, Laub;->c(Laub;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryFolder;

    const-string/jumbo v3, "tb_folder"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Laub$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lask;

    .line 62
    .local v8, "folderGroupObject":Lask;
    if-eqz v8, :cond_0

    .line 1059
    iget-object v9, v8, Lask;->b:Ljava/util/List;

    .line 67
    .local v9, "folderObjectList":Ljava/util/List;, "Ljava/util/List<Lasl;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-static {v8}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;->fromCalendarObject(Lask;)Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;

    move-result-object v7

    .line 72
    .local v7, "entryFolderGroup":Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;
    if-eqz v7, :cond_0

    .line 75
    invoke-virtual {v7, v12}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 76
    invoke-interface {v12}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 77
    invoke-interface {v12}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 78
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DataSourceFolderGroup]saveFolderGroup"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v8}, Lask;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 80
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 81
    .local v10, "folderSize":I
    iget-object v1, p0, Laub$1;->c:Laub;

    invoke-static {v1}, Laub;->d(Laub;)Latv;

    move-result-object v1

    .line 1084
    iget-wide v2, v8, Lask;->d:J

    .line 81
    invoke-interface {v1, v2, v3, v9}, Latv;->a(JLjava/util/List;)I

    move-result v11

    .line 82
    .local v11, "saveFolderSize":I
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DataSourceFolderGroup]save totalSize:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 83
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", saveSize:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 85
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 82
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Laub$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    .end local v7    # "entryFolderGroup":Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;
    .end local v8    # "folderGroupObject":Lask;
    .end local v9    # "folderObjectList":Ljava/util/List;, "Ljava/util/List<Lasl;>;"
    .end local v10    # "folderSize":I
    .end local v11    # "saveFolderSize":I
    :catch_0
    move-exception v6

    .line 89
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "[DataSourceFolderGroup]saveFolderGroups failed"

    invoke-static {v0, v6}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-static {v12}, Laub;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 92
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 91
    :cond_1
    invoke-static {v12}, Laub;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v12}, Laub;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v0
.end method
