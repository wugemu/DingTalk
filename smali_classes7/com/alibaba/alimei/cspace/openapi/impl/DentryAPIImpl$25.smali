.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->listDentryRpcSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ltl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$loadMoreId:Ljava/lang/String;

.field final synthetic val$oldLoadMoreId:Ljava/lang/String;

.field final synthetic val$pageSize:I

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$loadMoreId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$oldLoadMoreId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$list:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$spaceId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$path:Ljava/lang/String;

    iput p8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$pageSize:I

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 14
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1219
    new-instance v7, Ltl;

    invoke-direct {v7}, Ltl;-><init>()V

    .line 1220
    .local v7, "loadMoreResult":Ltl;
    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$loadMoreId:Ljava/lang/String;

    .line 2051
    iput-object v10, v7, Ltl;->b:Ljava/lang/String;

    .line 1221
    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$oldLoadMoreId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    .line 3043
    :goto_0
    iput-boolean v10, v7, Ltl;->a:Z

    .line 1223
    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$list:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$list:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1224
    :cond_0
    const/4 v10, 0x0

    .line 3059
    iput-boolean v10, v7, Ltl;->c:Z

    .line 1225
    iput-object v7, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1262
    :goto_1
    return-void

    .line 1221
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1230
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1231
    .local v6, "fileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v1

    .line 1232
    .local v1, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$oldLoadMoreId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$spaceId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$path:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$list:Ljava/util/List;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$list:Ljava/util/List;

    .line 1233
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget v11, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$pageSize:I

    if-ge v10, v11, :cond_4

    .line 1234
    :cond_3
    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v10}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$4000(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$spaceId:Ljava/lang/String;

    iget-object v12, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$path:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v1, v10, v11, v12, v13}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->queryByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 1235
    .local v5, "existList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz v5, :cond_4

    .line 1236
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1237
    .local v2, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1242
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v5    # "existList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_4
    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$list:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget v11, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$pageSize:I

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    .line 4059
    :goto_3
    iput-boolean v10, v7, Ltl;->c:Z

    .line 1243
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v3, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->val$list:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1245
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1246
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    :cond_5
    iget-object v11, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v11}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$4100(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11, v0}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    move-result-wide v8

    .line 1249
    .local v8, "id":J
    invoke-interface {v1, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryById(J)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 1250
    .restart local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1242
    .end local v0    # "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v3    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v8    # "id":J
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 1252
    .restart local v3    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_7
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 1253
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1254
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1255
    .restart local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v2, :cond_8

    .line 1256
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->delete(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_5

    .line 5035
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_9
    iput-object v3, v7, Ltl;->d:Ljava/util/List;

    .line 1261
    iput-object v7, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto/16 :goto_1
.end method
