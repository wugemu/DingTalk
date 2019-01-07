.class public abstract Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;
.super Landroid/os/AsyncTask;
.source "LoginAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "login.LoginAsyncTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;, "Lcom/ali/user/enterprise/base/thread/LoginAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doFinally()V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;, "Lcom/ali/user/enterprise/base/thread/LoginAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 26
    .local p0, "this":Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;, "Lcom/ali/user/enterprise/base/thread/LoginAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    const/4 v1, 0x0

    .line 28
    .local v1, "result":Ljava/lang/Object;, "TResult;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;->excuteTask([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;->doFinally()V

    .line 34
    .end local v1    # "result":Ljava/lang/Object;, "TResult;"
    :goto_0
    return-object v1

    .line 29
    .restart local v1    # "result":Ljava/lang/Object;, "TResult;"
    :catch_0
    move-exception v0

    .line 30
    .local v0, "r":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;->handleException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;->doFinally()V

    goto :goto_0

    .end local v0    # "r":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;->doFinally()V

    throw v2
.end method

.method public varargs abstract excuteTask([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    .local p0, "this":Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;, "Lcom/ali/user/enterprise/base/thread/LoginAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    const-string/jumbo v0, "login.LoginAsyncTask"

    const-string/jumbo v1, "LoginAsyncTask excute failed"

    invoke-static {v0, v1, p1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method
