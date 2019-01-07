.class final Lsy$2;
.super Ljava/lang/Object;
.source "SyncContactsTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsy;
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
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

.field final synthetic c:Lsy;


# direct methods
.method constructor <init>(Lsy;Ljava/util/HashMap;Lcom/alibaba/alimei/contact/datasource/ContactDatasource;)V
    .locals 0
    .param p1, "this$0"    # Lsy;

    .prologue
    .line 200
    iput-object p1, p0, Lsy$2;->c:Lsy;

    iput-object p2, p0, Lsy$2;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lsy$2;->b:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 227
    iget-object v0, p0, Lsy$2;->c:Lsy;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lsy;->a(Lsy;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 228
    const-string/jumbo v0, "sync upload contact network error--->>"

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lsy$2;->c:Lsy;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lsy;->a(Lsy;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 222
    const-string/jumbo v0, "sync upload contact service error--->>"

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;

    .line 1203
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->getResultCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->getContactsResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->getContactsResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1204
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->getContactsResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1205
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->getContactsResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;

    .line 1206
    if-eqz v0, :cond_0

    iget-object v1, p0, Lsy$2;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    iget-object v1, p0, Lsy$2;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1209
    iget-object v1, p0, Lsy$2;->b:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    invoke-interface {v1, v4, v5, v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;->updateDirtyContact(JLcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;)V

    .line 1204
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 200
    :cond_1
    return-void
.end method
