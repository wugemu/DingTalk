.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->addRpcSuccess(Lcom/alibaba/alimei/cspace/model/DentryModel;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

.field final synthetic val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 12
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1012
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v7, :cond_0

    .line 1013
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1060
    :goto_0
    return-void

    .line 1017
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 1019
    .local v0, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isOverWrite()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1020
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$2700(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v9}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v7, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    .line 1021
    .local v4, "oldDentryModelInDb":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v4, :cond_1

    .line 1022
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 1024
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    .local v5, "oldDentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 1027
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    const/4 v7, 0x5

    invoke-interface {v0, v5, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 1029
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    invoke-interface {v0, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->delete(J)Z

    .line 1034
    .end local v4    # "oldDentryModelInDb":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v5    # "oldDentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_1
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 1035
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDirty(Z)V

    .line 1036
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$2800(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v0, v7, v8}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    move-result-wide v2

    .line 1037
    .local v2, "newId":J
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    .line 1039
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$2900(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v9}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v7, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v6

    .line 1040
    .local v6, "parentModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v6, :cond_2

    .line 1041
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v7, v0, v6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$2500(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1049
    .end local v2    # "newId":J
    .end local v6    # "parentModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    :goto_1
    const-string/jumbo v7, "folder"

    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1050
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    .local v1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    const/4 v7, 0x1

    invoke-interface {v0, v1, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 1055
    .end local v1    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_3
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    .line 1056
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    invoke-interface {v0, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryById(J)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    iput-object v7, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1044
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .restart local v1    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$3000(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 1047
    const/4 v7, 0x4

    invoke-interface {v0, v1, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    goto :goto_1

    .line 1058
    .end local v1    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_5
    iget-object v7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$3100(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;->val$dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v9}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v7, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    iput-object v7, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto/16 :goto_0
.end method
