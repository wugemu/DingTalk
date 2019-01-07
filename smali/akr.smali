.class public final Lakr;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SqliteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakr$a;
    }
.end annotation


# static fields
.field private static e:Z

.field private static f:Landroid/database/DatabaseErrorHandler;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lakr$a;

.field private d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lakr;->e:Z

    .line 22
    new-instance v0, Lakr$1;

    invoke-direct {v0}, Lakr$1;-><init>()V

    sput-object v0, Lakr;->f:Landroid/database/DatabaseErrorHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbname"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v3, 0x0

    const/4 v4, 0x2

    sget-object v5, Lakr;->f:Landroid/database/DatabaseErrorHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lakr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    new-instance v0, Lakr$a;

    invoke-direct {v0, p0}, Lakr$a;-><init>(Lakr;)V

    iput-object v0, p0, Lakr;->c:Lakr$a;

    .line 31
    return-void
.end method

.method static synthetic a(Lakr;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lakr;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lakr;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic a(Lakr;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lakr;

    .prologue
    .line 15
    iget-object v0, p0, Lakr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lakr;->e:Z

    return v0
.end method

.method static synthetic b(Lakr;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lakr;

    .prologue
    .line 15
    iget-object v0, p0, Lakr;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 72
    monitor-enter p0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_0
    iget-object v0, p0, Lakr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lakr;->d:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lakr;->d:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 81
    :cond_2
    invoke-static {}, Lanh;->a()Lanh;

    const/4 v0, 0x0

    iget-object v1, p0, Lakr;->c:Lakr$a;

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lakr;->d:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lakr;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 57
    sget-boolean v1, Lakr;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 68
    :goto_0
    monitor-exit p0

    return-object v1

    .line 60
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lakr;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    :cond_1
    iget-object v1, p0, Lakr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :goto_1
    :try_start_2
    iget-object v1, p0, Lakr;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "TAG"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 56
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 47
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 37
    :try_start_0
    const-string/jumbo v1, "PRAGMA journal_mode=DELETE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 40
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lakr;->a(Landroid/database/Cursor;)V

    .line 42
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    return-void

    .line 40
    :catch_0
    move-exception v1

    invoke-static {v3}, Lakr;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v3}, Lakr;->a(Landroid/database/Cursor;)V

    throw v1
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 51
    return-void
.end method
