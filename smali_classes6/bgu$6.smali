.class final Lbgu$6;
.super Ljava/lang/Object;
.source "DataSourceDingImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgu;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lbgu;


# direct methods
.method constructor <init>(Lbgu;Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lbgu;

    .prologue
    .line 1398
    iput-object p1, p0, Lbgu$6;->c:Lbgu;

    iput-object p2, p0, Lbgu$6;->a:Ljava/util/Collection;

    iput-object p3, p0, Lbgu$6;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1401
    const/4 v5, 0x0

    .line 1402
    .local v5, "statementEntryDing":Lcom/alibaba/bee/SQLiteStatement;
    const/4 v6, 0x0

    .line 1404
    .local v6, "statementEntryDingContent":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v7, p0, Lbgu$6;->c:Lbgu;

    invoke-static {v7}, Lbgu;->g(Lbgu;)Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/alibaba/android/ding/db/entry/EntryDing;

    const-class v10, Lcom/alibaba/android/ding/db/entry/EntryDing;

    const-string/jumbo v11, "tbdinglist"

    invoke-static {v10, v11}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v5

    .line 1405
    iget-object v7, p0, Lbgu$6;->c:Lbgu;

    invoke-static {v7}, Lbgu;->h(Lbgu;)Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/alibaba/android/ding/db/entry/EntryDingContent;

    const-class v10, Lcom/alibaba/android/ding/db/entry/EntryDingContent;

    const-string/jumbo v11, "tbdingcontent"

    invoke-static {v10, v11}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v6

    .line 1407
    new-instance v4, Lcom/alibaba/android/ding/db/entry/EntryDing;

    invoke-direct {v4}, Lcom/alibaba/android/ding/db/entry/EntryDing;-><init>()V

    .line 1408
    .local v4, "entryDing":Lcom/alibaba/android/ding/db/entry/EntryDing;
    new-instance v2, Lcom/alibaba/android/ding/db/entry/EntryDingContent;

    invoke-direct {v2}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;-><init>()V

    .line 1409
    .local v2, "dingContent":Lcom/alibaba/android/ding/db/entry/EntryDingContent;
    iget-object v7, p0, Lbgu$6;->a:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1411
    .local v1, "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v1, :cond_0

    .line 1415
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    .line 1417
    .local v0, "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    if-eqz v0, :cond_1

    .line 1419
    invoke-virtual {v4}, Lcom/alibaba/android/ding/db/entry/EntryDing;->reset()V

    .line 1420
    invoke-virtual {v4, v1}, Lcom/alibaba/android/ding/db/entry/EntryDing;->fromObjectDing(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1422
    invoke-virtual {v2}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->reset()V

    .line 1423
    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->fromObjectDingContent(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V

    .line 1424
    iget-object v8, v4, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingId:Ljava/lang/String;

    iput-object v8, v2, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->dingId:Ljava/lang/String;

    .line 1426
    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/db/entry/EntryDing;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 1428
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 1429
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 1431
    invoke-virtual {v2, v6}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 1433
    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 1434
    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 1436
    iget-object v8, p0, Lbgu$6;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1439
    :cond_1
    invoke-static {v1}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1441
    .end local v0    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    .end local v1    # "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .end local v2    # "dingContent":Lcom/alibaba/android/ding/db/entry/EntryDingContent;
    .end local v4    # "entryDing":Lcom/alibaba/android/ding/db/entry/EntryDing;
    :catch_0
    move-exception v3

    .line 1442
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v7, "save dings failed"

    invoke-static {v7, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1443
    iget-object v7, p0, Lbgu$6;->c:Lbgu;

    invoke-static {v7}, Lbgu;->i(Lbgu;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1445
    invoke-static {v5}, Lbgu;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 1446
    invoke-static {v6}, Lbgu;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 1447
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 1445
    .restart local v2    # "dingContent":Lcom/alibaba/android/ding/db/entry/EntryDingContent;
    .restart local v4    # "entryDing":Lcom/alibaba/android/ding/db/entry/EntryDing;
    :cond_2
    invoke-static {v5}, Lbgu;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 1446
    invoke-static {v6}, Lbgu;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    .line 1445
    .end local v2    # "dingContent":Lcom/alibaba/android/ding/db/entry/EntryDingContent;
    .end local v4    # "entryDing":Lcom/alibaba/android/ding/db/entry/EntryDing;
    :catchall_0
    move-exception v7

    invoke-static {v5}, Lbgu;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 1446
    invoke-static {v6}, Lbgu;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v7
.end method
