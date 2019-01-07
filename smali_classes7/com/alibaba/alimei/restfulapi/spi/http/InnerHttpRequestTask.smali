.class abstract Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;
.super Ljava/lang/Object;
.source "InnerHttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;
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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->isExecuting:Z

    .line 19
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->mHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->isExecuting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->mCurrentThread:Laie;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->mCurrentThread:Laie;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Laie;->a(Z)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->isExecuting:Z

    .line 47
    :cond_0
    return-void
.end method

.method protected abstract doInBackground()V
.end method

.method public execute()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->isExecuting:Z

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->isExecuting:Z

    .line 38
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->mCurrentThread:Laie;

    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->mCurrentThread:Laie;

    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract onPostExecute()V
.end method
