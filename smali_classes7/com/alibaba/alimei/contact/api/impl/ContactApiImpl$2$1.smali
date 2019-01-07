.class final Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2$1;
.super Ljava/lang/Object;
.source "ContactApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2$1;->b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;

    iput-object p2, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 320
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 321
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 316
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 281
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;

    .line 1284
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;->getContactList()Ljava/util/List;

    move-result-object v0

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "search contact returned from server:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1287
    if-eqz v0, :cond_1

    .line 1288
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/SearchContactItem;

    .line 1290
    new-instance v4, Lcom/alibaba/alimei/contact/model/SearchContactModel;

    invoke-direct {v4}, Lcom/alibaba/alimei/contact/model/SearchContactModel;-><init>()V

    .line 1291
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SearchContactItem;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/alimei/contact/model/SearchContactModel;->email:Ljava/lang/String;

    .line 1292
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SearchContactItem;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/alimei/contact/model/SearchContactModel;->name:Ljava/lang/String;

    .line 1293
    iput v2, v4, Lcom/alibaba/alimei/contact/model/SearchContactModel;->searchType:I

    .line 1294
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SearchContactItem;->getType()I

    move-result v0

    iput v0, v4, Lcom/alibaba/alimei/contact/model/SearchContactModel;->type:I

    .line 1295
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1301
    :goto_1
    new-instance v3, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;

    invoke-direct {v3}, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;-><init>()V

    .line 1302
    iget-object v1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2$1;->b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;

    iget-object v1, v1, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;->a:Ljava/lang/String;

    iput-object v1, v3, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;->searchKey:Ljava/lang/String;

    .line 1303
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;->getTotal()I

    move-result v1

    iput v1, v3, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;->total:I

    .line 1304
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2$1;->b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;

    iget v4, v4, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;->b:I

    if-lt v1, v4, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v3, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;->hasMore:Z

    .line 1305
    iput-object v0, v3, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;->searchResut:Ljava/util/List;

    .line 1306
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v3, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 281
    return-void

    .line 1298
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    .line 1304
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method
