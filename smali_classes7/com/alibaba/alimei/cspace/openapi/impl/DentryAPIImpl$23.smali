.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->deleteRpcSuccess(Ljava/util/List;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

.field final synthetic val$dentryModels:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->val$dentryModels:Ljava/util/List;

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
    const/4 v10, 0x0

    .line 1141
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->val$dentryModels:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->val$dentryModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1142
    :cond_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1164
    :goto_0
    return-void

    .line 1146
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 1147
    .local v0, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->val$dentryModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1148
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 1149
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$3700(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v5, v6, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 1150
    .local v2, "dentryModelLocal":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v2, :cond_2

    .line 1151
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    .line 1152
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-interface {v0, v6, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->delete(J)Z

    goto :goto_1

    .line 1154
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->delete(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_1

    .line 1157
    .end local v2    # "dentryModelLocal":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-interface {v0, v6, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->delete(J)Z

    goto :goto_1

    .line 1160
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->val$dentryModels:Ljava/util/List;

    const/4 v5, 0x5

    invoke-interface {v0, v4, v5}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 1161
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$3800(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->val$dentryModels:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->val$dentryModels:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v6, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    .line 1162
    .local v3, "parentDentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v4, v0, v3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$2500(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1163
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto/16 :goto_0
.end method
