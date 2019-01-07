.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;,
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONNECTION_FLAG_INTERACTIVE:I = 0x4

.field public static final CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY:I = 0x2

.field public static final CONNECTION_FLAG_READ_ONLY:I = 0x1

.field private static final CONNECTION_POOL_BUSY_MILLIS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "SQLiteConnectionPool"


# instance fields
.field private final mAcquiredConnections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableNonPrimaryConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

.field private final mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

.field private final mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionWaiterPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mMaxConnectionPoolSize:I

.field private mNextConnectionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 152
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .line 153
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 154
    return-void
.end method

.method private cancelConnectionWaiterLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 3
    .param p1, "waiter"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 717
    iget-object v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    const/4 v1, 0x0

    .line 724
    .local v1, "predecessor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 725
    .local v0, "current":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_1
    if-eq v0, p1, :cond_3

    .line 726
    sget-boolean v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 727
    :cond_2
    move-object v1, v0

    .line 728
    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_1

    .line 730
    :cond_3
    if-eqz v1, :cond_4

    .line 731
    iget-object v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 737
    :goto_2
    new-instance v2, Lcom/alibaba/sqlcrypto/OperationCanceledException;

    invoke-direct {v2}, Lcom/alibaba/sqlcrypto/OperationCanceledException;-><init>()V

    iput-object v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 738
    iget-object v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 741
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    goto :goto_0

    .line 733
    :cond_4
    iget-object v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_2
.end method

.method private closeAvailableConnectionsAndLogExceptionsLocked()V
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 504
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 508
    :cond_0
    return-void
.end method

.method private closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 512
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 513
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 514
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 517
    return-void
.end method

.method private closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V
    .locals 4
    .param p1, "connection"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 532
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to close connection, its fate is now in the hands of the merciful GC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private closeExcessConnectionsAndLogExceptionsLocked()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 521
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    .local v0, "availableCount":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "availableCount":I
    .local v1, "availableCount":I
    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_0

    .line 523
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 525
    .local v2, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    move v0, v1

    .line 526
    .end local v1    # "availableCount":I
    .restart local v0    # "availableCount":I
    goto :goto_0

    .line 527
    .end local v0    # "availableCount":I
    .end local v2    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .restart local v1    # "availableCount":I
    :cond_0
    return-void
.end method

.method private discardAcquiredConnectionsLocked()V
    .locals 1

    .prologue
    .line 541
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 542
    return-void
.end method

.method private dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    if-nez p1, :cond_1

    .line 224
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 229
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 231
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    .line 232
    .local v0, "pendingCount":I
    if-eqz v0, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The connection pool for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " has been closed but there are still "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " connections in use.  They will be closed as they are released back to the pool."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 240
    monitor-exit v2

    .line 242
    .end local v0    # "pendingCount":I
    :cond_1
    return-void

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V
    .locals 5
    .param p1, "connection"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 916
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 917
    .local v1, "readOnly":Z
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setOnlyAllowReadOnlyOperations(Z)V

    .line 919
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    sget-object v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    return-void

    .line 916
    .end local v1    # "readOnly":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 920
    .restart local v1    # "readOnly":Z
    :catch_0
    move-exception v0

    .line 921
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "SQLiteConnectionPool"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to prepare acquired connection for session, closing it: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", connectionFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 924
    throw v0
.end method

.method private static getPriority(I)I
    .locals 1
    .param p0, "connectionFlags"    # I

    .prologue
    .line 953
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSessionBlockingImportantConnectionWaitersLocked(ZI)Z
    .locals 3
    .param p1, "holdingPrimaryConnection"    # Z
    .param p2, "connectionFlags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 930
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 931
    .local v1, "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v1, :cond_3

    .line 932
    invoke-static {p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v0

    .line 935
    .local v0, "priority":I
    :cond_0
    iget v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-gt v0, v2, :cond_3

    .line 942
    if-nez p1, :cond_1

    iget-boolean v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v2, :cond_2

    .line 943
    :cond_1
    const/4 v2, 0x1

    .line 949
    .end local v0    # "priority":I
    :goto_0
    return v2

    .line 946
    .restart local v0    # "priority":I
    :cond_2
    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 947
    if-nez v1, :cond_0

    .line 949
    .end local v0    # "priority":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private logConnectionPoolBusyLocked(JI)V
    .locals 13
    .param p1, "waitMillis"    # J
    .param p3, "connectionFlags"    # I

    .prologue
    .line 746
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 747
    .local v8, "thread":Ljava/lang/Thread;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 748
    .local v5, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "The connection pool for database \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v10, v10, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const-string/jumbo v9, "\' has been unable to grant a connection to thread "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string/jumbo v9, "with flags 0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const-string/jumbo v9, " for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    long-to-float v10, p1

    const v11, 0x3a83126f    # 0.001f

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " seconds.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v7, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 756
    .local v0, "activeConnections":I
    const/4 v4, 0x0

    .line 757
    .local v4, "idleConnections":I
    iget-object v9, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 758
    iget-object v9, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 759
    .local v2, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->describeCurrentOperationUnsafe()Ljava/lang/String;

    move-result-object v3

    .line 760
    .local v3, "description":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 761
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 764
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 766
    goto :goto_0

    .line 768
    .end local v2    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v3    # "description":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 769
    .local v1, "availableConnections":I
    iget-object v9, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v9, :cond_2

    .line 770
    add-int/lit8 v1, v1, 0x1

    .line 773
    :cond_2
    const-string/jumbo v9, "Connections: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " active, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " idle, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " available.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 778
    const-string/jumbo v9, "\nRequests in progress:\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 780
    .local v6, "request":Ljava/lang/String;
    const-string/jumbo v10, "  "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 784
    .end local v6    # "request":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "SQLiteConnectionPool"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void
.end method

.method private markAcquiredConnectionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V
    .locals 7
    .param p1, "status"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 576
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 577
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 578
    invoke-virtual {v5}, Ljava/util/WeakHashMap;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 580
    .local v2, "keysToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;>;"
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 581
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 582
    .local v3, "oldStatus":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-eq p1, v3, :cond_0

    sget-object v6, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-eq v3, v6, :cond_0

    .line 584
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v3    # "oldStatus":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 588
    .local v4, "updateCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 589
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 592
    .end local v1    # "i":I
    .end local v2    # "keysToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;>;"
    .end local v4    # "updateCount":I
    :cond_2
    return-void
.end method

.method private obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "startTime"    # J
    .param p4, "priority"    # I
    .param p5, "wantPrimaryConnection"    # Z
    .param p6, "sql"    # Ljava/lang/String;
    .param p7, "connectionFlags"    # I

    .prologue
    const/4 v2, 0x0

    .line 977
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 978
    .local v0, "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v0, :cond_0

    .line 979
    iget-object v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 980
    iput-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 984
    :goto_0
    iput-object p1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 985
    iput-wide p2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    .line 986
    iput p4, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    .line 987
    iput-boolean p5, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    .line 988
    iput-object p6, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 989
    iput p7, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    .line 990
    return-object v0

    .line 982
    :cond_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .end local v0    # "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    invoke-direct {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$1;)V

    .restart local v0    # "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    goto :goto_0
.end method

.method public static open(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    .locals 3
    .param p0, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "configuration must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    invoke-direct {v0, p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    .line 180
    .local v0, "pool":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->open()V

    .line 181
    return-object v0
.end method

.method private open()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 188
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 192
    iput-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 194
    return-void
.end method

.method private openConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 2
    .param p1, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "primaryConnection"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 466
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    .line 467
    .local v0, "connectionId":I
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->open(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;IZ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v1

    return-object v1
.end method

.method private reconfigureAllConnectionsLocked()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 546
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v5, :cond_0

    .line 548
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v5, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 558
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 559
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 561
    .local v0, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 558
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 549
    .end local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v1    # "count":I
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 550
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "SQLiteConnectionPool"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Failed to reconfigure available primary connection, closing it: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-direct {p0, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 553
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    goto :goto_0

    .line 562
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    :catch_1
    move-exception v2

    .line 563
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "SQLiteConnectionPool"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Failed to reconfigure available non-primary connection, closing it: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 566
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 567
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 571
    .end local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_1
    sget-object v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 572
    return-void
.end method

.method private recycleConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z
    .locals 4
    .param p1, "connection"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .param p2, "status"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 398
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v1, :cond_0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_0
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v1, :cond_1

    .line 408
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 409
    const/4 v1, 0x0

    .line 411
    :goto_1
    return v1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to reconfigure released connection, closing it: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    sget-object p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    goto :goto_0

    .line 411
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private recycleConnectionWaiterLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 2
    .param p1, "waiter"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 994
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 995
    iput-object v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 996
    iput-object v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 997
    iput-object v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 998
    iput-object v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 999
    iget v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 1000
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1001
    return-void
.end method

.method private setMaxConnectionPoolSizeLocked()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 957
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 958
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getWALConnectionPoolSize()I

    move-result v0

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 966
    :goto_0
    return-void

    .line 964
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    goto :goto_0
.end method

.method private throwIfClosedLocked()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 970
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this operation because the connection pool has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_0
    return-void
.end method

.method private tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 879
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 880
    .local v0, "availableCount":I
    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    if-eqz p1, :cond_1

    .line 883
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 884
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 885
    .local v1, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-virtual {v1, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->isPreparedStatementInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 886
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 887
    invoke-direct {p0, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    .line 910
    .end local v1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v2    # "i":I
    :goto_1
    return-object v1

    .line 883
    .restart local v1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 892
    .end local v1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v2    # "i":I
    :cond_1
    if-lez v0, :cond_2

    .line 894
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 895
    .restart local v1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    goto :goto_1

    .line 900
    .end local v1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    .line 901
    .local v3, "openConnections":I
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v4, :cond_3

    .line 902
    add-int/lit8 v3, v3, 0x1

    .line 904
    :cond_3
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    if-lt v3, v4, :cond_4

    .line 905
    const/4 v1, 0x0

    goto :goto_1

    .line 907
    :cond_4
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v1

    .line 909
    .restart local v1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    goto :goto_1
.end method

.method private tryAcquirePrimaryConnectionLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 5
    .param p1, "connectionFlags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 852
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 853
    .local v1, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    if-eqz v1, :cond_0

    .line 854
    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 855
    invoke-direct {p0, v1, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    move-object v2, v1

    .line 871
    :goto_0
    return-object v2

    .line 860
    :cond_0
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 861
    .local v0, "acquiredConnection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 868
    .end local v0    # "acquiredConnection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v1

    .line 870
    invoke-direct {p0, v1, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    move-object v2, v1

    .line 871
    goto :goto_0
.end method

.method private waitForConnection(Ljava/lang/String;ILjava/lang/Object;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 22
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .prologue
    .line 598
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    .line 603
    .local v7, "wantPrimaryConnection":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 604
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 613
    const/4 v12, 0x0

    .line 614
    .local v12, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    if-nez v7, :cond_0

    .line 615
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v12

    .line 618
    :cond_0
    if-nez v12, :cond_1

    .line 619
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v12

    .line 621
    :cond_1
    if-eqz v12, :cond_3

    .line 622
    monitor-exit v21

    .line 691
    :goto_1
    return-object v12

    .line 598
    .end local v7    # "wantPrimaryConnection":Z
    .end local v12    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 626
    .restart local v7    # "wantPrimaryConnection":Z
    .restart local v12    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v6

    .line 627
    .local v6, "priority":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 628
    .local v4, "startTime":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-result-object v20

    .line 630
    .local v20, "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/16 v18, 0x0

    .line 631
    .local v18, "predecessor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object/from16 v19, v0

    .line 632
    .local v19, "successor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_2
    if-eqz v19, :cond_4

    .line 633
    move-object/from16 v0, v19

    iget v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v6, v2, :cond_7

    .line 634
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 640
    :cond_4
    if-eqz v18, :cond_8

    .line 641
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 647
    :goto_3
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 666
    const-wide/16 v10, 0x7530

    .line 667
    .local v10, "busyTimeoutMillis":J
    move-object/from16 v0, v20

    iget-wide v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    const-wide/16 v8, 0x7530

    add-long v14, v2, v8

    .line 670
    .local v14, "nextBusyTimeoutTime":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 672
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 673
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 677
    :cond_5
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v10

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 680
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 684
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 686
    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 687
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 688
    .local v13, "ex":Ljava/lang/RuntimeException;
    if-nez v12, :cond_6

    if-eqz v13, :cond_a

    .line 689
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->recycleConnectionWaiterLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 690
    if-eqz v12, :cond_9

    .line 691
    monitor-exit v3

    goto/16 :goto_1

    .line 704
    .end local v13    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 637
    .end local v10    # "busyTimeoutMillis":J
    .end local v14    # "nextBusyTimeoutTime":J
    :cond_7
    move-object/from16 v18, v19

    .line 638
    :try_start_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object/from16 v19, v0

    goto :goto_2

    .line 643
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_3

    .line 647
    .end local v4    # "startTime":J
    .end local v6    # "priority":I
    .end local v12    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v18    # "predecessor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v19    # "successor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v20    # "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :catchall_1
    move-exception v2

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 673
    .restart local v4    # "startTime":J
    .restart local v6    # "priority":I
    .restart local v10    # "busyTimeoutMillis":J
    .restart local v12    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .restart local v14    # "nextBusyTimeoutTime":J
    .restart local v18    # "predecessor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v19    # "successor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v20    # "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 693
    .restart local v13    # "ex":Ljava/lang/RuntimeException;
    :cond_9
    :try_start_5
    throw v13

    .line 696
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 697
    .local v16, "now":J
    cmp-long v2, v16, v14

    if-gez v2, :cond_b

    .line 698
    sub-long v10, v16, v14

    .line 704
    :goto_5
    monitor-exit v3

    goto :goto_4

    .line 700
    :cond_b
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v8, v16, v8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v9, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->logConnectionPoolBusyLocked(JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 701
    const-wide/16 v10, 0x7530

    .line 702
    const-wide/16 v8, 0x7530

    add-long v14, v16, v8

    goto :goto_5
.end method

.method private wakeConnectionWaitersLocked()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 792
    const/4 v3, 0x0

    .line 793
    .local v3, "predecessor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v7, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 794
    .local v7, "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v4, 0x0

    .line 795
    .local v4, "primaryConnectionNotAvailable":Z
    const/4 v2, 0x0

    .line 796
    .local v2, "nonPrimaryConnectionNotAvailable":Z
    :goto_0
    if-eqz v7, :cond_5

    .line 797
    const/4 v6, 0x0

    .line 798
    .local v6, "unpark":Z
    iget-boolean v8, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v8, :cond_1

    .line 799
    const/4 v6, 0x1

    .line 832
    :cond_0
    :goto_1
    iget-object v5, v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 833
    .local v5, "successor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v6, :cond_7

    .line 834
    if-eqz v3, :cond_6

    .line 835
    iput-object v5, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 839
    :goto_2
    const/4 v8, 0x0

    iput-object v8, v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 841
    iget-object v8, v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v8}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 845
    :goto_3
    move-object v7, v5

    .line 846
    goto :goto_0

    .line 802
    .end local v5    # "successor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_1
    const/4 v0, 0x0

    .line 803
    .local v0, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :try_start_0
    iget-boolean v8, v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v8, :cond_2

    if-nez v2, :cond_2

    .line 804
    iget-object v8, v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    iget v9, v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v8, v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v0

    .line 806
    if-nez v0, :cond_2

    .line 807
    const/4 v2, 0x1

    .line 810
    :cond_2
    if-nez v0, :cond_3

    if-nez v4, :cond_3

    .line 811
    iget v8, v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v8}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v0

    .line 813
    if-nez v0, :cond_3

    .line 814
    const/4 v4, 0x1

    .line 817
    :cond_3
    if-eqz v0, :cond_4

    .line 818
    iput-object v0, v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    const/4 v6, 0x1

    goto :goto_1

    .line 820
    :cond_4
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 847
    .end local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v6    # "unpark":Z
    :cond_5
    return-void

    .line 825
    .restart local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .restart local v6    # "unpark":Z
    :catch_0
    move-exception v1

    .line 827
    .local v1, "ex":Ljava/lang/RuntimeException;
    iput-object v1, v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 828
    const/4 v6, 0x1

    goto :goto_1

    .line 837
    .end local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v5    # "successor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_6
    iput-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_2

    .line 843
    :cond_7
    move-object v3, v7

    goto :goto_3
.end method


# virtual methods
.method public final acquireConnection(Ljava/lang/String;ILjava/lang/Object;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .prologue
    .line 352
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILjava/lang/Object;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->dispose(Z)V

    .line 209
    return-void
.end method

.method public final collectDbStats(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 448
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v1, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 454
    .local v0, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 460
    .end local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 457
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 458
    .restart local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->collectDbStatsUnsafe(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 460
    .end local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final dump(Landroid/util/Printer;Z)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 1062
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final onConnectionLeaked()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 492
    const-string/jumbo v0, "SQLiteConnectionPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "A SQLiteConnection object for database \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' was leaked!  Please fix your application to end transactions in progress properly and to close the database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when it is no longer needed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 498
    return-void
.end method

.method public final reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 7
    .param p1, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "configuration must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_0
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 263
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 265
    iget v5, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v6, v6, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v5, v6

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v2, v0

    .line 267
    .local v2, "walModeChanged":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 270
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 271
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 328
    .end local v2    # "walModeChanged":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    move v2, v3

    .line 265
    goto :goto_0

    .line 279
    .restart local v2    # "walModeChanged":Z
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 280
    sget-boolean v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 283
    :cond_3
    iget-boolean v5, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v6, v6, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eq v5, v6, :cond_4

    .line 285
    .local v0, "foreignKeyModeChanged":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 289
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 290
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "foreignKeyModeChanged":Z
    :cond_4
    move v0, v3

    .line 283
    goto :goto_1

    .line 297
    .restart local v0    # "foreignKeyModeChanged":Z
    :cond_5
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v5, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    if-eq v3, v5, :cond_7

    .line 301
    if-eqz v2, :cond_6

    .line 302
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 309
    :cond_6
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v1

    .line 312
    .local v1, "newPrimaryConnection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 313
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->discardAcquiredConnectionsLocked()V

    .line 315
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 316
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    .line 317
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 327
    .end local v1    # "newPrimaryConnection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 328
    monitor-exit v4

    return-void

    .line 320
    :cond_7
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    .line 321
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 323
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeExcessConnectionsAndLogExceptionsLocked()V

    .line 324
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->reconfigureAllConnectionsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final releaseConnection(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V
    .locals 4
    .param p1, "connection"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 370
    .local v0, "status":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-nez v0, :cond_0

    .line 371
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    .end local v0    # "status":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 376
    .restart local v0    # "status":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v1, :cond_1

    .line 377
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 392
    :goto_0
    monitor-exit v2

    return-void

    .line 378
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 379
    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 380
    sget-boolean v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 381
    :cond_2
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 383
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    goto :goto_0

    .line 384
    :cond_4
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_5

    .line 385
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    goto :goto_0

    .line 387
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 388
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final shouldYieldConnection(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)Z
    .locals 3
    .param p1, "connection"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 426
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 433
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v0, :cond_1

    .line 434
    const/4 v0, 0x0

    monitor-exit v1

    .line 437
    :goto_0
    return v0

    .line 438
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v0

    .line 437
    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->isSessionBlockingImportantConnectionWaitersLocked(ZI)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SQLiteConnectionPool: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
