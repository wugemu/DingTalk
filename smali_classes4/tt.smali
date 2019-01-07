.class public final Ltt;
.super Lto;
.source "DeleteDentryTask.java"


# instance fields
.field private i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p3, "physical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const-string/jumbo v0, "cspace_dentry_delete"

    const-string/jumbo v1, "DeleteDentryTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Ltt;->j:Ljava/util/List;

    .line 36
    iput-boolean p3, p0, Ltt;->i:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected final a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 120
    const-wide/32 v0, 0xc6ab63

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab60

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab61

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 121
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryDeleteBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltt;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 126
    :cond_1
    :goto_0
    iget-object v0, p0, Ltt;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_2

    .line 127
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryDeleteBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltt;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 129
    :cond_2
    return-void

    .line 122
    :cond_3
    const-wide/32 v0, 0xc6b718

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 123
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltt;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;)V
    .locals 9
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 83
    invoke-super {p0, p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;)V

    .line 85
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "index":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ltt;->k:Ljava/util/List;

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;

    .line 89
    .local v0, "dentryBooleanResultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v5, p0, Ltt;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v3, p0, Ltt;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->delete(J)Z

    .line 91
    iget-object v3, p0, Ltt;->k:Ljava/util/List;

    iget-object v5, p0, Ltt;->j:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 94
    goto :goto_0

    .line 96
    .end local v0    # "dentryBooleanResultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;
    :cond_1
    iget-object v3, p0, Ltt;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 97
    iget-object v3, p0, Ltt;->k:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1106
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v3, p0, Ltt;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v4, p0, Ltt;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    .line 1107
    if-eqz v3, :cond_2

    .line 1108
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 1109
    iget-object v4, p0, Ltt;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v5, p0, Ltt;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    .line 1111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1112
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    iget-object v3, p0, Ltt;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-interface {v3, v4, v8}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 101
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    iget-object v3, p0, Ltt;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v4, p0, Ltt;->k:Ljava/util/List;

    const/4 v5, 0x5

    invoke-interface {v3, v4, v5}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 103
    .end local v2    # "index":I
    :cond_3
    return-void
.end method

.method protected final f()Z
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v12, 0x5

    const/4 v7, 0x0

    .line 42
    iget-object v5, p0, Ltt;->j:Ljava/util/List;

    if-eqz v5, :cond_4

    iget-object v5, p0, Ltt;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "deleteItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;>;"
    iget-object v6, p0, Ltt;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    iget-object v5, p0, Ltt;->j:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setSpaceId(Ljava/lang/String;)V

    .line 45
    iget-object v5, p0, Ltt;->j:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltt;->l:Ljava/lang/String;

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ltt;->k:Ljava/util/List;

    .line 47
    const/4 v4, 0x0

    .line 48
    .local v4, "index":I
    iget-object v5, p0, Ltt;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 49
    .local v2, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_0

    .line 50
    iget-object v5, p0, Ltt;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v7, p0, Ltt;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    .line 51
    .local v3, "dentryModelLocal":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v3, :cond_0

    .line 52
    move-object v2, v3

    .line 53
    iget-object v5, p0, Ltt;->j:Ljava/util/List;

    invoke-interface {v5, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v3    # "dentryModelLocal":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    iget-object v5, p0, Ltt;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    invoke-interface {v5, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->delete(J)Z

    .line 58
    iget-object v5, p0, Ltt;->k:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 67
    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;-><init>()V

    .line 61
    .local v1, "dentryDeleteItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;
    invoke-virtual {v1, v12}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;->setAction(I)V

    .line 62
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;->setPath(Ljava/lang/String;)V

    .line 63
    iget-boolean v5, p0, Ltt;->i:Z

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;->setPhysical(Z)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 68
    .end local v1    # "dentryDeleteItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    iget-object v5, p0, Ltt;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setItems(Ljava/util/List;)V

    .line 69
    iget-object v5, p0, Ltt;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 70
    iget-object v5, p0, Ltt;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v6, p0, Ltt;->k:Ljava/util/List;

    invoke-interface {v5, v6, v12}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 73
    .end local v0    # "deleteItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;>;"
    .end local v4    # "index":I
    :cond_4
    const/4 v5, 0x1

    return v5
.end method

.method protected final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Ltt;->j:Ljava/util/List;

    iget-object v1, p0, Ltt;->j:Ljava/util/List;

    iget-object v2, p0, Ltt;->l:Ljava/lang/String;

    iget-object v3, p0, Ltt;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Ltt;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
