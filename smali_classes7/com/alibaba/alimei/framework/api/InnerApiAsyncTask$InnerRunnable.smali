.class Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;
.super Ljava/lang/Object;
.source "InnerApiAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerRunnable"
.end annotation


# instance fields
.field count:I

.field isPostExecuteStage:Z

.field private mApiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic this$0:Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    iput-object p1, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->isPostExecuteStage:Z

    .line 56
    iput v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;
    .param p2, "x1"    # Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;-><init>(Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 60
    iget v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->count:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->count:I

    .line 64
    iget-boolean v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->isPostExecuteStage:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;

    iget-object v1, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->mApiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->onPostExecute(Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 66
    iput-boolean v2, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->isPostExecuteStage:Z

    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;

    invoke-static {v0, v2}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->access$102(Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;Z)Z

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->doInBackground()Lcom/alibaba/alimei/framework/api/ApiResult;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->mApiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->access$200(Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->isPostExecuteStage:Z

    .line 75
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->access$200(Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;

    iget-object v1, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->mApiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->onPostExecute(Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;

    invoke-static {v0, v2}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->access$102(Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;Z)Z

    goto :goto_0
.end method
