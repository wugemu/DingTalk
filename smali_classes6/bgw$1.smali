.class final Lbgw$1;
.super Ljava/lang/Object;
.source "DataSourceDingUnReadCountImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgw;->a(Lbfb;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lbgw;


# direct methods
.method constructor <init>(Lbgw;Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lbgw;

    .prologue
    .line 71
    iput-object p1, p0, Lbgw$1;->c:Lbgw;

    iput-object p2, p0, Lbgw$1;->a:Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;

    iput-object p3, p0, Lbgw$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 74
    const/4 v7, 0x0

    .line 77
    .local v7, "statementUnReadCount":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v0, p0, Lbgw$1;->c:Lbgw;

    invoke-static {v0}, Lbgw;->a(Lbgw;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;

    const-string/jumbo v3, "tb_ding_unread_count"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lbgw$1;->c:Lbgw;

    invoke-static {v0}, Lbgw;->b(Lbgw;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;

    const-class v3, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;

    const-string/jumbo v4, "tb_ding_unread_count"

    .line 85
    invoke-static {v3, v4}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v7

    .line 86
    iget-object v0, p0, Lbgw$1;->a:Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 88
    invoke-interface {v7}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 89
    invoke-interface {v7}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 91
    iget-object v0, p0, Lbgw$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v7}, Lbgw;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 96
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v6

    .line 93
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "[DataSourceDingUnReadCountImpl]save failed"

    invoke-static {v0, v6}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-static {v7}, Lbgw;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lbgw;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v0
.end method
