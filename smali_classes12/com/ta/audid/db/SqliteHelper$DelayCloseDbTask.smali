.class Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;
.super Ljava/lang/Object;
.source "SqliteHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/audid/db/SqliteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayCloseDbTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/audid/db/SqliteHelper;


# direct methods
.method constructor <init>(Lcom/ta/audid/db/SqliteHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ta/audid/db/SqliteHelper;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;->this$0:Lcom/ta/audid/db/SqliteHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v1, p0, Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;->this$0:Lcom/ta/audid/db/SqliteHelper;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;->this$0:Lcom/ta/audid/db/SqliteHelper;

    invoke-static {v0}, Lcom/ta/audid/db/SqliteHelper;->access$000(Lcom/ta/audid/db/SqliteHelper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;->this$0:Lcom/ta/audid/db/SqliteHelper;

    invoke-static {v0}, Lcom/ta/audid/db/SqliteHelper;->access$100(Lcom/ta/audid/db/SqliteHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;->this$0:Lcom/ta/audid/db/SqliteHelper;

    invoke-static {v0}, Lcom/ta/audid/db/SqliteHelper;->access$100(Lcom/ta/audid/db/SqliteHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 95
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;->this$0:Lcom/ta/audid/db/SqliteHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ta/audid/db/SqliteHelper;->access$102(Lcom/ta/audid/db/SqliteHelper;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 97
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
