.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$10;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailAdditionalApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->removeMailTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

.field final synthetic val$mailServerId:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$10;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$10;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$10;->val$mailServerId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 4
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 383
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    .local v1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$10;->val$tag:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$10$1;

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$10$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$10;Lcom/alibaba/alimei/framework/model/UserAccountModel;Ljava/util/List;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 405
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$10;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->access$500(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$10;->val$mailServerId:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->removeTag(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 406
    return-void
.end method
