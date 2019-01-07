.class final Lbgr$1;
.super Ljava/lang/Object;
.source "DataSourceDingCommentRemindImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgr;->a(Lbeq;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lbgr;


# direct methods
.method constructor <init>(Lbgr;Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lbgr;

    .prologue
    .line 62
    iput-object p1, p0, Lbgr$1;->c:Lbgr;

    iput-object p2, p0, Lbgr$1;->a:Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

    iput-object p3, p0, Lbgr$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

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
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v2, p0, Lbgr$1;->c:Lbgr;

    invoke-static {v2}, Lbgr;->a(Lbgr;)Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

    const-class v5, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

    const-string/jumbo v6, "tb_ding_comment_remind"

    .line 68
    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lbgr$1;->a:Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 71
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 72
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 74
    iget-object v2, p0, Lbgr$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {v1}, Lbgr;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 79
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v2, "[DataSourceCommentRemind]merge failed"

    invoke-static {v2, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-static {v1}, Lbgr;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lbgr;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2
.end method
