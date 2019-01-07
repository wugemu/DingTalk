.class final Ltd$1;
.super Ljava/lang/Object;
.source "UpdateUserSelfContactTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd;
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
        "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

.field final synthetic b:Ltd;


# direct methods
.method constructor <init>(Ltd;Lcom/alibaba/alimei/contact/datasource/ContactDatasource;)V
    .locals 0
    .param p1, "this$0"    # Ltd;

    .prologue
    .line 75
    iput-object p1, p0, Ltd$1;->b:Ltd;

    iput-object p2, p0, Ltd$1;->a:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)V
    .locals 3
    .param p0, "status"    # I

    .prologue
    .line 118
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    const-string/jumbo v1, "basic_UpdateUserSelf"

    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lya;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Ltd$1;->b:Ltd;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Ltd;->a(Ltd;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 113
    const-string/jumbo v0, "sync upload contact network error--->>"

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v0, 0x2

    invoke-static {v0}, Ltd$1;->a(I)V

    .line 115
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Ltd$1;->b:Ltd;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Ltd;->a(Ltd;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 106
    const-string/jumbo v0, "sync upload contact service error--->>"

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v0, 0x2

    invoke-static {v0}, Ltd$1;->a(I)V

    .line 108
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v6, 0xc8

    .line 75
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;

    .line 1078
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->getResultCode()I

    move-result v0

    if-ne v0, v6, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->getContactsResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->getContactsResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1079
    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultUserAccount()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    .line 1080
    const-wide/16 v2, 0x1

    .line 1081
    const/4 v0, 0x0

    .line 1082
    if-eqz v1, :cond_3

    .line 1083
    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    .line 1084
    iget-object v0, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object v1, v0

    .line 1086
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->getContactsResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;

    .line 1087
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->getResultCode()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1088
    iget-object v0, p0, Ltd$1;->a:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    iget-object v5, p0, Ltd$1;->b:Ltd;

    invoke-static {v5}, Ltd;->a(Ltd;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v3, v1, v5}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;->saveSelfUser(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1092
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ltd$1;->a(I)V

    .line 1093
    :goto_2
    return-void

    .line 1094
    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Ltd$1;->a(I)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
