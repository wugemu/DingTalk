.class final Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4$1;
.super Ljava/lang/Object;
.source "ContactApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4$1;->b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;

    iput-object p2, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 480
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 481
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 475
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 476
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 421
    check-cast p1, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;

    .line 1424
    new-instance v3, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;

    invoke-direct {v3}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;-><init>()V

    .line 1425
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4$1;->b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;

    iget v0, v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;->a:I

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->setPageSize(I)V

    .line 1426
    if-eqz p1, :cond_5

    .line 1427
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->getTotal()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->setTotal(I)V

    .line 1428
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->getParent()Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->access$200(Lcom/alibaba/alimei/restfulapi/data/contact/Department;)Lcom/alibaba/alimei/contact/model/DepartmentModel;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->setParent(Lcom/alibaba/alimei/contact/model/DepartmentModel;)V

    .line 1432
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->getDepartments()Ljava/util/List;

    move-result-object v0

    .line 1433
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1434
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1435
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1436
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    .line 1437
    invoke-static {v0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->access$200(Lcom/alibaba/alimei/restfulapi/data/contact/Department;)Lcom/alibaba/alimei/contact/model/DepartmentModel;

    move-result-object v0

    .line 1438
    if-eqz v0, :cond_0

    .line 1439
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1442
    :cond_1
    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->setDepartments(Ljava/util/List;)V

    move v0, v1

    .line 1446
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->getMembers()Ljava/util/List;

    move-result-object v4

    .line 1447
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1448
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 1450
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1451
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentMember;

    .line 1452
    new-instance v6, Lcom/alibaba/alimei/contact/model/DepartmentMemberModel;

    invoke-direct {v6}, Lcom/alibaba/alimei/contact/model/DepartmentMemberModel;-><init>()V

    .line 1453
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentMember;->getEmail()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/alimei/contact/model/DepartmentMemberModel;->email:Ljava/lang/String;

    .line 1454
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentMember;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/alimei/contact/model/DepartmentMemberModel;->name:Ljava/lang/String;

    .line 1455
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentMember;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/alimei/contact/model/DepartmentMemberModel;->nickName:Ljava/lang/String;

    .line 1456
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1458
    :cond_2
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->setMembers(Ljava/util/List;)V

    move v0, v1

    .line 1461
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4$1;->b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;

    iget v1, v1, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;->a:I

    if-lt v0, v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->setMore(Z)V

    .line 1466
    :goto_3
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v3, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 421
    return-void

    .line 1463
    :cond_5
    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->setMore(Z)V

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_1
.end method
