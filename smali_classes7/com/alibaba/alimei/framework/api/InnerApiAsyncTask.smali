.class public abstract Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;
.super Ljava/lang/Object;
.source "InnerApiAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;
    }
.end annotation


# instance fields
.field private isExecuting:Z

.field private mCurrentThread:Laie;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->isExecuting:Z

    .line 24
    iput-object p1, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->mHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$102(Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->isExecuting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->mCurrentThread:Laie;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->mCurrentThread:Laie;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Laie;->a(Z)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->isExecuting:Z

    .line 50
    :cond_0
    return-void
.end method

.method public abstract doInBackground()Lcom/alibaba/alimei/framework/api/ApiResult;
.end method

.method public execute()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->isExecuting:Z

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->isExecuting:Z

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->getThreadPriority()Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    move-result-object v0

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->mCurrentThread:Laie;

    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->mCurrentThread:Laie;

    new-instance v1, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;-><init>(Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$1;)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getThreadPriority()Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    return-object v0
.end method

.method public abstract onPostExecute(Lcom/alibaba/alimei/framework/api/ApiResult;)V
.end method
