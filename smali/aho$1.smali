.class final Laho$1;
.super Ljava/lang/Object;
.source "SyncTagsTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laho;->c()Z
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
        "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laho;


# direct methods
.method constructor <init>(Laho;)V
    .locals 0
    .param p1, "this$0"    # Laho;

    .prologue
    .line 75
    iput-object p1, p0, Laho$1;->a:Laho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 109
    const-string/jumbo v0, "SyncTagsTask"

    const-string/jumbo v1, "syncTagsTask fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
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
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 104
    const-string/jumbo v0, "SyncTagsTask"

    const-string/jumbo v1, "syncTagsTask fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 75
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;

    .line 1078
    if-nez p1, :cond_1

    .line 1079
    const-string/jumbo v0, "SyncTagsTask"

    const-string/jumbo v1, "sync Tags sucess, but SyncTagResult is null"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->isMore()Z

    move-result v0

    .line 1083
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    .line 1084
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->getCount()I

    move-result v2

    .line 1085
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1086
    iget-object v3, p0, Laho$1;->a:Laho;

    invoke-static {v3, v1}, Laho;->a(Laho;Ljava/lang/String;)Ljava/lang/String;

    .line 1088
    :cond_2
    const-string/jumbo v3, "SyncTagsTask"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "sync Tags sucess, hasMore: "

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", newSyncKey: "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    const/4 v1, 0x4

    const-string/jumbo v5, ", count: "

    aput-object v5, v4, v1

    const/4 v1, 0x5

    .line 1089
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1088
    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getTagDatasource()Lcom/alibaba/alimei/sdk/datasource/TagDatasource;

    move-result-object v1

    iget-object v2, p0, Laho$1;->a:Laho;

    iget-object v2, v2, Laho;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Laho$1;->a:Laho;

    invoke-static {v4}, Laho;->a(Laho;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/alibaba/alimei/sdk/datasource/TagDatasource;->handleSyncResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;)V

    .line 1091
    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Laho$1;->a:Laho;

    invoke-static {v0}, Laho;->a(Laho;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v0

    .line 1093
    iget-object v1, p0, Laho$1;->a:Laho;

    invoke-static {v1}, Laho;->b(Laho;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laho$1;->a:Laho;

    invoke-static {v2}, Laho;->c(Laho;)Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncTags(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_0
.end method
