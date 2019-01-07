.class final Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$11;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "ContactApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getUserSelfContactFromServer(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$11;->a:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 4
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 164
    invoke-static {}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource$InstanceHolder;->getContactDatasource()Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    move-result-object v1

    .line 166
    .local v1, "datasource":Lcom/alibaba/alimei/contact/datasource/ContactDatasource;
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$11$1;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$11$1;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$11;Lcom/alibaba/alimei/contact/datasource/ContactDatasource;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 187
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$11;->a:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->access$100(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getContactService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcContactService;->syncUserSelfContact(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 188
    return-void
.end method
