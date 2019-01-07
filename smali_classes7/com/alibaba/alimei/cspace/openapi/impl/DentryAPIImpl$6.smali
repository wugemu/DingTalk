.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->saveOrUpdateFile2DB(Ljava/util/List;ZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

.field final synthetic val$dentryModels:Ljava/util/List;

.field final synthetic val$forceCreateNew:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->val$dentryModels:Ljava/util/List;

    iput-boolean p4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->val$forceCreateNew:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 11
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 299
    iget-object v6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->val$dentryModels:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->val$dentryModels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 300
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 335
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 306
    .local v0, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-boolean v6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->val$forceCreateNew:Z

    if-eqz v6, :cond_2

    .line 308
    iget-object v6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$900(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->val$dentryModels:Ljava/util/List;

    invoke-interface {v0, v6, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 312
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, "dentryExist":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v3, "dentryInserts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->val$dentryModels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 316
    .local v4, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v4, :cond_3

    .line 320
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$1000(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v7, v8, v9, v10}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->queryLocalDirtyDentry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v5

    .line 322
    .local v5, "localModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v5, :cond_4

    .line 323
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    :cond_4
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    .end local v4    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v5    # "localModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 330
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$1100(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 331
    .local v2, "dentryInsertResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    .end local v2    # "dentryInsertResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_6
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method
