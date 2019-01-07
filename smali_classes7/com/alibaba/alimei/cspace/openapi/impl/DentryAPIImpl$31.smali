.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->updateConflictType(Ljava/util/List;ZLxv;)V
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

.field final synthetic val$isOverride:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;->val$dentryModels:Ljava/util/List;

    iput-boolean p4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;->val$isOverride:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 8
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1397
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;->val$dentryModels:Ljava/util/List;

    if-nez v3, :cond_0

    .line 1398
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1418
    :goto_0
    return-void

    .line 1402
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 1404
    .local v0, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    .local v2, "dentryModelsWillUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;->val$dentryModels:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1407
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1408
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v1, :cond_1

    .line 1412
    iget-boolean v3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;->val$isOverride:Z

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setOverWrite(Z)V

    .line 1413
    iget-boolean v3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;->val$isOverride:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAutoRename(Z)V

    .line 1414
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    iget-boolean v3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;->val$isOverride:Z

    invoke-interface {v0, v6, v7, v3}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateConflictType(JZ)Z

    goto :goto_1

    .line 1413
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 1417
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method
