.class Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;
.source "AbsApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/framework/api/AbsApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/framework/api/AbsApiImpl;

.field final synthetic val$listener:Lxv;

.field final synthetic val$runnable:Lcom/alibaba/alimei/framework/api/ApiResultRunnable;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/framework/api/AbsApiImpl;Landroid/os/Handler;Lxv;Lcom/alibaba/alimei/framework/api/ApiResultRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/framework/api/AbsApiImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;->this$0:Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;->val$listener:Lxv;

    iput-object p4, p0, Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;->val$runnable:Lcom/alibaba/alimei/framework/api/ApiResultRunnable;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;->val$runnable:Lcom/alibaba/alimei/framework/api/ApiResultRunnable;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;->execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    .local v0, "result":Lcom/alibaba/alimei/framework/api/ApiResult;
    :goto_0
    return-object v0

    .line 65
    .end local v0    # "result":Lcom/alibaba/alimei/framework/api/ApiResult;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v2, "AbsApiImpl"

    invoke-static {v2, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    new-instance v0, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 68
    .restart local v0    # "result":Lcom/alibaba/alimei/framework/api/ApiResult;
    instance-of v2, v1, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    if-eqz v2, :cond_0

    .line 69
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->RpcServerResultError:Lcom/alibaba/alimei/framework/SDKError;

    check-cast v1, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .end local v1    # "tr":Ljava/lang/Throwable;
    invoke-static {v2, v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 70
    .restart local v1    # "tr":Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v1, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    if-eqz v2, :cond_1

    .line 71
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->NetworkError:Lcom/alibaba/alimei/framework/SDKError;

    check-cast v1, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .end local v1    # "tr":Ljava/lang/Throwable;
    invoke-static {v2, v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 72
    .restart local v1    # "tr":Ljava/lang/Throwable;
    :cond_1
    instance-of v2, v1, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    if-eqz v2, :cond_2

    .line 73
    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    move-object v2, v1

    check-cast v2, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    invoke-static {v3, v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 76
    :cond_2
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2, v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onPostExecute(Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 48
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;->val$listener:Lxv;

    iget-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-interface {v0, v1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;->val$listener:Lxv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/framework/api/AbsApiImpl$1;->val$listener:Lxv;

    iget-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
