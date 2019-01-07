.class final Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;
.super Ljava/lang/Object;
.source "H5NebulaAppConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->applyConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$configStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;->val$configStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 70
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;->val$configStr:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 71
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-nez v4, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string/jumbo v5, "H5NebulaAppConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "applyConfig: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;->val$configStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v5, "yes"

    const-string/jumbo v6, "switch"

    invoke-static {v4, v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->access$102(Z)Z

    .line 76
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v3

    .line 78
    .local v3, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    if-eqz v3, :cond_0

    .line 79
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 80
    .local v0, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    iput-boolean v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->fromNewConfig:Z

    .line 82
    const-string/jumbo v5, "config"

    invoke-static {v4, v5, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 84
    .local v2, "configObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 85
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    .line 90
    const-string/jumbo v5, "H5NebulaAppConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateConfig: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v0, v8}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V

    goto :goto_0

    .line 87
    .end local v1    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .restart local v1    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1
.end method
