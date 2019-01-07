.class final Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "ContactApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getDepartmentChildrenFromServer(Ljava/lang/String;IILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;->d:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;

    iput p3, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;->a:I

    iput-object p4, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;->b:Ljava/lang/String;

    iput p5, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;->c:I

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 5
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 421
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4$1;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 483
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;>;"
    iget-object v1, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getContactService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;->b:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;->a:I

    iget v4, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;->c:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcContactService;->getDepartmentChildren(Ljava/lang/String;IILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 485
    return-void
.end method
