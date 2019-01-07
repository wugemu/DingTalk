.class public Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;
.super Ljava/lang/Object;
.source "InnerHttpRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerRunnable"
.end annotation


# instance fields
.field count:I

.field isPostExecuteStage:Z

.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->isPostExecuteStage:Z

    .line 52
    iput v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->count:I

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

    .line 56
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->count:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 59
    :cond_0
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->count:I

    .line 60
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->isPostExecuteStage:Z

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->onPostExecute()V

    .line 62
    iput-boolean v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->isPostExecuteStage:Z

    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    invoke-static {v0, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->access$002(Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;Z)Z

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->doInBackground()V

    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->access$100(Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->isPostExecuteStage:Z

    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->access$100(Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->onPostExecute()V

    .line 75
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask$InnerRunnable;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    invoke-static {v0, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->access$002(Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;Z)Z

    goto :goto_0
.end method
