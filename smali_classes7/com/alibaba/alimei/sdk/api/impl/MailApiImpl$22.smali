.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->searchMailFromServer(Ljava/lang/String;IIILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$length:I

.field final synthetic val$offset:I

.field final synthetic val$searchType:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;->val$keyword:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;->val$searchType:I

    iput p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;->val$length:I

    iput p6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;->val$offset:I

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 7
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1371
    new-instance v6, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;

    invoke-direct {v6}, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;-><init>()V

    .line 1372
    .local v6, "resultModel":Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;
    new-instance v5, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22$1;

    invoke-direct {v5, p0, v6, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 1401
    .local v5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$1500(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;->val$keyword:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;->val$searchType:I

    iget v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;->val$length:I

    iget v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;->val$offset:I

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->searchMail(Ljava/lang/String;IIILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 1402
    iput-object v6, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1403
    return-void
.end method
