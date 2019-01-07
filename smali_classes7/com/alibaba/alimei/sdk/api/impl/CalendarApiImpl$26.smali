.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->parseICSContent(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;->val$content:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 3
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 854
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 880
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->access$500(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getCalendarService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;->val$content:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;->parseICSContent(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 881
    return-void
.end method
