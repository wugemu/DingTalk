.class final Latt$1;
.super Ljava/lang/Object;
.source "DataSourceAliMailFolderSelectExtraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latt;->a(Larp;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larp;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Latt;


# direct methods
.method constructor <init>(Latt;Larp;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Latt;

    .prologue
    .line 41
    iput-object p1, p0, Latt$1;->c:Latt;

    iput-object p2, p0, Latt$1;->a:Larp;

    iput-object p3, p0, Latt$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

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
    .line 44
    const/4 v2, 0x0

    .line 46
    .local v2, "statementEntryFolder":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Latt$1;->c:Latt;

    invoke-static {v3}, Latt;->a(Latt;)Lcom/alibaba/bee/DBManager;

    move-result-object v3

    .line 47
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;

    const-class v6, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;

    const-string/jumbo v7, "tb_ali_mail_folder_select_extra"

    .line 49
    invoke-static {v6, v7}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 52
    iget-object v3, p0, Latt$1;->a:Larp;

    invoke-static {v3}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;->from(Larp;)Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;

    move-result-object v1

    .line 53
    .local v1, "entryFolder":Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;
    invoke-virtual {v1, v2}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 54
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 55
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 56
    iget-object v3, p0, Latt$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {v2}, Latt;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 61
    .end local v1    # "entryFolder":Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolderSelectExtra;
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v3, "[DataSourceAliMailFolderSelectExtra] save failed"

    invoke-static {v3, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {v2}, Latt;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Latt;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method
