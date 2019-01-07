.class final Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;-><init>()V
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
.field final synthetic a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;


# direct methods
.method constructor <init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    .prologue
    .line 317
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;"
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    invoke-virtual {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->b(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 330
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 324
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 325
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "An error occured while executing doInBackground()"

    .line 326
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 328
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->b(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0
.end method
