.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->reportSpam(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;->val$serverId:Ljava/lang/String;

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
    .line 1646
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 1685
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$2000(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;->val$serverId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->reportSpam(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 1686
    return-void
.end method
