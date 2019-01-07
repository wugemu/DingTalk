.class public abstract Lcom/alibaba/alimei/framework/api/InnerRunnable;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "InnerRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/alimei/framework/api/ApiResultRunnable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/alibaba/alimei/framework/api/InnerRunnable;, "Lcom/alibaba/alimei/framework/api/InnerRunnable<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/alimei/framework/api/InnerRunnable;, "Lcom/alibaba/alimei/framework/api/InnerRunnable<TT;>;"
    new-instance v0, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 30
    .local v0, "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/api/InnerRunnable;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "tr":Ljava/lang/Throwable;
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2, v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method public abstract handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;)V
.end method
