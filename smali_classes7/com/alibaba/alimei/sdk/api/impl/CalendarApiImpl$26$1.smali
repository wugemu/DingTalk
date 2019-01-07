.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26$1;
.super Ljava/lang/Object;
.source "CalendarApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 875
    const-string/jumbo v0, "CalendarApiImpl"

    invoke-static {v0, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 876
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 877
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;

    .prologue
    .line 865
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 854
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 869
    const-string/jumbo v0, "CalendarApiImpl"

    invoke-static {v0, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 871
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 857
    if-eqz p1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;->toCalendar()Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 860
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 854
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;)V

    return-void
.end method
