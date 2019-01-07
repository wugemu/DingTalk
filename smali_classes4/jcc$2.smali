.class final Ljcc$2;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcc;
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
.field final synthetic a:Ljcc;


# direct methods
.method constructor <init>(Ljcc;)V
    .locals 0

    iput-object p1, p0, Ljcc$2;->a:Ljcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v2, 0x0

    iget-object v1, p0, Ljcc$2;->a:Ljcc;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljcc$2;->a:Ljcc;

    invoke-static {v0}, Ljcc;->a(Ljcc;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v2

    :cond_0
    iget-object v0, p0, Ljcc$2;->a:Ljcc;

    invoke-static {v0}, Ljcc;->b(Ljcc;)V

    iget-object v0, p0, Ljcc$2;->a:Ljcc;

    invoke-static {v0}, Ljcc;->c(Ljcc;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcc$2;->a:Ljcc;

    invoke-static {v0}, Ljcc;->d(Ljcc;)V

    iget-object v0, p0, Ljcc$2;->a:Ljcc;

    invoke-static {v0}, Ljcc;->e(Ljcc;)I

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

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

    invoke-direct {p0}, Ljcc$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
