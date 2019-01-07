.class final Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3$1;
.super Ljava/lang/Object;
.source "ContactApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3$1;->b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3;

    iput-object p2, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 375
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 370
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 338
    check-cast p1, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;

    .line 1341
    if-eqz p1, :cond_0

    .line 1342
    new-instance v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/model/CompanyContactModel;-><init>()V

    .line 1343
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getCompanyId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->companyId:Ljava/lang/String;

    .line 1344
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->companyName:Ljava/lang/String;

    .line 1345
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getDepartmentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->departmentId:Ljava/lang/String;

    .line 1346
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getDepartmentName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->departmentName:Ljava/lang/String;

    .line 1347
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getDisplayAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->displayAlias:Ljava/lang/String;

    .line 1348
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->email:Ljava/lang/String;

    .line 1349
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getIndirectPhone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->indirectPhone:Ljava/lang/String;

    .line 1350
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getJobTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->jobTitle:Ljava/lang/String;

    .line 1351
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getMobile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->mobile:Ljava/lang/String;

    .line 1352
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->name:Ljava/lang/String;

    .line 1353
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->nickName:Ljava/lang/String;

    .line 1354
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getType()I

    move-result v1

    iput v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->type:I

    .line 1355
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;->getWorkNo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/CompanyContactModel;->workNo:Ljava/lang/String;

    .line 1357
    iget-object v1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v0, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1358
    :goto_0
    return-void

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method
