.class public Lcom/alibaba/bee/impl/DebugTools;
.super Ljava/lang/Object;
.source "DebugTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/bee/impl/DebugTools$WarningMsg;,
        Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x7530L

.field private static mMainHandler:Landroid/os/Handler;

.field private static final sTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/bee/impl/DebugTools;->mMainHandler:Landroid/os/Handler;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/bee/impl/DebugTools;->sTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/bee/impl/DebugTools;->mMainHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/alibaba/bee/impl/DebugTools;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/alibaba/bee/impl/DebugTools;->sTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const-string/jumbo v1, " table: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    const-string/jumbo v1, " sql: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endTransaction(Ljava/lang/String;)V
    .locals 4
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    :goto_0
    return-void

    .line 118
    :cond_0
    sget-object v3, Lcom/alibaba/bee/impl/DebugTools;->sTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 119
    :try_start_0
    sget-object v2, Lcom/alibaba/bee/impl/DebugTools;->sTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;

    .line 120
    .local v0, "info":Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
    if-nez v0, :cond_1

    .line 121
    monitor-exit v3

    goto :goto_0

    .line 127
    .end local v0    # "info":Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 123
    .restart local v0    # "info":Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;->runnables:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 124
    .local v1, "task":Ljava/lang/Runnable;
    if-eqz v1, :cond_2

    .line 125
    sget-object v2, Lcom/alibaba/bee/impl/DebugTools;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 71
    .local v2, "stackElements":[Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 74
    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    :cond_1
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method private static isMainThread()Z
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static throwCursorNotClosed(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/bee/impl/DebugTools;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/bee/impl/DebugTools$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/bee/impl/DebugTools$1;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    return-void
.end method

.method public static throwDoNotEndTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v3, Lcom/alibaba/bee/impl/DebugTools;->sTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 91
    :try_start_0
    sget-object v2, Lcom/alibaba/bee/impl/DebugTools;->sTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;

    .line 92
    .local v0, "info":Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;

    .end local v0    # "info":Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;-><init>(Lcom/alibaba/bee/impl/DebugTools$1;)V

    .line 94
    .restart local v0    # "info":Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
    sget-object v2, Lcom/alibaba/bee/impl/DebugTools;->sTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    new-instance v1, Lcom/alibaba/bee/impl/DebugTools$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/bee/impl/DebugTools$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v2, v0, Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;->runnables:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    sget-object v2, Lcom/alibaba/bee/impl/DebugTools;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 110
    .end local v0    # "info":Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
    .end local v1    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static throwMainThreadOperation(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Lcom/alibaba/bee/impl/DebugTools;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Database operation can not be on the main thread. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method

.method public static throwSQLiteStatementNotClosed(Lcom/alibaba/bee/SQLiteStatement;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "statement"    # Lcom/alibaba/bee/SQLiteStatement;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/bee/impl/DebugTools;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/bee/impl/DebugTools$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/bee/impl/DebugTools$2;-><init>(Lcom/alibaba/bee/SQLiteStatement;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method
