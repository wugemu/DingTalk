.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->searchDentry(Ljava/lang/String;Ljava/util/List;IILxv;)V
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

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$offset:I

.field final synthetic val$pageSize:I

.field final synthetic val$spaceIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$key:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$pageSize:I

    iput p5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$offset:I

    iput-object p6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$spaceIds:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 13
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 649
    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$key:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 720
    :goto_0
    return-void

    .line 653
    :cond_0
    iget v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$pageSize:I

    .line 654
    .local v4, "size":I
    iget v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$offset:I

    .line 655
    .local v2, "index":I
    iget v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$pageSize:I

    if-lez v8, :cond_1

    iget v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$pageSize:I

    const/16 v9, 0xa

    if-le v8, v9, :cond_2

    .line 656
    :cond_1
    const/16 v4, 0xa

    .line 659
    :cond_2
    iget v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$offset:I

    if-gez v8, :cond_3

    .line 660
    const/4 v2, 0x0

    .line 663
    :cond_3
    new-instance v7, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v7}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 664
    .local v7, "syncReqeustData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setDataScope(I)V

    .line 665
    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$spaceIds:Ljava/util/List;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$spaceIds:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 666
    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$spaceIds:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setSpaceId(Ljava/lang/String;)V

    .line 668
    :cond_4
    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setScopeId(Ljava/lang/String;)V

    .line 669
    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;-><init>()V

    .line 670
    .local v3, "queryParam":Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setCondition(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setOffset(I)V

    .line 672
    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setSize(I)V

    .line 673
    invoke-virtual {v3, v12}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setExcludeFolders(Z)V

    .line 674
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v6, "spaceLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$spaceIds:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 676
    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->val$spaceIds:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 677
    .local v5, "spaceId":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 680
    .end local v5    # "spaceId":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setSpaceIds(Ljava/util/List;)V

    .line 682
    invoke-virtual {v7, v3}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setQueryParam(Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;)V

    .line 683
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v1, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 687
    .local v0, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-object v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v8}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$1700(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getDentryService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    move-result-object v8

    new-instance v9, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11$1;

    invoke-direct {v9, p0, v1, v0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11$1;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;Ljava/util/List;Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;)V

    invoke-interface {v8, v7, v9}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;->syncDentrys(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 719
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto/16 :goto_0
.end method
