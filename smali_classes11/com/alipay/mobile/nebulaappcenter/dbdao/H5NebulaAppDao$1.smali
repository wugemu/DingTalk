.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;
.super Ljava/lang/Object;
.source "H5NebulaAppDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor",
        "<",
        "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$ver:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$ver:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 14
    .param p1, "dbHelper"    # Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    .line 137
    .local v3, "h5AppInfoDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    .line 138
    .local v6, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-static {v6}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    const-string/jumbo v12, "app_id"

    iget-object v13, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$appId:Ljava/lang/String;

    .line 139
    invoke-virtual {v11, v12, v13}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    .line 140
    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    const-string/jumbo v12, "version"

    iget-object v13, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$ver:Ljava/lang/String;

    .line 141
    invoke-virtual {v11, v12, v13}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 143
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 144
    .local v2, "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    if-eqz v2, :cond_0

    .line 145
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->beanToInfo(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    .line 197
    :goto_0
    return-object v7

    .line 147
    :cond_0
    iget-object v11, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$appId:Ljava/lang/String;

    invoke-static {v11}, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->getPresetAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 148
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_1

    iget-object v11, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 149
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 153
    :cond_2
    const/4 v1, 0x0

    .line 155
    .local v1, "canUsePreset":Z
    const-string/jumbo v11, "H5NebulaAppDao"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ver "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$ver:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " version:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " appId"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v9, 0x0

    .line 160
    .local v9, "useOpVer":Z
    const-class v11, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 161
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v4, :cond_3

    .line 162
    const-string/jumbo v11, "h5_ignorePresetVer"

    invoke-interface {v4, v11}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 163
    .local v10, "value":Ljava/lang/String;
    const-string/jumbo v11, "no"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 164
    const/4 v9, 0x1

    .line 168
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_7

    .line 169
    iget-object v11, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$ver:Ljava/lang/String;

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 170
    iget-object v11, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$ver:Ljava/lang/String;

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 171
    .local v5, "index":I
    iget-object v11, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$ver:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 173
    const/4 v1, 0x1

    .line 189
    .end local v5    # "index":I
    :cond_4
    :goto_1
    if-eqz v1, :cond_8

    .line 190
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v0, v12}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->infoToBean(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    move-result-object v2

    .line 191
    const-string/jumbo v11, "H5NebulaAppDao"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "h5PresetFroMemory get appInfo from preset "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->beanToInfo(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    .line 194
    .local v7, "tem":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    const-string/jumbo v11, "yes"

    iput-object v11, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fromPreset:Ljava/lang/String;

    goto/16 :goto_0

    .line 175
    .end local v7    # "tem":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local v5    # "index":I
    :cond_5
    iget-object v11, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$ver:Ljava/lang/String;

    const/4 v12, 0x0

    add-int/lit8 v13, v5, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "temp":Ljava/lang/String;
    iget-object v11, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 177
    const/4 v1, 0x1

    goto :goto_1

    .line 181
    .end local v5    # "index":I
    .end local v8    # "temp":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->val$ver:Ljava/lang/String;

    iget-object v12, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 185
    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    .line 197
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;->execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    return-object v0
.end method
