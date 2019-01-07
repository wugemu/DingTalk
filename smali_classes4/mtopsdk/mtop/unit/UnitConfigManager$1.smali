.class final Lmtopsdk/mtop/unit/UnitConfigManager$1;
.super Ljava/lang/Object;
.source "UnitConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/unit/UnitConfigManager;->updateAndStoreApiUnitInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$seqNo:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lmtopsdk/mtop/unit/UnitConfigManager$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lmtopsdk/mtop/unit/UnitConfigManager$1;->val$seqNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    :try_start_0
    iget-object v9, p0, Lmtopsdk/mtop/unit/UnitConfigManager$1;->val$url:Ljava/lang/String;

    sget-object v10, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v10}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 197
    new-instance v1, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v10}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmtopsdk/mtop/unit/UnitConfigManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .local v1, "cdnUrl":Ljava/net/URL;
    :goto_0
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v9

    invoke-virtual {v9}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    .line 208
    .local v2, "context":Landroid/content/Context;
    new-instance v5, Lanetwork/channel/http/HttpNetwork;

    invoke-direct {v5, v2}, Lanetwork/channel/http/HttpNetwork;-><init>(Landroid/content/Context;)V

    .line 209
    .local v5, "network":Lle;
    new-instance v7, Lmo;

    invoke-direct {v7, v1}, Lmo;-><init>(Ljava/net/URL;)V

    .line 210
    .local v7, "request":Llj;
    const/16 v9, 0x1003

    invoke-interface {v7, v9}, Llj;->d(I)V

    .line 211
    invoke-interface {v5, v7}, Lle;->a(Llj;)Llk;

    move-result-object v8

    .line 212
    .local v8, "response":Llk;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Llk;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_0

    invoke-interface {v8}, Llk;->getBytedata()[B

    move-result-object v9

    if-eqz v9, :cond_0

    .line 213
    const/4 v6, 0x0

    .line 216
    .local v6, "newApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    :try_start_1
    new-instance v9, Ljava/lang/String;

    invoke-interface {v8}, Llk;->getBytedata()[B

    move-result-object v10

    const-string/jumbo v11, "utf-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-class v10, Lmtopsdk/mtop/unit/ApiUnit;

    invoke-static {v9, v10}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lmtopsdk/mtop/unit/ApiUnit;

    move-object v6, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_1
    if-eqz v6, :cond_0

    iget-object v9, v6, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-static {v9}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 222
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v9

    invoke-virtual {v9}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalApiUnit()Lmtopsdk/mtop/unit/ApiUnit;

    move-result-object v3

    .line 223
    .local v3, "currentApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    if-eqz v3, :cond_2

    iget-object v9, v6, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    iget-object v10, v3, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 231
    .end local v1    # "cdnUrl":Ljava/net/URL;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "currentApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    .end local v5    # "network":Lle;
    .end local v6    # "newApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    .end local v7    # "request":Llj;
    .end local v8    # "response":Llk;
    :cond_0
    :goto_2
    return-void

    .line 199
    :cond_1
    :try_start_2
    new-instance v1, Ljava/net/URL;

    iget-object v9, p0, Lmtopsdk/mtop/unit/UnitConfigManager$1;->val$url:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v1    # "cdnUrl":Ljava/net/URL;
    goto :goto_0

    .line 201
    .end local v1    # "cdnUrl":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 202
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "mtopsdk.UnitConfigManager"

    iget-object v10, p0, Lmtopsdk/mtop/unit/UnitConfigManager$1;->val$seqNo:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[updateAndStoreApiUnitInfo] generate apiUnit Config URL error.---"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 217
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "cdnUrl":Ljava/net/URL;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v5    # "network":Lle;
    .restart local v6    # "newApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    .restart local v7    # "request":Llj;
    .restart local v8    # "response":Llk;
    :catch_1
    move-exception v4

    .line 218
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "mtopsdk.UnitConfigManager"

    iget-object v10, p0, Lmtopsdk/mtop/unit/UnitConfigManager$1;->val$seqNo:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[updateAndStoreApiUnitInfo]parse apiUnit json from cdn error ---"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "currentApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    :cond_2
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v9

    invoke-virtual {v9, v6}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalApiUnit(Lmtopsdk/mtop/unit/ApiUnit;)Lmtopsdk/mtop/global/SDKConfig;

    .line 227
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "UNIT_SETTING_STORE.API_UNIT_ITEM"

    invoke-static {v6, v9, v10}, Lmtopsdk/common/util/MtopUtils;->writeObject(Ljava/io/Serializable;Ljava/io/File;Ljava/lang/String;)Z

    .line 228
    const-string/jumbo v9, "mtopsdk.UnitConfigManager"

    iget-object v10, p0, Lmtopsdk/mtop/unit/UnitConfigManager$1;->val$seqNo:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[updateAndStoreApiUnitInfo] update apiUnit succeed.apiUnit="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
