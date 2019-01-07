.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$15;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->clearCache(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$15;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

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

    const/4 v10, 0x1

    .line 809
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v1

    .line 810
    .local v1, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    invoke-interface {v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->queryDownloadFile()Ljava/util/List;

    move-result-object v3

    .line 811
    .local v3, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 812
    .local v6, "size":Ljava/lang/Long;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 813
    :cond_0
    iput-object v6, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 839
    :goto_0
    return-void

    .line 815
    :cond_1
    const/4 v0, 0x0

    .line 816
    .local v0, "deleteSize":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x32

    if-le v7, v8, :cond_4

    .line 817
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x32

    .line 823
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_7

    .line 824
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 825
    .local v2, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 826
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 827
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 828
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    invoke-interface {v1, v8, v9, v12}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateLocalUrl(JLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 829
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 830
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 823
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 818
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v5    # "i":I
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v10, :cond_5

    .line 819
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    int-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v0, v8

    goto :goto_1

    .line 820
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 821
    const/4 v0, 0x1

    goto :goto_1

    .line 833
    .restart local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "i":I
    :cond_6
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    invoke-interface {v1, v8, v9, v12}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateLocalUrl(JLjava/lang/String;)Z

    goto :goto_3

    .line 837
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v4    # "file":Ljava/io/File;
    :cond_7
    iput-object v6, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method
