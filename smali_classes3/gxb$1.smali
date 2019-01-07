.class final Lgxb$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgxb;


# direct methods
.method constructor <init>(Lgxb;)V
    .locals 0
    .param p1, "this$0"    # Lgxb;

    .prologue
    .line 272
    iput-object p1, p0, Lgxb$1;->a:Lgxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v1, p0, Lgxb$1;->a:Lgxb;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lgxb$1;->a:Lgxb;

    invoke-static {v0}, Lgxb;->a(Lgxb;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    monitor-exit v1

    .line 284
    :goto_0
    return-object v3

    .line 278
    :cond_0
    iget-object v0, p0, Lgxb$1;->a:Lgxb;

    invoke-static {v0}, Lgxb;->b(Lgxb;)V

    .line 279
    iget-object v0, p0, Lgxb$1;->a:Lgxb;

    invoke-static {v0}, Lgxb;->c(Lgxb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lgxb$1;->a:Lgxb;

    invoke-static {v0}, Lgxb;->d(Lgxb;)V

    .line 281
    iget-object v0, p0, Lgxb$1;->a:Lgxb;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lgxb;->a(Lgxb;I)I

    .line 283
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Lgxb$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
