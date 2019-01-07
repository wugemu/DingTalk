.class final Laua$1;
.super Ljava/lang/Object;
.source "DataSourceFolderGroupExtraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laua;->a(JZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Laua;


# direct methods
.method constructor <init>(Laua;JZLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Laua;

    .prologue
    .line 38
    iput-object p1, p0, Laua$1;->d:Laua;

    iput-wide p2, p0, Laua$1;->a:J

    iput-boolean p4, p0, Laua$1;->b:Z

    iput-object p5, p0, Laua$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, "statementEntryFolderGroupExpend":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Laua$1;->d:Laua;

    invoke-static {v3}, Laua;->a(Laua;)Lcom/alibaba/bee/DBManager;

    move-result-object v3

    .line 44
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;

    const-class v6, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;

    const-string/jumbo v7, "tb_folder_group_extra"

    .line 46
    invoke-static {v6, v7}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 48
    iget-wide v4, p0, Laua$1;->a:J

    iget-boolean v3, p0, Laua$1;->b:Z

    invoke-static {v4, v5, v3}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;->from(JZ)Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;

    move-result-object v1

    .line 49
    .local v1, "entryFolderGroupExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;
    invoke-virtual {v1, v2}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 50
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 51
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 52
    iget-object v3, p0, Laua$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {v2}, Laua;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 57
    .end local v1    # "entryFolderGroupExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v3, "[DataSourceFolderGroupExtra]save failed"

    invoke-static {v3, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {v2}, Laua;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Laua;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method
