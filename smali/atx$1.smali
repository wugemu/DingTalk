.class final Latx$1;
.super Ljava/lang/Object;
.source "DataSourceFolderExtraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latx;->a(Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Latx;


# direct methods
.method constructor <init>(Latx;Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Latx;

    .prologue
    .line 75
    iput-object p1, p0, Latx$1;->c:Latx;

    iput-object p2, p0, Latx$1;->a:Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    iput-object p3, p0, Latx$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v2, p0, Latx$1;->c:Latx;

    invoke-static {v2}, Latx;->a(Latx;)Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    const-class v5, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    const-string/jumbo v6, "tb_folder_extra_v2"

    .line 82
    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v1

    .line 83
    iget-object v2, p0, Latx$1;->a:Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 84
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 85
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 86
    iget-object v2, p0, Latx$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {v1}, Latx;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 92
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v2, "[DataSourceFolderExtra]save failed"

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-static {v1}, Latx;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Latx;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2
.end method
