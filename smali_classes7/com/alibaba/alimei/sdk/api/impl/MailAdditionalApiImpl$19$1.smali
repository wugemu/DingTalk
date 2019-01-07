.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19$1;
.super Ljava/lang/Object;
.source "MailAdditionalApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 765
    const-string/jumbo v0, "MailAdditionalApiImpl"

    const-string/jumbo v1, "queryMailMembersInMailListByPage fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 767
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;

    .prologue
    .line 755
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 718
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 759
    const-string/jumbo v0, "MailAdditionalApiImpl"

    const-string/jumbo v1, "queryMailMembersInMailListByPage fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 761
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;)V
    .locals 12
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 721
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;->getMembers()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;->getMembers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 722
    :cond_0
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 750
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;->getMembers()Ljava/util/List;

    move-result-object v3

    .line 728
    .local v3, "memberDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/MemberData;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 729
    .local v6, "participantsModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/data/MemberData;

    .line 730
    .local v2, "memberData":Lcom/alibaba/alimei/restfulapi/data/MemberData;
    new-instance v5, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 731
    .local v5, "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/data/MemberData;->getEmail()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 732
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/data/MemberData;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 733
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/data/MemberData;->getMailType()I

    move-result v1

    .line 734
    .local v1, "mailType":I
    if-ne v7, v1, :cond_2

    .line 735
    iput v8, v5, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    .line 741
    :goto_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 736
    :cond_2
    if-ne v11, v1, :cond_3

    .line 737
    iput v11, v5, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    goto :goto_2

    .line 739
    :cond_3
    const/4 v10, -0x1

    iput v10, v5, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    goto :goto_2

    .line 744
    .end local v1    # "mailType":I
    .end local v2    # "memberData":Lcom/alibaba/alimei/restfulapi/data/MemberData;
    .end local v5    # "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 745
    .local v0, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    const-string/jumbo v9, "data"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    new-instance v4, Lagx;

    invoke-direct {v4}, Lagx;-><init>()V

    .line 1026
    .local v4, "modelResult":Lagx;
    iput-object v0, v4, Lagx;->a:Ljava/util/Map;

    .line 748
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;->getTotal()I

    move-result v9

    const/16 v10, 0x32

    if-lt v9, v10, :cond_5

    .line 1034
    :goto_3
    iput-boolean v7, v4, Lagx;->b:Z

    .line 749
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v4, v7, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    move v7, v8

    .line 748
    goto :goto_3
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 718
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$19$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;)V

    return-void
.end method
