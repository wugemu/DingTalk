.class final Lbhc$1;
.super Ljava/lang/Object;
.source "DataSourcePegDraftImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhc;->a(Lcom/alibaba/android/ding/db/entry/EntryPegDraft;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lbhc;


# direct methods
.method constructor <init>(Lbhc;Lcom/alibaba/android/ding/db/entry/EntryPegDraft;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lbhc;

    .prologue
    .line 29
    iput-object p1, p0, Lbhc$1;->c:Lbhc;

    iput-object p2, p0, Lbhc$1;->a:Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

    iput-object p3, p0, Lbhc$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v2, p0, Lbhc$1;->c:Lbhc;

    invoke-static {v2}, Lbhc;->a(Lbhc;)Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

    const-class v5, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

    const-string/jumbo v6, "tbdingpegdraft"

    .line 36
    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lbhc$1;->a:Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 38
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 39
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 40
    iget-object v2, p0, Lbhc$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {v1}, Lbhc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 45
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v2, "[DataSourcePegDraft]save failed"

    invoke-static {v2, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {v1}, Lbhc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lbhc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2
.end method
