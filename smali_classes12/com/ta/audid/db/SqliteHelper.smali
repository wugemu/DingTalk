.class public Lcom/ta/audid/db/SqliteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SqliteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x2


# instance fields
.field private mCloseDbTask:Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;

.field private mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mcloseFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbname"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance v0, Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;

    invoke-direct {v0, p0}, Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;-><init>(Lcom/ta/audid/db/SqliteHelper;)V

    iput-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mCloseDbTask:Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/ta/audid/db/SqliteHelper;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/ta/audid/db/SqliteHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ta/audid/db/SqliteHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/ta/audid/db/SqliteHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ta/audid/db/SqliteHelper;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/ta/audid/db/SqliteHelper;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method


# virtual methods
.method public closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 80
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    monitor-enter p0

    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mcloseFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mcloseFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 70
    :cond_2
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getInstance()Lcom/ta/audid/utils/TaskExecutor;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ta/audid/db/SqliteHelper;->mCloseDbTask:Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/ta/audid/utils/TaskExecutor;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mcloseFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 50
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "TAG"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 29
    :try_start_0
    const-string/jumbo v1, "PRAGMA journal_mode=DELETE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 33
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 35
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    return-void

    .line 33
    :catch_0
    move-exception v1

    invoke-virtual {p0, v3}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v3}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 44
    return-void
.end method
