.class public final Ltp;
.super Lyq;
.source "ClearCacheTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lyq;-><init>()V

    .line 24
    iput-object p1, p0, Ltp;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected final c()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 29
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v5

    iput-object v5, p0, Ltp;->b:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    .line 31
    iget-object v5, p0, Ltp;->b:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-interface {v5}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->queryDownloadFile()Ljava/util/List;

    move-result-object v2

    .line 32
    .local v2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz v2, :cond_5

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "deleteSize":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_2

    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x32

    .line 42
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 43
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 44
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 45
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 47
    iget-object v5, p0, Ltp;->b:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7, v11}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateLocalUrl(JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 42
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 36
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v4    # "i":I
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v10, :cond_3

    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v0, v6

    goto :goto_0

    .line 38
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    .restart local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "i":I
    :cond_4
    iget-object v5, p0, Ltp;->b:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7, v11}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateLocalUrl(JLjava/lang/String;)Z

    goto :goto_2

    .line 56
    .end local v0    # "deleteSize":I
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i":I
    :cond_5
    return v10
.end method
