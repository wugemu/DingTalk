.class final Lauc$1;
.super Ljava/lang/Object;
.source "DataSourceFolderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lauc;->a(JLjava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lauc;


# direct methods
.method constructor <init>(Lauc;Ljava/util/List;JLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .param p1, "this$0"    # Lauc;

    .prologue
    .line 41
    iput-object p1, p0, Lauc$1;->d:Lauc;

    iput-object p2, p0, Lauc$1;->a:Ljava/util/List;

    iput-wide p3, p0, Lauc$1;->b:J

    iput-object p5, p0, Lauc$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 44
    const/4 v3, 0x0

    .line 46
    .local v3, "statementEntryFolder":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lauc$1;->d:Lauc;

    invoke-static {v4}, Lauc;->a(Lauc;)Lcom/alibaba/bee/DBManager;

    move-result-object v4

    .line 47
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/calendar/db/entry/EntryFolder;

    const-class v7, Lcom/alibaba/android/calendar/db/entry/EntryFolder;

    const-string/jumbo v8, "tb_folder"

    .line 49
    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 51
    iget-object v4, p0, Lauc$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lasl;

    .line 52
    .local v2, "folderObject":Lasl;
    if-eqz v2, :cond_0

    .line 56
    iget-wide v6, p0, Lauc$1;->b:J

    invoke-static {v6, v7, v2}, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->fromCalendarObject(JLasl;)Lcom/alibaba/android/calendar/db/entry/EntryFolder;

    move-result-object v1

    .line 57
    .local v1, "entryFolder":Lcom/alibaba/android/calendar/db/entry/EntryFolder;
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1, v3}, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 61
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 62
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 64
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[DataSourceFolder]saveFolderObject"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lasl;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    .line 65
    iget-object v5, p0, Lauc$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    .end local v1    # "entryFolder":Lcom/alibaba/android/calendar/db/entry/EntryFolder;
    .end local v2    # "folderObject":Lasl;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v4, "saveFolderObject failed"

    invoke-static {v4, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    invoke-static {v3}, Lauc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 71
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 70
    :cond_1
    invoke-static {v3}, Lauc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v3}, Lauc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v4
.end method
