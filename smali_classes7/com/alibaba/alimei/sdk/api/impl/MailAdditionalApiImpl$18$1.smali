.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18$1;
.super Ljava/lang/Object;
.source "MailAdditionalApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 703
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 704
    const-string/jumbo v0, "MailAdditionalApiImpl"

    const-string/jumbo v1, "getMailInfoByMail fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    .prologue
    .line 693
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 659
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 697
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 698
    const-string/jumbo v0, "MailAdditionalApiImpl"

    const-string/jumbo v1, "getMailInfoByMail fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V
    .locals 8
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 662
    if-nez p1, :cond_0

    .line 663
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v5, v4, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 688
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v3, p1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successItems:Ljava/util/List;

    .line 668
    .local v3, "sucItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 669
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v5, v4, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 673
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 674
    .local v0, "emailInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;

    .line 675
    .local v1, "item":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;
    new-instance v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v2}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 676
    .local v2, "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iget v5, v1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->accountType:I

    if-ne v6, v5, :cond_3

    .line 677
    const/4 v5, 0x0

    iput v5, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    .line 683
    :goto_2
    iget-object v5, v1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->alias:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 684
    iget-object v5, v1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->email:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 685
    iget-object v5, v1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->email:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 678
    :cond_3
    iget v5, v1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->accountType:I

    if-ne v7, v5, :cond_4

    .line 679
    iput v7, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    goto :goto_2

    .line 681
    :cond_4
    iput v6, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    goto :goto_2

    .line 687
    .end local v1    # "item":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;
    .end local v2    # "participantsModel":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_5
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v0, v4, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 659
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$18$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V

    return-void
.end method
