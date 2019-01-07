.class public Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$AddDefaultTag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddDefaultTag"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "add follow and complete tag"

    return-object v0
.end method

.method public up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 8
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 75
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v4

    const-class v5, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    .line 76
    .local v1, "accountDatasource":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    invoke-interface {v1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAllAccount()Ljava/util/List;

    move-result-object v2

    .line 77
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 79
    .local v0, "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->isCommonAccount()Z

    move-result v3

    .line 83
    .local v3, "isCommonAccount":Z
    if-nez v3, :cond_0

    .line 86
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getTagDatasource()Lcom/alibaba/alimei/sdk/datasource/TagDatasource;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/TagDatasource;->addDefaultTagForAccount(J)V

    goto :goto_0

    .line 89
    .end local v0    # "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .end local v3    # "isCommonAccount":Z
    :cond_1
    return-void
.end method
