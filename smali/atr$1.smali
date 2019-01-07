.class final Latr$1;
.super Ljava/lang/Object;
.source "DataSourceAliMailFolderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latr;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Latr;


# direct methods
.method constructor <init>(Latr;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Latr;

    .prologue
    .line 39
    iput-object p1, p0, Latr$1;->c:Latr;

    iput-object p2, p0, Latr$1;->a:Ljava/util/List;

    iput-object p3, p0, Latr$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 42
    const/4 v9, 0x0

    .line 44
    .local v9, "statementEntryFolder":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v0, p0, Latr$1;->c:Latr;

    invoke-static {v0}, Latr;->a(Latr;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;

    const-class v3, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;

    const-string/jumbo v4, "tb_ali_mail_folder"

    .line 47
    invoke-static {v3, v4}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v9

    .line 49
    iget-object v0, p0, Latr$1;->c:Latr;

    invoke-static {v0}, Latr;->b(Latr;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;

    const-string/jumbo v3, "tb_ali_mail_folder"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Latr$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laro;

    .line 53
    .local v8, "folderObject":Laro;
    if-eqz v8, :cond_0

    .line 57
    invoke-static {v8}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->from(Laro;)Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;

    move-result-object v7

    .line 58
    .local v7, "entryAliMailFolder":Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;
    if-eqz v7, :cond_0

    .line 61
    invoke-virtual {v7, v9}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 62
    invoke-interface {v9}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 63
    invoke-interface {v9}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 65
    iget-object v1, p0, Latr$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    .end local v7    # "entryAliMailFolder":Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;
    .end local v8    # "folderObject":Laro;
    :catch_0
    move-exception v6

    .line 68
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "[DataSourceAliMailFolder]saveFolders failed"

    invoke-static {v0, v6}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    invoke-static {v9}, Latr;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 71
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 70
    :cond_1
    invoke-static {v9}, Latr;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v9}, Latr;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v0
.end method
