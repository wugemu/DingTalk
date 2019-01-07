.class public Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;
.super Ljava/lang/Object;
.source "QueryHandler.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/operation/handle/OperationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/mail/operation/handle/OperationHandler",
        "<",
        "Lcom/alibaba/alimei/mail/operation/OperationData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QueryHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;Lcom/alibaba/alimei/mail/operation/OperationData;Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/operation/OperationData;
    .param p2, "x2"    # Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleNewMailSetting(Lcom/alibaba/alimei/mail/operation/OperationData;Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;)V

    return-void
.end method

.method private handleAccount(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 18
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const-string/jumbo v13, "QueryHandler"

    const-string/jumbo v14, "handleAccount fail for operation data is null"

    invoke-static {v13, v14}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->k()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "dingtalkMail":Ljava/lang/String;
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v13

    invoke-virtual {v13, v5}, Lxz;->c(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/Account;

    move-result-object v3

    .line 123
    .local v3, "dingtalkAccount":Lcom/alibaba/alimei/framework/db/Account;
    const/4 v4, 0x0

    .line 124
    .local v4, "dingtalkHostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-eqz v3, :cond_1

    iget-wide v14, v3, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_1

    .line 125
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v13

    iget-wide v14, v3, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    invoke-virtual {v13, v14, v15}, Lxz;->b(J)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v4

    .line 128
    :cond_1
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->l()Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, "orgMail":Ljava/lang/String;
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v13

    invoke-virtual {v13, v10}, Lxz;->c(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/Account;

    move-result-object v8

    .line 130
    .local v8, "orgAccount":Lcom/alibaba/alimei/framework/db/Account;
    const/4 v9, 0x0

    .line 131
    .local v9, "orgHostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-eqz v8, :cond_2

    iget-wide v14, v8, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_2

    .line 132
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v13

    iget-wide v14, v8, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    invoke-virtual {v13, v14, v15}, Lxz;->b(J)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v9

    .line 135
    :cond_2
    invoke-static {v3, v4}, Lcom/alibaba/alimei/mail/operation/tools/OperationModelsConvertHelper;->convertAccountModel(Lcom/alibaba/alimei/framework/db/Account;Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;

    move-result-object v6

    .line 136
    .local v6, "opsDingtalkAccount":Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;
    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/operation/tools/OperationModelsConvertHelper;->convertAccountModel(Lcom/alibaba/alimei/framework/db/Account;Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;

    move-result-object v7

    .line 138
    .local v7, "opsOrgAccount":Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v13, 0x2

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v2, "accountModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;>;"
    if-eqz v6, :cond_3

    .line 140
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_3
    if-eqz v7, :cond_4

    .line 144
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 148
    new-instance v12, Lcom/alibaba/alimei/mail/operation/model/result/OpsAccountResultModel;

    invoke-direct {v12}, Lcom/alibaba/alimei/mail/operation/model/result/OpsAccountResultModel;-><init>()V

    .line 149
    .local v12, "resultModel":Lcom/alibaba/alimei/mail/operation/model/result/OpsAccountResultModel;
    invoke-virtual {v12, v2}, Lcom/alibaba/alimei/mail/operation/model/result/OpsAccountResultModel;->setResult(Ljava/util/List;)V

    .line 150
    invoke-static {v12}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 151
    .local v11, "result":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->getInstance()Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v11}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->upload(Lcom/alibaba/alimei/mail/operation/OperationData;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v11    # "result":Ljava/lang/String;
    .end local v12    # "resultModel":Lcom/alibaba/alimei/mail/operation/model/result/OpsAccountResultModel;
    :cond_5
    const-string/jumbo v13, "QueryHandler"

    const-string/jumbo v14, "handleAccount fail for accounts is empty"

    invoke-static {v13, v14}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleFolder(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 5
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 199
    if-nez p1, :cond_0

    .line 200
    const-string/jumbo v3, "QueryHandler"

    const-string/jumbo v4, "handleFolder fail for operation data is null"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 205
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    const-string/jumbo v3, "QueryHandler"

    const-string/jumbo v4, "handleFolder fail for accountName is empty!!!"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    new-instance v2, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$2;-><init>(Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    .line 224
    .local v2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v1

    .line 225
    .local v1, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-eqz v1, :cond_2

    .line 226
    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v1, v4, v2, v3}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryVisibleFolders(ZLxv;[Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_2
    const-string/jumbo v3, "QueryHandler"

    const-string/jumbo v4, "handleFolder fail for folderApi is null"

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleFriendDomains(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 10
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 438
    if-nez p1, :cond_0

    .line 439
    const-string/jumbo v8, "QueryHandler"

    const-string/jumbo v9, "handleFriendDomains fail for data is null"

    invoke-static {v8, v9}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v8

    .line 1125
    iget-object v2, v8, Lafc;->a:Ljava/util/Map;

    .line 1126
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1127
    :cond_1
    iget-object v2, v8, Lafc;->b:Ljava/util/Map;

    .line 1130
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1131
    :cond_3
    invoke-virtual {v8}, Lafc;->b()V

    .line 1132
    iget-object v2, v8, Lafc;->b:Ljava/util/Map;

    .line 444
    .local v2, "domainMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 445
    :cond_5
    const-string/jumbo v8, "QueryHandler"

    const-string/jumbo v9, "handleFriendDomains fail for domainMap is empty"

    invoke-static {v8, v9}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    .local v4, "domainModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/mail/operation/model/OpsDomainModel;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 451
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 452
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 453
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_7

    .line 457
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    .local v0, "accountName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 459
    .local v1, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lcom/alibaba/alimei/mail/operation/model/OpsDomainModel;

    invoke-direct {v3}, Lcom/alibaba/alimei/mail/operation/model/OpsDomainModel;-><init>()V

    .line 460
    .local v3, "domainModel":Lcom/alibaba/alimei/mail/operation/model/OpsDomainModel;
    iput-object v0, v3, Lcom/alibaba/alimei/mail/operation/model/OpsDomainModel;->accountName:Ljava/lang/String;

    .line 461
    iput-object v1, v3, Lcom/alibaba/alimei/mail/operation/model/OpsDomainModel;->friendDomains:Ljava/util/List;

    .line 463
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 466
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "domainModel":Lcom/alibaba/alimei/mail/operation/model/OpsDomainModel;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_8
    new-instance v7, Lcom/alibaba/alimei/mail/operation/model/result/OpsDomainResultModel;

    invoke-direct {v7}, Lcom/alibaba/alimei/mail/operation/model/result/OpsDomainResultModel;-><init>()V

    .line 467
    .local v7, "resultModel":Lcom/alibaba/alimei/mail/operation/model/result/OpsDomainResultModel;
    invoke-virtual {v7, v4}, Lcom/alibaba/alimei/mail/operation/model/result/OpsDomainResultModel;->setResult(Ljava/util/List;)V

    .line 468
    invoke-static {}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->getInstance()Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    move-result-object v8

    invoke-static {v7}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->upload(Lcom/alibaba/alimei/mail/operation/OperationData;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleMailCross(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 5
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const-string/jumbo v3, "QueryHandler"

    const-string/jumbo v4, "handleMailCross fail for operation data is null"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 168
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    const-string/jumbo v3, "QueryHandler"

    const-string/jumbo v4, "handleMailCross fail for accountName is empty!!!"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    .line 174
    .local v2, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v2, :cond_2

    .line 175
    new-instance v1, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$1;-><init>(Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    .line 188
    .local v1, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->checkMailData(Lxv;)V

    goto :goto_0

    .line 190
    .end local v1    # "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v3, "QueryHandler"

    const-string/jumbo v4, "handleMailCross fail for mailApi is null"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNewMailSetting(Lcom/alibaba/alimei/mail/operation/OperationData;Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;)V
    .locals 16
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;
    .param p2, "opsSettingModel"    # Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 379
    if-nez p2, :cond_1

    .line 380
    const-string/jumbo v11, "QueryHandler"

    const-string/jumbo v12, "handleNewMailSetting fail for opsSettingModel is null"

    invoke-static {v11, v12}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->b()Lchy;

    move-result-object v11

    invoke-virtual {v11}, Lchy;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-static {v11}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v11

    invoke-virtual {v11}, Lacl;->a()Z

    move-result v11

    move-object/from16 v0, p2

    iput-boolean v11, v0, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;->newMailReminder:Z

    .line 385
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v11

    invoke-virtual {v11}, Lacr;->j()Ljava/util/List;

    move-result-object v4

    .line 386
    .local v4, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 390
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    .local v3, "accountReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel$OpsAccountMailReminder;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    .local v1, "account":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 396
    new-instance v2, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel$OpsAccountMailReminder;

    invoke-direct {v2}, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel$OpsAccountMailReminder;-><init>()V

    .line 397
    .local v2, "accountReminder":Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel$OpsAccountMailReminder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->b()Lchy;

    move-result-object v12

    invoke-virtual {v12}, Lchy;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-static {v12}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v12

    invoke-virtual {v12, v1}, Lacl;->a(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v2, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel$OpsAccountMailReminder;->newMailReminder:Z

    .line 399
    invoke-static {v1}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v6

    .line 400
    .local v6, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-eqz v6, :cond_5

    .line 401
    invoke-interface {v6}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryAllMailPushableFoldersSync()Ljava/util/List;

    move-result-object v7

    .line 402
    .local v7, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 406
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v9, "opsFolderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 408
    .local v5, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v5, :cond_3

    .line 412
    invoke-static {v5}, Lcom/alibaba/alimei/mail/operation/tools/OperationModelsConvertHelper;->convertToOpsFolderModel(Lcom/alibaba/alimei/sdk/model/FolderModel;)Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;

    move-result-object v8

    .line 413
    .local v8, "opsFolder":Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;
    if-eqz v8, :cond_3

    .line 414
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 417
    .end local v5    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v8    # "opsFolder":Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;
    :cond_4
    iput-object v9, v2, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel$OpsAccountMailReminder;->folderList:Ljava/util/List;

    .line 422
    .end local v7    # "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v9    # "opsFolderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;>;"
    :goto_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 419
    :cond_5
    const-string/jumbo v12, "QueryHandler"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "folderApi is null for accountName: "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 425
    .end local v1    # "account":Ljava/lang/String;
    .end local v2    # "accountReminder":Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel$OpsAccountMailReminder;
    .end local v6    # "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    :cond_6
    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;->accountReminderList:Ljava/util/List;

    .line 427
    new-instance v10, Lcom/alibaba/alimei/mail/operation/model/result/OpsSettingResultModel;

    invoke-direct {v10}, Lcom/alibaba/alimei/mail/operation/model/result/OpsSettingResultModel;-><init>()V

    .line 428
    .local v10, "resultModel":Lcom/alibaba/alimei/mail/operation/model/result/OpsSettingResultModel;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/alibaba/alimei/mail/operation/model/result/OpsSettingResultModel;->setResult(Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;)V

    .line 430
    invoke-static {}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->getInstance()Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    move-result-object v11

    invoke-static {v10}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->upload(Lcom/alibaba/alimei/mail/operation/OperationData;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleSetting(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 8
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 331
    const/4 v5, 0x0

    invoke-static {v5}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v4

    .line 333
    .local v4, "settingApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    new-instance v3, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;

    invoke-direct {v3}, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;-><init>()V

    .line 334
    .local v3, "opsSettingModel":Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;
    const/4 v0, -0x1

    .line 335
    .local v0, "autoDownloadBodyStatus":I
    const/4 v2, 0x1

    .line 337
    .local v2, "isConversationOpen":Z
    if-eqz v4, :cond_1

    .line 338
    invoke-interface {v4}, Lcom/alibaba/alimei/sdk/api/SettingApi;->getShownType()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 339
    :goto_0
    invoke-interface {v4}, Lcom/alibaba/alimei/sdk/api/SettingApi;->getAutoDownloadMailDetailStatus()I

    move-result v0

    .line 344
    :goto_1
    iput v0, v3, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;->autoDownloadBodyStatus:I

    .line 345
    iput-boolean v2, v3, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;->isConversationOpen:Z

    .line 347
    new-instance v1, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;

    invoke-direct {v1, p0, v3, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;-><init>(Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    .line 369
    .local v1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v5, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/ConversationService;

    .line 370
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Lacg;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 369
    invoke-interface {v5, v1, v6}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 371
    return-void

    .line 338
    .end local v1    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 341
    :cond_1
    const-string/jumbo v5, "QueryHandler"

    const-string/jumbo v6, "handleSetting for conversation and autoDownloadBodyStatus fail for settingApi is null"

    invoke-static {v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleTag(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 5
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    const-string/jumbo v3, "QueryHandler"

    const-string/jumbo v4, "handle tag fail for operation data is null"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 242
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    const-string/jumbo v3, "QueryHandler"

    const-string/jumbo v4, "handle tag is fail for accountName is null"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-static {v0}, Lafv;->i(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v2

    .line 248
    .local v2, "tagApi":Lcom/alibaba/alimei/sdk/api/TagApi;
    if-eqz v2, :cond_2

    .line 249
    new-instance v1, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$3;-><init>(Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    .line 263
    .local v1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;>;"
    invoke-interface {v2, v1}, Lcom/alibaba/alimei/sdk/api/TagApi;->queryAllTags(Lxv;)V

    goto :goto_0

    .line 265
    .end local v1    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;>;"
    :cond_2
    const-string/jumbo v3, "QueryHandler"

    const-string/jumbo v4, "handle tag fail for tagApi is null"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleUserprofileFromCoreService(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 274
    if-nez p1, :cond_1

    .line 275
    const-string/jumbo v4, "QueryHandler"

    const-string/jumbo v5, "handleUserProfileFromCoreService fail for data is null"

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 280
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    const-string/jumbo v4, "QueryHandler"

    const-string/jumbo v5, "handleProfileFromCoreService fail for accountName is null"

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v2

    .line 286
    .local v2, "isAliMail":Z
    if-eqz v2, :cond_0

    .line 290
    new-instance v3, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$4;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$4;-><init>(Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    .line 304
    .local v3, "listener2":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    invoke-static {v0}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v1

    .line 305
    .local v1, "contactApi":Lcom/alibaba/alimei/contact/api/ContactApi;
    if-eqz v1, :cond_3

    .line 306
    invoke-interface {v1, v3}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromLocal(Lxv;)V

    goto :goto_0

    .line 308
    :cond_3
    const-string/jumbo v4, " handleUserprofileFromCoreService fail for contactApi is null"

    invoke-static {v4}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleUserprofileFromDingtalk(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 5
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 318
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 320
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    invoke-static {v2}, Lcom/alibaba/alimei/mail/operation/tools/OperationModelsConvertHelper;->convertDingtalkUserProfile(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;

    move-result-object v0

    .line 321
    .local v0, "opsProfile":Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;
    new-instance v1, Lcom/alibaba/alimei/mail/operation/model/result/OpsDDUserprofileResultModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/operation/model/result/OpsDDUserprofileResultModel;-><init>()V

    .line 322
    .local v1, "resultModel":Lcom/alibaba/alimei/mail/operation/model/result/OpsDDUserprofileResultModel;
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/operation/model/result/OpsDDUserprofileResultModel;->setResult(Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;)V

    .line 323
    invoke-static {}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->getInstance()Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    move-result-object v3

    invoke-static {v1}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->upload(Lcom/alibaba/alimei/mail/operation/OperationData;Ljava/lang/String;)V

    .line 324
    return-void
.end method


# virtual methods
.method public handle(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string/jumbo v2, "QueryHandler"

    const-string/jumbo v3, "QueryHandler fail for operation data is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->subOption:Lcom/alibaba/alimei/mail/operation/OperationData$SubOperation;

    .line 75
    .local v0, "subOperation":Lcom/alibaba/alimei/mail/operation/OperationData$SubOperation;
    if-nez v0, :cond_1

    .line 76
    const-string/jumbo v2, "QueryHandler"

    const-string/jumbo v3, "QueryHandler fail for subOperation is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    iget v1, v0, Lcom/alibaba/alimei/mail/operation/OperationData$SubOperation;->type:I

    .line 81
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleAccount(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleMailCross(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleFolder(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 92
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleTag(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 95
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleUserprofileFromCoreService(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 98
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleUserprofileFromDingtalk(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 101
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleSetting(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 104
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleFriendDomains(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
