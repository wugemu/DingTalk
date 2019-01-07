.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;
.super Ljava/lang/Object;
.source "SQLiteSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final TRANSACTION_MODE_DEFERRED:I = 0x0

.field public static final TRANSACTION_MODE_EXCLUSIVE:I = 0x2

.field public static final TRANSACTION_MODE_IMMEDIATE:I = 0x1


# instance fields
.field private mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

.field private mConnectionFlags:I

.field private final mConnectionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

.field private mConnectionUseCount:I

.field private mTransactionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

.field private mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;)V
    .locals 2
    .param p1, "connectionPool"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    if-nez p1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "connectionPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    .line 239
    return-void
.end method

.method private acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .prologue
    .line 917
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-nez v0, :cond_1

    .line 918
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 921
    iput p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 923
    :cond_1
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    .line 924
    return-void
.end method

.method private beginTransactionUnchecked(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V
    .locals 5
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_0

    .line 319
    invoke-direct {p0, v3, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 324
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_1

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 336
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string/jumbo v3, "BEGIN;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 344
    :try_start_1
    invoke-interface {p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->obtainTransaction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    move-result-object v1

    .line 355
    .local v1, "transaction":Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iput-object v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 356
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_3

    .line 359
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    .line 362
    :cond_3
    return-void

    .line 328
    .end local v1    # "transaction":Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    :pswitch_0
    :try_start_3
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string/jumbo v3, "BEGIN IMMEDIATE;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-nez v3, :cond_4

    .line 359
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    :cond_4
    throw v2

    .line 332
    :pswitch_1
    :try_start_4
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string/jumbo v3, "BEGIN EXCLUSIVE;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_5

    .line 347
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string/jumbo v3, "ROLLBACK;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    :cond_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private endTransactionUnchecked(Ljava/lang/Object;Z)V
    .locals 8
    .param p1, "cancellationSignal"    # Ljava/lang/Object;
    .param p2, "yielding"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 421
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 422
    .local v4, "top":Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    iget-boolean v6, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v6, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    iget-boolean v6, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-nez v6, :cond_3

    move v3, v5

    .line 424
    .local v3, "successful":Z
    :goto_0
    const/4 v2, 0x0

    .line 425
    .local v2, "listenerException":Ljava/lang/RuntimeException;
    iget-object v1, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 426
    .local v1, "listener":Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    if-eqz v1, :cond_1

    .line 428
    if-eqz v3, :cond_4

    .line 429
    :try_start_0
    invoke-interface {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_1
    :goto_1
    iget-object v6, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iput-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 440
    invoke-direct {p0, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->recycleTransaction(Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;)V

    .line 442
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v6, :cond_5

    .line 443
    if-nez v3, :cond_2

    .line 444
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iput-boolean v5, v6, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    .line 458
    :cond_2
    :goto_2
    if-eqz v2, :cond_7

    .line 459
    throw v2

    .line 422
    .end local v1    # "listener":Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    .end local v2    # "listenerException":Ljava/lang/RuntimeException;
    .end local v3    # "successful":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 431
    .restart local v1    # "listener":Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    .restart local v2    # "listenerException":Ljava/lang/RuntimeException;
    .restart local v3    # "successful":Z
    :cond_4
    :try_start_1
    invoke-interface {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "ex":Ljava/lang/RuntimeException;
    move-object v2, v0

    .line 435
    const/4 v3, 0x0

    goto :goto_1

    .line 448
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    if-eqz v3, :cond_6

    .line 449
    :try_start_2
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string/jumbo v6, "COMMIT;"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_2

    .line 451
    :cond_6
    :try_start_3
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string/jumbo v6, "ROLLBACK;"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 454
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v5

    .line 461
    :cond_7
    return-void
.end method

.method private executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 895
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 896
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 911
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 898
    :pswitch_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->beginTransaction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V

    goto :goto_0

    .line 903
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->setTransactionSuccessful()V

    .line 904
    invoke-virtual {p0, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->endTransaction(Ljava/lang/Object;)V

    goto :goto_0

    .line 908
    :pswitch_2
    invoke-virtual {p0, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->endTransaction(Ljava/lang/Object;)V

    goto :goto_0

    .line 896
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private obtainTransaction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    .locals 4
    .param p1, "mode"    # I
    .param p2, "listener"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 961
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 962
    .local v0, "transaction":Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    if-eqz v0, :cond_0

    .line 963
    iget-object v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 964
    iput-object v3, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 965
    iput-boolean v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 966
    iput-boolean v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    .line 970
    :goto_0
    iput p1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 971
    iput-object p2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 972
    return-object v0

    .line 968
    :cond_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .end local v0    # "transaction":Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    invoke-direct {v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$1;)V

    .restart local v0    # "transaction":Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    goto :goto_0
.end method

.method private recycleTransaction(Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .prologue
    .line 976
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 977
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 978
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 979
    return-void
.end method

.method private releaseConnection()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 927
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 928
    :cond_0
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 929
    :cond_1
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-nez v0, :cond_2

    .line 931
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->releaseConnection(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 936
    :cond_2
    return-void

    .line 933
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    throw v0
.end method

.method private throwIfNestedTransaction()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->hasNestedTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this operation because a nested transaction is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_0
    return-void
.end method

.method private throwIfNoTransaction()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 939
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_0

    .line 940
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this operation because there is no current transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_0
    return-void
.end method

.method private throwIfTransactionMarkedSuccessful()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 946
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget-boolean v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-eqz v0, :cond_0

    .line 947
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_0
    return-void
.end method

.method private yieldTransactionUnchecked(JLjava/lang/Object;)Z
    .locals 7
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 544
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->shouldYieldConnection(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 545
    const/4 v3, 0x0

    .line 563
    :goto_0
    return v3

    .line 548
    :cond_0
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget v2, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 549
    .local v2, "transactionMode":I
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget-object v1, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 550
    .local v1, "listener":Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 551
    .local v0, "connectionFlags":I
    invoke-direct {p0, p3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->endTransactionUnchecked(Ljava/lang/Object;Z)V

    .line 553
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    .line 555
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_1
    :goto_1
    invoke-direct {p0, v2, v1, v0, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->beginTransactionUnchecked(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public final beginTransaction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V
    .locals 0
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 305
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->beginTransactionUnchecked(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V

    .line 307
    return-void
.end method

.method public final enableTrigger(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 1001
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1003
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->enableTrigger(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    .line 1006
    return-void

    .line 1005
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final endTransaction(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cancellationSignal"    # Ljava/lang/Object;

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 409
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 411
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->endTransactionUnchecked(Ljava/lang/Object;Z)V

    .line 412
    return-void
.end method

.method public final execute(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    :goto_0
    return-void

    .line 634
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 730
    if-nez p1, :cond_0

    .line 731
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    const/4 v0, 0x0

    .line 743
    :goto_0
    return-object v0

    .line 738
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 743
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 765
    if-nez p1, :cond_0

    .line 766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    const/4 v0, 0x0

    .line 778
    :goto_0
    return v0

    .line 773
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 778
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/alibaba/sqlcrypto/CursorWindow;IIZILjava/lang/Object;)I
    .locals 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Lcom/alibaba/sqlcrypto/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "connectionFlags"    # I
    .param p8, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 845
    if-nez p1, :cond_0

    .line 846
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sql must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 848
    :cond_0
    if-nez p3, :cond_1

    .line 849
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "window must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 852
    :cond_1
    move/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 853
    invoke-virtual {p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->clear()V

    .line 854
    const/4 v2, 0x0

    .line 863
    :goto_0
    return v2

    .line 857
    :cond_2
    move/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 859
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/alibaba/sqlcrypto/CursorWindow;IIZLjava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 863
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v2
.end method

.method public final executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 800
    if-nez p1, :cond_0

    .line 801
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    const-wide/16 v0, 0x0

    .line 813
    :goto_0
    return-wide v0

    .line 808
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 813
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 660
    if-nez p1, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    const-wide/16 v0, 0x0

    .line 672
    :goto_0
    return-wide v0

    .line 668
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 672
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final executeForString(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 694
    if-nez p1, :cond_0

    .line 695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    const/4 v0, 0x0

    .line 706
    :goto_0
    return-object v0

    .line 702
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 706
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final executeWithPrimaryConnectionLocked(ILcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I
    .locals 2
    .param p1, "connectionFlags"    # I
    .param p2, "databaseTask"    # Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 991
    invoke-interface {p2}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;->getSql()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 993
    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;->onExecute()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 995
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final hasConnection()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNestedTransaction()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTransaction()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final prepare(Ljava/lang/String;ILjava/lang/Object;Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Ljava/lang/Object;
    .param p4, "outStatementInfo"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 593
    if-nez p1, :cond_0

    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    .line 607
    return-void

    .line 606
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final setTransactionSuccessful()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 381
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 383
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 384
    return-void
.end method

.method public final yieldTransaction(JZLjava/lang/Object;)Z
    .locals 3
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "throwIfUnsafe"    # Z
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 517
    if-eqz p3, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 519
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 520
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfNestedTransaction()V

    .line 527
    :cond_0
    sget-boolean v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_0

    .line 533
    :cond_2
    :goto_0
    return v0

    .line 529
    :cond_3
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-nez v1, :cond_2

    .line 533
    invoke-direct {p0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->yieldTransactionUnchecked(JLjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
