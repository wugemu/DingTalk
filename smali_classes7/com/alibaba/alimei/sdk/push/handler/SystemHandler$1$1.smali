.class Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1$1;
.super Ljava/lang/Object;
.source "SystemHandler.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1$1;->this$1:Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 0
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .prologue
    .line 88
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;

    .prologue
    .line 78
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 0
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .prologue
    .line 83
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;->getResultCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 69
    const-string/jumbo v0, "feedback success"

    invoke-static {v0}, Lzb;->g(Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string/jumbo v0, "feedback fail"

    invoke-static {v0}, Lzb;->g(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;)V

    return-void
.end method
