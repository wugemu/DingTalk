.class final Lakr$a;
.super Ljava/lang/Object;
.source "SqliteHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lakr;


# direct methods
.method constructor <init>(Lakr;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lakr$a;->a:Lakr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 100
    iget-object v1, p0, Lakr$a;->a:Lakr;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lakr$a;->a:Lakr;

    invoke-static {v0}, Lakr;->a(Lakr;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lakr$a;->a:Lakr;

    invoke-static {v0}, Lakr;->b(Lakr;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lakr$a;->a:Lakr;

    invoke-static {v0}, Lakr;->b(Lakr;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    iget-object v0, p0, Lakr$a;->a:Lakr;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lakr;->a(Lakr;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
