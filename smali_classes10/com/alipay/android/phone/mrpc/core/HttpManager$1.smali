.class Lcom/alipay/android/phone/mrpc/core/HttpManager$1;
.super Ljava/util/concurrent/FutureTask;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mrpc/core/HttpManager;->makeTask(Lcom/alipay/android/phone/mrpc/core/HttpWorker;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/alipay/android/phone/mrpc/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mrpc/core/HttpManager;

.field final synthetic val$httpWorker:Lcom/alipay/android/phone/mrpc/core/HttpWorker;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/HttpManager;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/HttpWorker;)V
    .locals 0

    .prologue
    .line 129
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/alipay/android/phone/mrpc/core/Response;>;"
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager$1;->this$0:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager$1;->val$httpWorker:Lcom/alipay/android/phone/mrpc/core/HttpWorker;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/HttpManager$1;->val$httpWorker:Lcom/alipay/android/phone/mrpc/core/HttpWorker;

    invoke-virtual {v6}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getRequest()Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-result-object v3

    .line 133
    .local v3, "request":Lcom/alipay/android/phone/mrpc/core/Request;
    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/Request;->getCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v0

    .line 134
    .local v0, "callback":Lcom/alipay/android/phone/mrpc/core/TransportCallback;
    if-nez v0, :cond_1

    .line 135
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpManager$1;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/phone/mrpc/core/Response;

    .line 141
    .local v4, "response":Lcom/alipay/android/phone/mrpc/core/Response;
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpManager$1;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/Request;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 142
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/Request;->cancel()V

    .line 143
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpManager$1;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpManager$1;->isDone()Z

    move-result v6

    if-nez v6, :cond_4

    .line 144
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/alipay/android/phone/mrpc/core/HttpManager$1;->cancel(Z)Z

    .line 146
    :cond_4
    invoke-interface {v0, v3}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onCancelled(Lcom/alipay/android/phone/mrpc/core/Request;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 150
    .end local v4    # "response":Lcom/alipay/android/phone/mrpc/core/Response;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v6, 0x7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v7}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "response":Lcom/alipay/android/phone/mrpc/core/Response;
    :cond_5
    if-eqz v4, :cond_0

    .line 148
    :try_start_1
    invoke-interface {v0, v3, v4}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onPostExecute(Lcom/alipay/android/phone/mrpc/core/Request;Lcom/alipay/android/phone/mrpc/core/Response;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 152
    .end local v4    # "response":Lcom/alipay/android/phone/mrpc/core/Response;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Lcom/alipay/android/phone/mrpc/core/HttpException;

    if-eqz v6, :cond_6

    .line 154
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mrpc/core/HttpException;

    .line 155
    .local v2, "httpException":Lcom/alipay/android/phone/mrpc/core/HttpException;
    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getCode()I

    move-result v6

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v7}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v2    # "httpException":Lcom/alipay/android/phone/mrpc/core/HttpException;
    :cond_6
    const/4 v6, 0x6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v6, v7}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v6

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/Request;->cancel()V

    .line 166
    invoke-interface {v0, v3}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onCancelled(Lcom/alipay/android/phone/mrpc/core/Request;)V

    goto/16 :goto_0

    .line 167
    :catch_3
    move-exception v5

    .line 168
    .local v5, "t":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "An error occured while executing http request"

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method
