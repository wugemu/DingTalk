.class Lcom/amap/api/mapcore/util/dw$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/dw;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/dw;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/dw;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dw$3;->a:Lcom/amap/api/mapcore/util/dw;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw$3;->a:Lcom/amap/api/mapcore/util/dw;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dw$3;->a:Lcom/amap/api/mapcore/util/dw;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/dw;->b(Lcom/amap/api/mapcore/util/dw;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/dw;->b(Lcom/amap/api/mapcore/util/dw;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    const-string/jumbo v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
